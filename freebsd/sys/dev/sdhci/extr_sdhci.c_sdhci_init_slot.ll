; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_init_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_init_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.sdhci_slot = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@SDHCI_HOST_VERSION = common dso_local global i32 0, align 4
@SDHCI_SPEC_VER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_SPEC_VER_MASK = common dso_local global i32 0, align 4
@SDHCI_QUIRK_MISSING_CAPS = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_SPEC_300 = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES2 = common dso_local global i32 0, align 4
@SDHCI_SLOTTYPE_MASK = common dso_local global i32 0, align 4
@SDHCI_SLOTTYPE_REMOVABLE = common dso_local global i32 0, align 4
@SDHCI_SLOTTYPE_EMBEDDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Driver doesn't support shared bus slots\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SDHCI_SLOT_EMBEDDED = common dso_local global i32 0, align 4
@SDHCI_NON_REMOVABLE = common dso_local global i32 0, align 4
@SDHCI_CLOCK_V3_BASE_MASK = common dso_local global i32 0, align 4
@SDHCI_CLOCK_BASE_SHIFT = common dso_local global i32 0, align 4
@SDHCI_CLOCK_BASE_MASK = common dso_local global i32 0, align 4
@SDHCI_DEFAULT_MAX_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Hardware doesn't specify base clock frequency, using %dMHz as default.\0A\00", align 1
@SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK = common dso_local global i32 0, align 4
@SDHCI_QUIRK_DATA_TIMEOUT_1MHZ = common dso_local global i32 0, align 4
@SDHCI_TIMEOUT_CLK_MASK = common dso_local global i32 0, align 4
@SDHCI_TIMEOUT_CLK_SHIFT = common dso_local global i32 0, align 4
@SDHCI_TIMEOUT_CLK_UNIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"Hardware doesn't specify timeout clock frequency, setting BROKEN_TIMEOUT quirk.\0A\00", align 1
@SDHCI_QUIRK_BROKEN_TIMEOUT_VAL = common dso_local global i32 0, align 4
@SDHCI_CAN_VDD_330 = common dso_local global i32 0, align 4
@MMC_OCR_320_330 = common dso_local global i32 0, align 4
@MMC_OCR_330_340 = common dso_local global i32 0, align 4
@SDHCI_CAN_VDD_300 = common dso_local global i32 0, align 4
@MMC_OCR_290_300 = common dso_local global i32 0, align 4
@MMC_OCR_300_310 = common dso_local global i32 0, align 4
@SDHCI_CAN_VDD_180 = common dso_local global i32 0, align 4
@MMC_OCR_LOW_VOLTAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Hardware doesn't report any support voltages.\0A\00", align 1
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_8BITBUS = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_HISPD = common dso_local global i32 0, align 4
@MMC_CAP_HSPEED = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BOOT_NOACC = common dso_local global i32 0, align 4
@MMC_CAP_BOOT_NOACC = common dso_local global i32 0, align 4
@SDHCI_QUIRK_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4
@MMC_CAP_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4
@SDHCI_CAN_SDR50 = common dso_local global i32 0, align 4
@SDHCI_CAN_SDR104 = common dso_local global i32 0, align 4
@SDHCI_CAN_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_MMC_HS200 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HS200 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_MMC_DDR52 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_DDR52 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_CAPS_BIT63_FOR_MMC_HS400 = common dso_local global i32 0, align 4
@SDHCI_CAN_MMC_HS400 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HS400 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_MMC_HS400_IF_CAN_SDR104 = common dso_local global i32 0, align 4
@sdhci_set_uhs_timing_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@mmcbr_tune_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@mmcbr_retune_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@SDHCI_TUNE_SDR50 = common dso_local global i32 0, align 4
@SDHCI_TUNING_SUPPORTED = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SDHCI_SDR50_NEEDS_TUNING = common dso_local global i32 0, align 4
@SDHCI_RETUNE_MODES_MASK = common dso_local global i32 0, align 4
@SDHCI_RETUNE_MODES_SHIFT = common dso_local global i32 0, align 4
@SDHCI_RETUNE_MODE_1 = common dso_local global i32 0, align 4
@SDHCI_RETUNE_CNT_MASK = common dso_local global i32 0, align 4
@SDHCI_RETUNE_CNT_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Unknown re-tuning count %x, using 1 sec\0A\00", align 1
@MMC_CAP_SIGNALING_330 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_DDR52_180 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HS200_180 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HS400_180 = common dso_local global i32 0, align 4
@MMC_CAP_SIGNALING_120 = common dso_local global i32 0, align 4
@MMC_CAP_SIGNALING_180 = common dso_local global i32 0, align 4
@mmcbr_switch_vccq_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@sdhci_generic_switch_vccq = common dso_local global i64 0, align 8
@SDHCI_CAN_DRIVE_TYPE_A = common dso_local global i32 0, align 4
@MMC_CAP_DRIVER_TYPE_A = common dso_local global i32 0, align 4
@SDHCI_CAN_DRIVE_TYPE_C = common dso_local global i32 0, align 4
@MMC_CAP_DRIVER_TYPE_C = common dso_local global i32 0, align 4
@SDHCI_CAN_DRIVE_TYPE_D = common dso_local global i32 0, align 4
@MMC_CAP_DRIVER_TYPE_D = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_DMA = common dso_local global i32 0, align 4
@SDHCI_HAVE_DMA = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_DMA = common dso_local global i32 0, align 4
@SDHCI_QUIRK_FORCE_DMA = common dso_local global i32 0, align 4
@SDHCI_QUIRK_ALL_SLOTS_NON_REMOVABLE = common dso_local global i32 0, align 4
@SDHCI_PLATFORM_TRANSFER = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@sdhci_debug = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"%uMHz%s %s VDD:%s%s%s VCCQ: 3.3V%s%s DRV: B%s%s%s %s %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" HS\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"8bits\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"4bits\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1bit\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" 3.3V\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" 3.0V\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" 1.8V\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" 1.2V\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"embedded\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"non-removable\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@MMC_CAP_MMC_ENH_STROBE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"eMMC:%s%s%s%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c" DDR52\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c" HS200\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c" HS400\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c" HS400ES\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"UHS-I:%s%s%s%s%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c" SDR12\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c" SDR25\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c" SDR50\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c" SDR104\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c" DDR50\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Re-tuning count %d secs, mode %d\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [46 x i8] c"Maximum timeout for SDHCI transfers (in secs)\00", align 1
@sdhci_card_task = common dso_local global i32 0, align 4
@taskqueue_swi_giant = common dso_local global i32 0, align 4
@SDHCI_QUIRK_POLL_CARD_PRESENT = common dso_local global i32 0, align 4
@SDHCI_CARD_PRESENT_TICKS = common dso_local global i32 0, align 4
@sdhci_card_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_init_slot(i64 %0, %struct.sdhci_slot* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.sdhci_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %16 = call i32 @SDHCI_LOCK_INIT(%struct.sdhci_slot* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %19 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %22 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %21, i32 0, i32 17
  store i64 %20, i64* %22, align 8
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %24 = load i32, i32* @SDHCI_HOST_VERSION, align 4
  %25 = call i32 @RD2(%struct.sdhci_slot* %23, i32 %24)
  %26 = load i32, i32* @SDHCI_SPEC_VER_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* @SDHCI_SPEC_VER_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %31 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %33 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SDHCI_QUIRK_MISSING_CAPS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %3
  %39 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %40 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %43 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  br label %60

45:                                               ; preds = %3
  %46 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %47 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %48 = call i32 @RD4(%struct.sdhci_slot* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %50 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SDHCI_SPEC_300, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %56 = load i32, i32* @SDHCI_CAPABILITIES2, align 4
  %57 = call i32 @RD4(%struct.sdhci_slot* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %59

58:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %54
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %62 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SDHCI_SPEC_300, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @SDHCI_SLOTTYPE_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @SDHCI_SLOTTYPE_REMOVABLE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SDHCI_SLOTTYPE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @SDHCI_SLOTTYPE_EMBEDDED, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %80 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %82 = call i32 @SDHCI_LOCK_DESTROY(%struct.sdhci_slot* %81)
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %4, align 4
  br label %1085

84:                                               ; preds = %72, %66
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @SDHCI_SLOTTYPE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @SDHCI_SLOTTYPE_EMBEDDED, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i32, i32* @SDHCI_SLOT_EMBEDDED, align 4
  %92 = load i32, i32* @SDHCI_NON_REMOVABLE, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %95 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %90, %84
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %60
  %101 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %102 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SDHCI_SPEC_300, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @SDHCI_CLOCK_V3_BASE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @SDHCI_CLOCK_BASE_SHIFT, align 4
  %111 = ashr i32 %109, %110
  store i32 %111, i32* %12, align 4
  br label %118

112:                                              ; preds = %100
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @SDHCI_CLOCK_BASE_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @SDHCI_CLOCK_BASE_SHIFT, align 4
  %117 = ashr i32 %115, %116
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  %123 = mul nsw i32 %122, 1000000
  %124 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %125 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %121, %118
  %127 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %128 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load i32, i32* @SDHCI_DEFAULT_MAX_FREQ, align 4
  %133 = mul nsw i32 %132, 1000000
  %134 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %135 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 8
  %136 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %137 = load i32, i32* @SDHCI_DEFAULT_MAX_FREQ, align 4
  %138 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %136, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %131, %126
  %140 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %141 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %139
  %147 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %148 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = sdiv i32 %149, 1000
  %151 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %152 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 4
  br label %182

153:                                              ; preds = %139
  %154 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %155 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_1MHZ, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %162 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %161, i32 0, i32 7
  store i32 1000, i32* %162, align 4
  br label %181

163:                                              ; preds = %153
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @SDHCI_TIMEOUT_CLK_MASK, align 4
  %166 = and i32 %164, %165
  %167 = load i32, i32* @SDHCI_TIMEOUT_CLK_SHIFT, align 4
  %168 = ashr i32 %166, %167
  %169 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %170 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @SDHCI_TIMEOUT_CLK_UNIT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %163
  %176 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %177 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %178, 1000
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %175, %163
  br label %181

181:                                              ; preds = %180, %160
  br label %182

182:                                              ; preds = %181, %146
  %183 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %184 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %189 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %188, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  %190 = load i32, i32* @SDHCI_QUIRK_BROKEN_TIMEOUT_VAL, align 4
  %191 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %192 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %187, %182
  %196 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %197 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %196, i32 0, i32 17
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %200 = call i32 @SDHCI_MIN_FREQ(i64 %198, %struct.sdhci_slot* %199)
  %201 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %202 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %201, i32 0, i32 21
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 3
  store i32 %200, i32* %203, align 4
  %204 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %205 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %208 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %207, i32 0, i32 21
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  %210 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %211 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %210, i32 0, i32 21
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* @SDHCI_CAN_VDD_330, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %195
  %218 = load i32, i32* @MMC_OCR_320_330, align 4
  %219 = load i32, i32* @MMC_OCR_330_340, align 4
  %220 = or i32 %218, %219
  %221 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %222 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %221, i32 0, i32 21
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %220
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %217, %195
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @SDHCI_CAN_VDD_300, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %226
  %232 = load i32, i32* @MMC_OCR_290_300, align 4
  %233 = load i32, i32* @MMC_OCR_300_310, align 4
  %234 = or i32 %232, %233
  %235 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %236 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %235, i32 0, i32 21
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %234
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %231, %226
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @SDHCI_CAN_VDD_180, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %265

245:                                              ; preds = %240
  %246 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %247 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @SDHCI_SPEC_300, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %258, label %251

251:                                              ; preds = %245
  %252 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %253 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @SDHCI_SLOT_EMBEDDED, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %251, %245
  %259 = load i32, i32* @MMC_OCR_LOW_VOLTAGE, align 4
  %260 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %261 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %260, i32 0, i32 21
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %259
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %258, %251, %240
  %266 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %267 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %266, i32 0, i32 21
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %265
  %272 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %273 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %272, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %274

274:                                              ; preds = %271, %265
  %275 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  store i32 %275, i32* %13, align 4
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* @SDHCI_CAN_DO_8BITBUS, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %274
  %281 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %282 = load i32, i32* %13, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %13, align 4
  br label %284

284:                                              ; preds = %280, %274
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* @SDHCI_CAN_DO_HISPD, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %284
  %290 = load i32, i32* @MMC_CAP_HSPEED, align 4
  %291 = load i32, i32* %13, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %13, align 4
  br label %293

293:                                              ; preds = %289, %284
  %294 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %295 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @SDHCI_QUIRK_BOOT_NOACC, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %293
  %301 = load i32, i32* @MMC_CAP_BOOT_NOACC, align 4
  %302 = load i32, i32* %13, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %13, align 4
  br label %304

304:                                              ; preds = %300, %293
  %305 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %306 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @SDHCI_QUIRK_WAIT_WHILE_BUSY, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %304
  %312 = load i32, i32* @MMC_CAP_WAIT_WHILE_BUSY, align 4
  %313 = load i32, i32* %13, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %13, align 4
  br label %315

315:                                              ; preds = %311, %304
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* @SDHCI_CAN_SDR50, align 4
  %318 = load i32, i32* @SDHCI_CAN_SDR104, align 4
  %319 = or i32 %317, %318
  %320 = load i32, i32* @SDHCI_CAN_DDR50, align 4
  %321 = or i32 %319, %320
  %322 = and i32 %316, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %315
  %325 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %326 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* %13, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %13, align 4
  br label %330

330:                                              ; preds = %324, %315
  %331 = load i32, i32* %11, align 4
  %332 = load i32, i32* @SDHCI_CAN_SDR104, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %352

335:                                              ; preds = %330
  %336 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %337 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* %13, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %13, align 4
  %341 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %342 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @SDHCI_QUIRK_BROKEN_MMC_HS200, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %351, label %347

347:                                              ; preds = %335
  %348 = load i32, i32* @MMC_CAP_MMC_HS200, align 4
  %349 = load i32, i32* %13, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %13, align 4
  br label %351

351:                                              ; preds = %347, %335
  br label %362

352:                                              ; preds = %330
  %353 = load i32, i32* %11, align 4
  %354 = load i32, i32* @SDHCI_CAN_SDR50, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %352
  %358 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %359 = load i32, i32* %13, align 4
  %360 = or i32 %359, %358
  store i32 %360, i32* %13, align 4
  br label %361

361:                                              ; preds = %357, %352
  br label %362

362:                                              ; preds = %361, %351
  %363 = load i32, i32* %11, align 4
  %364 = load i32, i32* @SDHCI_CAN_DDR50, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %378

367:                                              ; preds = %362
  %368 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %369 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @SDHCI_QUIRK_BROKEN_UHS_DDR50, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %367
  %375 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %376 = load i32, i32* %13, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %13, align 4
  br label %378

378:                                              ; preds = %374, %367, %362
  %379 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %380 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @SDHCI_QUIRK_MMC_DDR52, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %378
  %386 = load i32, i32* @MMC_CAP_MMC_DDR52, align 4
  %387 = load i32, i32* %13, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %13, align 4
  br label %389

389:                                              ; preds = %385, %378
  %390 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %391 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @SDHCI_QUIRK_CAPS_BIT63_FOR_MMC_HS400, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %405

396:                                              ; preds = %389
  %397 = load i32, i32* %11, align 4
  %398 = load i32, i32* @SDHCI_CAN_MMC_HS400, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %396
  %402 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %403 = load i32, i32* %13, align 4
  %404 = or i32 %403, %402
  store i32 %404, i32* %13, align 4
  br label %405

405:                                              ; preds = %401, %396, %389
  %406 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %407 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @SDHCI_QUIRK_MMC_HS400_IF_CAN_SDR104, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %421

412:                                              ; preds = %405
  %413 = load i32, i32* %11, align 4
  %414 = load i32, i32* @SDHCI_CAN_SDR104, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %412
  %418 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %419 = load i32, i32* %13, align 4
  %420 = or i32 %419, %418
  store i32 %420, i32* %13, align 4
  br label %421

421:                                              ; preds = %417, %412, %405
  store %struct.TYPE_14__* @sdhci_set_uhs_timing_desc, %struct.TYPE_14__** %8, align 8
  %422 = load i64, i64* %5, align 8
  %423 = inttoptr i64 %422 to %struct.TYPE_15__*
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %429 = call %struct.TYPE_16__* @kobj_lookup_method(i32 %427, i32* null, %struct.TYPE_14__* %428)
  store %struct.TYPE_16__* %429, %struct.TYPE_16__** %9, align 8
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %431 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 0
  %433 = icmp eq %struct.TYPE_16__* %430, %432
  br i1 %433, label %434, label %453

434:                                              ; preds = %421
  %435 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %436 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %437 = or i32 %435, %436
  %438 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %439 = or i32 %437, %438
  %440 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %441 = or i32 %439, %440
  %442 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %443 = or i32 %441, %442
  %444 = load i32, i32* @MMC_CAP_MMC_DDR52, align 4
  %445 = or i32 %443, %444
  %446 = load i32, i32* @MMC_CAP_MMC_HS200, align 4
  %447 = or i32 %445, %446
  %448 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %449 = or i32 %447, %448
  %450 = xor i32 %449, -1
  %451 = load i32, i32* %13, align 4
  %452 = and i32 %451, %450
  store i32 %452, i32* %13, align 4
  br label %453

453:                                              ; preds = %434, %421
  store %struct.TYPE_14__* @mmcbr_tune_desc, %struct.TYPE_14__** %8, align 8
  %454 = load i64, i64* %5, align 8
  %455 = inttoptr i64 %454 to %struct.TYPE_15__*
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %455, i32 0, i32 0
  %457 = load %struct.TYPE_12__*, %struct.TYPE_12__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %461 = call %struct.TYPE_16__* @kobj_lookup_method(i32 %459, i32* null, %struct.TYPE_14__* %460)
  store %struct.TYPE_16__* %461, %struct.TYPE_16__** %9, align 8
  %462 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 0
  %465 = icmp eq %struct.TYPE_16__* %462, %464
  br i1 %465, label %466, label %467

466:                                              ; preds = %453
  br label %481

467:                                              ; preds = %453
  store %struct.TYPE_14__* @mmcbr_retune_desc, %struct.TYPE_14__** %8, align 8
  %468 = load i64, i64* %5, align 8
  %469 = inttoptr i64 %468 to %struct.TYPE_15__*
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 0
  %471 = load %struct.TYPE_12__*, %struct.TYPE_12__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %475 = call %struct.TYPE_16__* @kobj_lookup_method(i32 %473, i32* null, %struct.TYPE_14__* %474)
  store %struct.TYPE_16__* %475, %struct.TYPE_16__** %9, align 8
  %476 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %477 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %477, i32 0, i32 0
  %479 = icmp eq %struct.TYPE_16__* %476, %478
  br i1 %479, label %480, label %502

480:                                              ; preds = %467
  br label %481

481:                                              ; preds = %480, %466
  %482 = load i32, i32* %11, align 4
  %483 = load i32, i32* @SDHCI_TUNE_SDR50, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %481
  %487 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  br label %489

488:                                              ; preds = %481
  br label %489

489:                                              ; preds = %488, %486
  %490 = phi i32 [ %487, %486 ], [ 0, %488 ]
  %491 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %492 = or i32 %490, %491
  %493 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %494 = or i32 %492, %493
  %495 = load i32, i32* @MMC_CAP_MMC_HS200, align 4
  %496 = or i32 %494, %495
  %497 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %498 = or i32 %496, %497
  %499 = xor i32 %498, -1
  %500 = load i32, i32* %13, align 4
  %501 = and i32 %500, %499
  store i32 %501, i32* %13, align 4
  br label %502

502:                                              ; preds = %489, %467
  %503 = load i32, i32* %13, align 4
  %504 = load i32, i32* %11, align 4
  %505 = load i32, i32* @SDHCI_TUNE_SDR50, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %502
  %509 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  br label %511

510:                                              ; preds = %502
  br label %511

511:                                              ; preds = %510, %508
  %512 = phi i32 [ %509, %508 ], [ 0, %510 ]
  %513 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %514 = or i32 %512, %513
  %515 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %516 = or i32 %514, %515
  %517 = load i32, i32* @MMC_CAP_MMC_HS200, align 4
  %518 = or i32 %516, %517
  %519 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %520 = or i32 %518, %519
  %521 = and i32 %503, %520
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %603

523:                                              ; preds = %511
  %524 = load i32, i32* @SDHCI_TUNING_SUPPORTED, align 4
  %525 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %526 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %525, i32 0, i32 5
  %527 = load i32, i32* %526, align 4
  %528 = or i32 %527, %524
  store i32 %528, i32* %526, align 4
  %529 = load i32, i32* @M_DEVBUF, align 4
  %530 = load i32, i32* @M_WAITOK, align 4
  %531 = call i8* @malloc(i32 1, i32 %529, i32 %530)
  %532 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %533 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %532, i32 0, i32 20
  store i8* %531, i8** %533, align 8
  %534 = load i32, i32* @M_DEVBUF, align 4
  %535 = load i32, i32* @M_WAITOK, align 4
  %536 = call i8* @malloc(i32 1, i32 %534, i32 %535)
  %537 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %538 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %537, i32 0, i32 19
  store i8* %536, i8** %538, align 8
  %539 = load i32, i32* @M_DEVBUF, align 4
  %540 = load i32, i32* @M_WAITOK, align 4
  %541 = call i8* @malloc(i32 1, i32 %539, i32 %540)
  %542 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %543 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %542, i32 0, i32 18
  store i8* %541, i8** %543, align 8
  %544 = load i32, i32* %11, align 4
  %545 = load i32, i32* @SDHCI_TUNE_SDR50, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %554

548:                                              ; preds = %523
  %549 = load i32, i32* @SDHCI_SDR50_NEEDS_TUNING, align 4
  %550 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %551 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %550, i32 0, i32 5
  %552 = load i32, i32* %551, align 4
  %553 = or i32 %552, %549
  store i32 %553, i32* %551, align 4
  br label %554

554:                                              ; preds = %548, %523
  %555 = load i32, i32* %11, align 4
  %556 = load i32, i32* @SDHCI_RETUNE_MODES_MASK, align 4
  %557 = and i32 %555, %556
  %558 = load i32, i32* @SDHCI_RETUNE_MODES_SHIFT, align 4
  %559 = ashr i32 %557, %558
  %560 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %561 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %560, i32 0, i32 8
  store i32 %559, i32* %561, align 8
  %562 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %563 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %562, i32 0, i32 8
  %564 = load i32, i32* %563, align 8
  %565 = load i32, i32* @SDHCI_RETUNE_MODE_1, align 4
  %566 = icmp eq i32 %564, %565
  br i1 %566, label %567, label %602

567:                                              ; preds = %554
  %568 = load i32, i32* %11, align 4
  %569 = load i32, i32* @SDHCI_RETUNE_CNT_MASK, align 4
  %570 = and i32 %568, %569
  %571 = load i32, i32* @SDHCI_RETUNE_CNT_SHIFT, align 4
  %572 = ashr i32 %570, %571
  %573 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %574 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %573, i32 0, i32 9
  store i32 %572, i32* %574, align 4
  %575 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %576 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %575, i32 0, i32 9
  %577 = load i32, i32* %576, align 4
  %578 = icmp sgt i32 %577, 11
  br i1 %578, label %579, label %587

579:                                              ; preds = %567
  %580 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %581 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %582 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %581, i32 0, i32 9
  %583 = load i32, i32* %582, align 4
  %584 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %580, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %583)
  %585 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %586 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %585, i32 0, i32 9
  store i32 1, i32* %586, align 4
  br label %601

587:                                              ; preds = %567
  %588 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %589 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %588, i32 0, i32 9
  %590 = load i32, i32* %589, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %600

592:                                              ; preds = %587
  %593 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %594 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %593, i32 0, i32 9
  %595 = load i32, i32* %594, align 4
  %596 = sub nsw i32 %595, 1
  %597 = shl i32 1, %596
  %598 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %599 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %598, i32 0, i32 9
  store i32 %597, i32* %599, align 4
  br label %600

600:                                              ; preds = %592, %587
  br label %601

601:                                              ; preds = %600, %579
  br label %602

602:                                              ; preds = %601, %554
  br label %603

603:                                              ; preds = %602, %511
  %604 = load i32, i32* @MMC_CAP_SIGNALING_330, align 4
  %605 = load i32, i32* %13, align 4
  %606 = or i32 %605, %604
  store i32 %606, i32* %13, align 4
  %607 = load i32, i32* %13, align 4
  %608 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %609 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %610 = or i32 %608, %609
  %611 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %612 = or i32 %610, %611
  %613 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %614 = or i32 %612, %613
  %615 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %616 = or i32 %614, %615
  %617 = load i32, i32* @MMC_CAP_MMC_DDR52_180, align 4
  %618 = or i32 %616, %617
  %619 = load i32, i32* @MMC_CAP_MMC_HS200_180, align 4
  %620 = or i32 %618, %619
  %621 = load i32, i32* @MMC_CAP_MMC_HS400_180, align 4
  %622 = or i32 %620, %621
  %623 = and i32 %607, %622
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %631

625:                                              ; preds = %603
  %626 = load i32, i32* @MMC_CAP_SIGNALING_120, align 4
  %627 = load i32, i32* @MMC_CAP_SIGNALING_180, align 4
  %628 = or i32 %626, %627
  %629 = load i32, i32* %13, align 4
  %630 = or i32 %629, %628
  store i32 %630, i32* %13, align 4
  br label %631

631:                                              ; preds = %625, %603
  store %struct.TYPE_14__* @mmcbr_switch_vccq_desc, %struct.TYPE_14__** %8, align 8
  %632 = load i64, i64* %5, align 8
  %633 = inttoptr i64 %632 to %struct.TYPE_15__*
  %634 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %633, i32 0, i32 0
  %635 = load %struct.TYPE_12__*, %struct.TYPE_12__** %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 4
  %638 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %639 = call %struct.TYPE_16__* @kobj_lookup_method(i32 %637, i32* null, %struct.TYPE_14__* %638)
  store %struct.TYPE_16__* %639, %struct.TYPE_16__** %9, align 8
  %640 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %641 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %642 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %641, i32 0, i32 0
  %643 = icmp eq %struct.TYPE_16__* %640, %642
  br i1 %643, label %644, label %651

644:                                              ; preds = %631
  %645 = load i32, i32* @MMC_CAP_SIGNALING_120, align 4
  %646 = load i32, i32* @MMC_CAP_SIGNALING_180, align 4
  %647 = or i32 %645, %646
  %648 = xor i32 %647, -1
  %649 = load i32, i32* %13, align 4
  %650 = and i32 %649, %648
  store i32 %650, i32* %13, align 4
  br label %663

651:                                              ; preds = %631
  %652 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %653 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = load i64, i64* @sdhci_generic_switch_vccq, align 8
  %656 = icmp eq i64 %654, %655
  br i1 %656, label %657, label %662

657:                                              ; preds = %651
  %658 = load i32, i32* @MMC_CAP_SIGNALING_120, align 4
  %659 = xor i32 %658, -1
  %660 = load i32, i32* %13, align 4
  %661 = and i32 %660, %659
  store i32 %661, i32* %13, align 4
  br label %662

662:                                              ; preds = %657, %651
  br label %663

663:                                              ; preds = %662, %644
  %664 = load i32, i32* %11, align 4
  %665 = load i32, i32* @SDHCI_CAN_DRIVE_TYPE_A, align 4
  %666 = and i32 %664, %665
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %672

668:                                              ; preds = %663
  %669 = load i32, i32* @MMC_CAP_DRIVER_TYPE_A, align 4
  %670 = load i32, i32* %13, align 4
  %671 = or i32 %670, %669
  store i32 %671, i32* %13, align 4
  br label %672

672:                                              ; preds = %668, %663
  %673 = load i32, i32* %11, align 4
  %674 = load i32, i32* @SDHCI_CAN_DRIVE_TYPE_C, align 4
  %675 = and i32 %673, %674
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %681

677:                                              ; preds = %672
  %678 = load i32, i32* @MMC_CAP_DRIVER_TYPE_C, align 4
  %679 = load i32, i32* %13, align 4
  %680 = or i32 %679, %678
  store i32 %680, i32* %13, align 4
  br label %681

681:                                              ; preds = %677, %672
  %682 = load i32, i32* %11, align 4
  %683 = load i32, i32* @SDHCI_CAN_DRIVE_TYPE_D, align 4
  %684 = and i32 %682, %683
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %690

686:                                              ; preds = %681
  %687 = load i32, i32* @MMC_CAP_DRIVER_TYPE_D, align 4
  %688 = load i32, i32* %13, align 4
  %689 = or i32 %688, %687
  store i32 %689, i32* %13, align 4
  br label %690

690:                                              ; preds = %686, %681
  %691 = load i32, i32* %13, align 4
  %692 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %693 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %692, i32 0, i32 21
  %694 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %693, i32 0, i32 2
  store i32 %691, i32* %694, align 8
  %695 = load i32, i32* %10, align 4
  %696 = load i32, i32* @SDHCI_CAN_DO_DMA, align 4
  %697 = and i32 %695, %696
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %705

699:                                              ; preds = %690
  %700 = load i32, i32* @SDHCI_HAVE_DMA, align 4
  %701 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %702 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %701, i32 0, i32 5
  %703 = load i32, i32* %702, align 4
  %704 = or i32 %703, %700
  store i32 %704, i32* %702, align 4
  br label %705

705:                                              ; preds = %699, %690
  %706 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %707 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 8
  %709 = load i32, i32* @SDHCI_QUIRK_BROKEN_DMA, align 4
  %710 = and i32 %708, %709
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %719

712:                                              ; preds = %705
  %713 = load i32, i32* @SDHCI_HAVE_DMA, align 4
  %714 = xor i32 %713, -1
  %715 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %716 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %715, i32 0, i32 5
  %717 = load i32, i32* %716, align 4
  %718 = and i32 %717, %714
  store i32 %718, i32* %716, align 4
  br label %719

719:                                              ; preds = %712, %705
  %720 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %721 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %720, i32 0, i32 2
  %722 = load i32, i32* %721, align 8
  %723 = load i32, i32* @SDHCI_QUIRK_FORCE_DMA, align 4
  %724 = and i32 %722, %723
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %732

726:                                              ; preds = %719
  %727 = load i32, i32* @SDHCI_HAVE_DMA, align 4
  %728 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %729 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %728, i32 0, i32 5
  %730 = load i32, i32* %729, align 4
  %731 = or i32 %730, %727
  store i32 %731, i32* %729, align 4
  br label %732

732:                                              ; preds = %726, %719
  %733 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %734 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %733, i32 0, i32 2
  %735 = load i32, i32* %734, align 8
  %736 = load i32, i32* @SDHCI_QUIRK_ALL_SLOTS_NON_REMOVABLE, align 4
  %737 = and i32 %735, %736
  %738 = icmp ne i32 %737, 0
  br i1 %738, label %739, label %745

739:                                              ; preds = %732
  %740 = load i32, i32* @SDHCI_NON_REMOVABLE, align 4
  %741 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %742 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %741, i32 0, i32 5
  %743 = load i32, i32* %742, align 4
  %744 = or i32 %743, %740
  store i32 %744, i32* %742, align 4
  br label %745

745:                                              ; preds = %739, %732
  %746 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %747 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %746, i32 0, i32 5
  %748 = load i32, i32* %747, align 4
  %749 = load i32, i32* @SDHCI_PLATFORM_TRANSFER, align 4
  %750 = and i32 %748, %749
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %759

752:                                              ; preds = %745
  %753 = load i32, i32* @SDHCI_HAVE_DMA, align 4
  %754 = xor i32 %753, -1
  %755 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %756 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %755, i32 0, i32 5
  %757 = load i32, i32* %756, align 4
  %758 = and i32 %757, %754
  store i32 %758, i32* %756, align 4
  br label %759

759:                                              ; preds = %752, %745
  %760 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %761 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %760, i32 0, i32 5
  %762 = load i32, i32* %761, align 4
  %763 = load i32, i32* @SDHCI_HAVE_DMA, align 4
  %764 = and i32 %762, %763
  %765 = icmp ne i32 %764, 0
  br i1 %765, label %766, label %799

766:                                              ; preds = %759
  %767 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %768 = call i32 @sdhci_dma_alloc(%struct.sdhci_slot* %767)
  store i32 %768, i32* %14, align 4
  %769 = load i32, i32* %14, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %798

771:                                              ; preds = %766
  %772 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %773 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %772, i32 0, i32 5
  %774 = load i32, i32* %773, align 4
  %775 = load i32, i32* @SDHCI_TUNING_SUPPORTED, align 4
  %776 = and i32 %774, %775
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %778, label %794

778:                                              ; preds = %771
  %779 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %780 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %779, i32 0, i32 20
  %781 = load i8*, i8** %780, align 8
  %782 = load i32, i32* @M_DEVBUF, align 4
  %783 = call i32 @free(i8* %781, i32 %782)
  %784 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %785 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %784, i32 0, i32 19
  %786 = load i8*, i8** %785, align 8
  %787 = load i32, i32* @M_DEVBUF, align 4
  %788 = call i32 @free(i8* %786, i32 %787)
  %789 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %790 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %789, i32 0, i32 18
  %791 = load i8*, i8** %790, align 8
  %792 = load i32, i32* @M_DEVBUF, align 4
  %793 = call i32 @free(i8* %791, i32 %792)
  br label %794

794:                                              ; preds = %778, %771
  %795 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %796 = call i32 @SDHCI_LOCK_DESTROY(%struct.sdhci_slot* %795)
  %797 = load i32, i32* %14, align 4
  store i32 %797, i32* %4, align 4
  br label %1085

798:                                              ; preds = %766
  br label %799

799:                                              ; preds = %798, %759
  %800 = load i64, i64* @bootverbose, align 8
  %801 = icmp ne i64 %800, 0
  br i1 %801, label %805, label %802

802:                                              ; preds = %799
  %803 = load i64, i64* @sdhci_debug, align 8
  %804 = icmp ne i64 %803, 0
  br i1 %804, label %805, label %1021

805:                                              ; preds = %802, %799
  %806 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %807 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %808 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %807, i32 0, i32 6
  %809 = load i32, i32* %808, align 8
  %810 = sdiv i32 %809, 1000000
  %811 = load i32, i32* %10, align 4
  %812 = load i32, i32* @SDHCI_CAN_DO_HISPD, align 4
  %813 = and i32 %811, %812
  %814 = icmp ne i32 %813, 0
  %815 = zext i1 %814 to i64
  %816 = select i1 %814, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %817 = load i32, i32* %13, align 4
  %818 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %819 = and i32 %817, %818
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %822

821:                                              ; preds = %805
  br label %829

822:                                              ; preds = %805
  %823 = load i32, i32* %13, align 4
  %824 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %825 = and i32 %823, %824
  %826 = icmp ne i32 %825, 0
  %827 = zext i1 %826 to i64
  %828 = select i1 %826, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  br label %829

829:                                              ; preds = %822, %821
  %830 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %821 ], [ %828, %822 ]
  %831 = load i32, i32* %10, align 4
  %832 = load i32, i32* @SDHCI_CAN_VDD_330, align 4
  %833 = and i32 %831, %832
  %834 = icmp ne i32 %833, 0
  %835 = zext i1 %834 to i64
  %836 = select i1 %834, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %837 = load i32, i32* %10, align 4
  %838 = load i32, i32* @SDHCI_CAN_VDD_300, align 4
  %839 = and i32 %837, %838
  %840 = icmp ne i32 %839, 0
  %841 = zext i1 %840 to i64
  %842 = select i1 %840, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %843 = load i32, i32* %10, align 4
  %844 = load i32, i32* @SDHCI_CAN_VDD_180, align 4
  %845 = and i32 %843, %844
  %846 = icmp ne i32 %845, 0
  br i1 %846, label %847, label %854

847:                                              ; preds = %829
  %848 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %849 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %848, i32 0, i32 5
  %850 = load i32, i32* %849, align 4
  %851 = load i32, i32* @SDHCI_SLOT_EMBEDDED, align 4
  %852 = and i32 %850, %851
  %853 = icmp ne i32 %852, 0
  br label %854

854:                                              ; preds = %847, %829
  %855 = phi i1 [ false, %829 ], [ %853, %847 ]
  %856 = zext i1 %855 to i64
  %857 = select i1 %855, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %858 = load i32, i32* %13, align 4
  %859 = load i32, i32* @MMC_CAP_SIGNALING_180, align 4
  %860 = and i32 %858, %859
  %861 = icmp ne i32 %860, 0
  %862 = zext i1 %861 to i64
  %863 = select i1 %861, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %864 = load i32, i32* %13, align 4
  %865 = load i32, i32* @MMC_CAP_SIGNALING_120, align 4
  %866 = and i32 %864, %865
  %867 = icmp ne i32 %866, 0
  %868 = zext i1 %867 to i64
  %869 = select i1 %867, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %870 = load i32, i32* %13, align 4
  %871 = load i32, i32* @MMC_CAP_DRIVER_TYPE_A, align 4
  %872 = and i32 %870, %871
  %873 = icmp ne i32 %872, 0
  %874 = zext i1 %873 to i64
  %875 = select i1 %873, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %876 = load i32, i32* %13, align 4
  %877 = load i32, i32* @MMC_CAP_DRIVER_TYPE_C, align 4
  %878 = and i32 %876, %877
  %879 = icmp ne i32 %878, 0
  %880 = zext i1 %879 to i64
  %881 = select i1 %879, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %882 = load i32, i32* %13, align 4
  %883 = load i32, i32* @MMC_CAP_DRIVER_TYPE_D, align 4
  %884 = and i32 %882, %883
  %885 = icmp ne i32 %884, 0
  %886 = zext i1 %885 to i64
  %887 = select i1 %885, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %888 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %889 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %888, i32 0, i32 5
  %890 = load i32, i32* %889, align 4
  %891 = load i32, i32* @SDHCI_HAVE_DMA, align 4
  %892 = and i32 %890, %891
  %893 = icmp ne i32 %892, 0
  %894 = zext i1 %893 to i64
  %895 = select i1 %893, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)
  %896 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %897 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %896, i32 0, i32 5
  %898 = load i32, i32* %897, align 4
  %899 = load i32, i32* @SDHCI_SLOT_EMBEDDED, align 4
  %900 = and i32 %898, %899
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %903

902:                                              ; preds = %854
  br label %912

903:                                              ; preds = %854
  %904 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %905 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %904, i32 0, i32 5
  %906 = load i32, i32* %905, align 4
  %907 = load i32, i32* @SDHCI_NON_REMOVABLE, align 4
  %908 = and i32 %906, %907
  %909 = icmp ne i32 %908, 0
  %910 = zext i1 %909 to i64
  %911 = select i1 %909, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0)
  br label %912

