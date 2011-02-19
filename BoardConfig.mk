#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeab
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/motorola/umts_kobe/recovery/recovery_ui.c

TARGET_NO_BOOTLOADER := false
TARGET_PREBUILT_KERNEL := device/motorola/umts_kobe/kernel
TARGET_BOOTLOADER_BOARD_NAME := umts_kobe
TARGET_PREBUILT_RECOVERY_KERNEL := device/motorola/umts_kobe/recovery-kernel
BOARD_KERNEL_CMDLINE := console=ttyS2,115200n8 console=ttyMTD10 rw mem=498M@0x80C00000 init=/init ip=off brdrev=P3A androidboot.bootloader=0x0000 mtdparts= mmcparts=mmcblk1:p7(pds),p16(recovery),p17(cdrom),p18(misc),p19(cid),p20(kpanic),p21(system),p22(prek),p23(pkbackup),p24(cache),p25(userdata)

BOARD_KERNEL_BASE := 0x10000000

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x07500000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x04ac0000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true
BOARD_DATA_DEVICE := /dev/block/mmcblk1p25
BOARD_DATA_FILESYSTEM := ext3
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk1p21
BOARD_SYSTEM_FILESYSTEM := ext3
BOARD_CACHE_DEVICE := /dev/block/mmcblk1p24
BOARD_CACHE_FILESYSTEM := ext3
# we define in here where the hijack binary will be . here we use the cdrom partiition
BOARD_HIJACK_RECOVERY_PATH := /cdrom/

TARGET_NO_BOOT := false
TARGET_NO_RECOVERY := false
TARGET_NO_PREINSTALL := true

# you can remove this or define it as false
BOARD_GOAPK_DEFY := true

# the hijack boot path 
BOARD_HIJACK_BOOT_PATH := /cdrom/
BOARD_HIJACK_EXECUTABLES := logwrapper
# we can open log utils it will gen the log to /sdcard/hijack.log so that we can check the log to see what happens.
BOARD_HIJACK_LOG_ENABLE := true
# the defy's flash is a mmc device , i guess so as the bravo . so we need to let the recovery binary to use MMCUTILS.

BOARD_USES_MMCUTILS := true

BOARD_HIJACK_UPDATE_BINARY := /cdrom/update-binary
BOARD_HIJACK_BOOT_UPDATE_ZIP := /cdrom/update-boot.zip
# we define the bootstraped recovery from here.
BOARD_HIJACK_RECOVERY_UPDATE_ZIP := /cdrom/update-recovery.zip