912:                                              ; preds = %903, %902
  %913 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), %902 ], [ %911, %903 ]
  %914 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %806, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %810, i8* %816, i8* %830, i8* %836, i8* %842, i8* %857, i8* %863, i8* %869, i8* %875, i8* %881, i8* %887, i8* %895, i8* %913)
  %915 = load i32, i32* %13, align 4
  %916 = load i32, i32* @MMC_CAP_MMC_DDR52, align 4
  %917 = load i32, i32* @MMC_CAP_MMC_HS200, align 4
  %918 = or i32 %916, %917
  %919 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %920 = or i32 %918, %919
  %921 = load i32, i32* @MMC_CAP_MMC_ENH_STROBE, align 4
  %922 = or i32 %920, %921
  %923 = and i32 %915, %922
  %924 = icmp ne i32 %923, 0
  br i1 %924, label %925, label %957

925:                                              ; preds = %912
  %926 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %927 = load i32, i32* %13, align 4
  %928 = load i32, i32* @MMC_CAP_MMC_DDR52, align 4
  %929 = and i32 %927, %928
  %930 = icmp ne i32 %929, 0
  %931 = zext i1 %930 to i64
  %932 = select i1 %930, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %933 = load i32, i32* %13, align 4
  %934 = load i32, i32* @MMC_CAP_MMC_HS200, align 4
  %935 = and i32 %933, %934
  %936 = icmp ne i32 %935, 0
  %937 = zext i1 %936 to i64
  %938 = select i1 %936, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %939 = load i32, i32* %13, align 4
  %940 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %941 = and i32 %939, %940
  %942 = icmp ne i32 %941, 0
  %943 = zext i1 %942 to i64
  %944 = select i1 %942, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %945 = load i32, i32* %13, align 4
  %946 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %947 = load i32, i32* @MMC_CAP_MMC_ENH_STROBE, align 4
  %948 = or i32 %946, %947
  %949 = and i32 %945, %948
  %950 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %951 = load i32, i32* @MMC_CAP_MMC_ENH_STROBE, align 4
  %952 = or i32 %950, %951
  %953 = icmp eq i32 %949, %952
  %954 = zext i1 %953 to i64
  %955 = select i1 %953, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %956 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %926, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8* %932, i8* %938, i8* %944, i8* %955)
  br label %957

957:                                              ; preds = %925, %912
  %958 = load i32, i32* %13, align 4
  %959 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %960 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %961 = or i32 %959, %960
  %962 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %963 = or i32 %961, %962
  %964 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %965 = or i32 %963, %964
  %966 = and i32 %958, %965
  %967 = icmp ne i32 %966, 0
  br i1 %967, label %968, label %1001

968:                                              ; preds = %957
  %969 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %970 = load i32, i32* %13, align 4
  %971 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %972 = and i32 %970, %971
  %973 = icmp ne i32 %972, 0
  %974 = zext i1 %973 to i64
  %975 = select i1 %973, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %976 = load i32, i32* %13, align 4
  %977 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %978 = and i32 %976, %977
  %979 = icmp ne i32 %978, 0
  %980 = zext i1 %979 to i64
  %981 = select i1 %979, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %982 = load i32, i32* %13, align 4
  %983 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %984 = and i32 %982, %983
  %985 = icmp ne i32 %984, 0
  %986 = zext i1 %985 to i64
  %987 = select i1 %985, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %988 = load i32, i32* %13, align 4
  %989 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %990 = and i32 %988, %989
  %991 = icmp ne i32 %990, 0
  %992 = zext i1 %991 to i64
  %993 = select i1 %991, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %994 = load i32, i32* %13, align 4
  %995 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %996 = and i32 %994, %995
  %997 = icmp ne i32 %996, 0
  %998 = zext i1 %997 to i64
  %999 = select i1 %997, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %1000 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %969, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i8* %975, i8* %981, i8* %987, i8* %993, i8* %999)
  br label %1001

1001:                                             ; preds = %968, %957
  %1002 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1003 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1002, i32 0, i32 5
  %1004 = load i32, i32* %1003, align 4
  %1005 = load i32, i32* @SDHCI_TUNING_SUPPORTED, align 4
  %1006 = and i32 %1004, %1005
  %1007 = icmp ne i32 %1006, 0
  br i1 %1007, label %1008, label %1018

1008:                                             ; preds = %1001
  %1009 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1010 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1011 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1010, i32 0, i32 9
  %1012 = load i32, i32* %1011, align 4
  %1013 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1014 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1013, i32 0, i32 8
  %1015 = load i32, i32* %1014, align 8
  %1016 = add nsw i32 %1015, 1
  %1017 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %1009, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0), i32 %1012, i32 %1016)
  br label %1018

1018:                                             ; preds = %1008, %1001
  %1019 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1020 = call i32 @sdhci_dumpregs(%struct.sdhci_slot* %1019)
  br label %1021

1021:                                             ; preds = %1018, %802
  %1022 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1023 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1022, i32 0, i32 10
  store i32 10, i32* %1023, align 8
  %1024 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1025 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1024, i32 0, i32 17
  %1026 = load i64, i64* %1025, align 8
  %1027 = call i32 @device_get_sysctl_ctx(i64 %1026)
  %1028 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1029 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1028, i32 0, i32 17
  %1030 = load i64, i64* %1029, align 8
  %1031 = call i32 @device_get_sysctl_tree(i64 %1030)
  %1032 = call i32 @SYSCTL_CHILDREN(i32 %1031)
  %1033 = load i32, i32* @OID_AUTO, align 4
  %1034 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %1035 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1036 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1035, i32 0, i32 10
  %1037 = call i32 @SYSCTL_ADD_INT(i32 %1027, i32 %1032, i32 %1033, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i32 %1034, i32* %1036, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.36, i64 0, i64 0))
  %1038 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1039 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1038, i32 0, i32 16
  %1040 = load i32, i32* @sdhci_card_task, align 4
  %1041 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1042 = call i32 @TASK_INIT(i32* %1039, i32 0, i32 %1040, %struct.sdhci_slot* %1041)
  %1043 = load i32, i32* @taskqueue_swi_giant, align 4
  %1044 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1045 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1044, i32 0, i32 15
  %1046 = load i32, i32* @sdhci_card_task, align 4
  %1047 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1048 = call i32 @TIMEOUT_TASK_INIT(i32 %1043, i32* %1045, i32 0, i32 %1046, %struct.sdhci_slot* %1047)
  %1049 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1050 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1049, i32 0, i32 11
  %1051 = call i32 @callout_init(i32* %1050, i32 1)
  %1052 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1053 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1052, i32 0, i32 14
  %1054 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1055 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1054, i32 0, i32 12
  %1056 = call i32 @callout_init_mtx(i32* %1053, i32* %1055, i32 0)
  %1057 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1058 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1057, i32 0, i32 13
  %1059 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1060 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1059, i32 0, i32 12
  %1061 = call i32 @callout_init_mtx(i32* %1058, i32* %1060, i32 0)
  %1062 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1063 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1062, i32 0, i32 2
  %1064 = load i32, i32* %1063, align 8
  %1065 = load i32, i32* @SDHCI_QUIRK_POLL_CARD_PRESENT, align 4
  %1066 = and i32 %1064, %1065
  %1067 = icmp ne i32 %1066, 0
  br i1 %1067, label %1068, label %1082

1068:                                             ; preds = %1021
  %1069 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1070 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1069, i32 0, i32 5
  %1071 = load i32, i32* %1070, align 4
  %1072 = load i32, i32* @SDHCI_NON_REMOVABLE, align 4
  %1073 = and i32 %1071, %1072
  %1074 = icmp ne i32 %1073, 0
  br i1 %1074, label %1082, label %1075

1075:                                             ; preds = %1068
  %1076 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1077 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %1076, i32 0, i32 11
  %1078 = load i32, i32* @SDHCI_CARD_PRESENT_TICKS, align 4
  %1079 = load i32, i32* @sdhci_card_poll, align 4
  %1080 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1081 = call i32 @callout_reset(i32* %1077, i32 %1078, i32 %1079, %struct.sdhci_slot* %1080)
  br label %1082

1082:                                             ; preds = %1075, %1068, %1021
  %1083 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %1084 = call i32 @sdhci_init(%struct.sdhci_slot* %1083)
  store i32 0, i32* %4, align 4
  br label %1085

1085:                                             ; preds = %1082, %794, %78
  %1086 = load i32, i32* %4, align 4
  ret i32 %1086
}

declare dso_local i32 @SDHCI_LOCK_INIT(%struct.sdhci_slot*) #1

declare dso_local i32 @RD2(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @RD4(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*, ...) #1

declare dso_local i32 @SDHCI_LOCK_DESTROY(%struct.sdhci_slot*) #1

declare dso_local i32 @SDHCI_MIN_FREQ(i64, %struct.sdhci_slot*) #1

declare dso_local %struct.TYPE_16__* @kobj_lookup_method(i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sdhci_dma_alloc(%struct.sdhci_slot*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_slot*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i64) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i64) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.sdhci_slot*) #1

declare dso_local i32 @TIMEOUT_TASK_INIT(i32, i32*, i32, i32, %struct.sdhci_slot*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_init(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
