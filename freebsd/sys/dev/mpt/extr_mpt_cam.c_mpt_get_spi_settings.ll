; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_get_spi_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_get_spi_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i32, i32, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i64 }
%union.ccb = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't get tgt %d config page 0\0A\00", align 1
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"mpt_get_spi_settings[%d]: current NP %x Info %x\0A\00", align 1
@MPI_SCSIDEVPAGE0_NP_WIDE = common dso_local global i32 0, align 4
@DP_WIDE = common dso_local global i32 0, align 4
@DP_NARROW = common dso_local global i32 0, align 4
@DP_DISC_ENABLE = common dso_local global i32 0, align 4
@DP_DISC_DISABL = common dso_local global i32 0, align 4
@DP_TQING_ENABLE = common dso_local global i32 0, align 4
@DP_TQING_DISABL = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE0_NP_NEG_SYNC_OFFSET_MASK = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE0_NP_SHIFT_SYNC_OFFSET = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE0_NP_NEG_SYNC_PERIOD_MASK = common dso_local global i32 0, align 4
@MPI_SCSIDEVPAGE0_NP_SHIFT_SYNC_PERIOD = common dso_local global i32 0, align 4
@DP_SYNC = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@CTS_SCSI_VALID_TQ = common dso_local global i64 0, align 8
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@MPT_PRT_NEGOTIATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"mpt_get_spi_settings[%d]: %s flags 0x%x per 0x%x off=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"NVRAM \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.ccb_trans_settings*)* @mpt_get_spi_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_get_spi_settings(%struct.mpt_softc* %0, %struct.ccb_trans_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.ccb_trans_settings*, align 8
  %6 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %7 = alloca %struct.ccb_trans_settings_spi*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.ccb_trans_settings* %1, %struct.ccb_trans_settings** %5, align 8
  %14 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %15 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %16, %struct.ccb_trans_settings_scsi** %6, align 8
  %17 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %18 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %19, %struct.ccb_trans_settings_spi** %7, align 8
  %20 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %21 = call i64 @IS_CURRENT_SETTINGS(%struct.ccb_trans_settings* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %25 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %30 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @xpt_path_sim(i32 %32)
  %34 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %40 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %41 = bitcast %struct.ccb_trans_settings* %40 to %union.ccb*
  %42 = call i64 @mpt_map_physdisk(%struct.mpt_softc* %39, %union.ccb* %41, i64* %8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %267

45:                                               ; preds = %38
  br label %51

46:                                               ; preds = %28
  %47 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %48 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %46, %45
  br label %52

52:                                               ; preds = %51, %23
  %53 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %54 = call i64 @IS_CURRENT_SETTINGS(%struct.ccb_trans_settings* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %154

56:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  %57 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %58 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %57, i32 0, i32 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = bitcast %struct.TYPE_11__* %13 to i8*
  %63 = bitcast %struct.TYPE_11__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 12, i1 false)
  %64 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @mpt_read_cur_cfg_page(%struct.mpt_softc* %64, i64 %65, i32* %66, i32 12, i32 %67, i32 5000)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @mpt_prt(%struct.mpt_softc* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %3, align 4
  br label %267

76:                                               ; preds = %56
  %77 = call i32 @mpt2host_config_page_scsi_device_0(%struct.TYPE_11__* %13)
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %79 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.mpt_softc*, i32, i8*, i64, ...) @mpt_lprt(%struct.mpt_softc* %78, i32 %79, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %80, i32 %82, i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MPI_SCSIDEVPAGE0_NP_WIDE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i32, i32* @DP_WIDE, align 4
  br label %95

93:                                               ; preds = %76
  %94 = load i32, i32* @DP_NARROW, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %100 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = trunc i64 %102 to i32
  %104 = shl i32 1, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i32, i32* @DP_DISC_ENABLE, align 4
  br label %111

109:                                              ; preds = %95
  %110 = load i32, i32* @DP_DISC_DISABL, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %116 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %8, align 8
  %119 = trunc i64 %118 to i32
  %120 = shl i32 1, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = load i32, i32* @DP_TQING_ENABLE, align 4
  br label %127

125:                                              ; preds = %111
  %126 = load i32, i32* @DP_TQING_DISABL, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* @MPI_SCSIDEVPAGE0_NP_NEG_SYNC_OFFSET_MASK, align 4
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* @MPI_SCSIDEVPAGE0_NP_SHIFT_SYNC_OFFSET, align 4
  %137 = load i32, i32* %11, align 4
  %138 = ashr i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* @MPI_SCSIDEVPAGE0_NP_NEG_SYNC_PERIOD_MASK, align 4
  %142 = load i32, i32* %10, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* @MPI_SCSIDEVPAGE0_NP_SHIFT_SYNC_PERIOD, align 4
  %145 = load i32, i32* %10, align 4
  %146 = ashr i32 %145, %144
  store i32 %146, i32* %10, align 4
  %147 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %148 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %147, i32 0, i32 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 %150
  %152 = bitcast %struct.TYPE_11__* %151 to i8*
  %153 = bitcast %struct.TYPE_11__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 4 %153, i64 12, i1 false)
  br label %174

154:                                              ; preds = %52
  %155 = load i32, i32* @DP_WIDE, align 4
  %156 = load i32, i32* @DP_DISC_ENABLE, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @DP_TQING_ENABLE, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @DP_SYNC, align 4
  %161 = or i32 %159, %160
  store i32 %161, i32* %9, align 4
  %162 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %163 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @MPI_SCSIPORTPAGE0_CAP_GET_MAX_SYNC_OFFSET(i32 %166)
  store i32 %167, i32* %11, align 4
  %168 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %169 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @MPI_SCSIPORTPAGE0_CAP_GET_MIN_SYNC_PERIOD(i32 %172)
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %154, %127
  %175 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %176 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %175, i32 0, i32 3
  store i32 0, i32* %176, align 4
  %177 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %6, align 8
  %178 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %180 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %179, i32 0, i32 2
  store i32 0, i32* %180, align 4
  %181 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %6, align 8
  %182 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %185 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %188 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %190 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %191 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %195 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %196 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %200 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %201 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @DP_WIDE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %174
  %209 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %210 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %211 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 4
  br label %216

212:                                              ; preds = %174
  %213 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %214 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %215 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %212, %208
  %217 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %218 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %254

223:                                              ; preds = %216
  %224 = load i64, i64* @CTS_SCSI_VALID_TQ, align 8
  %225 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %6, align 8
  %226 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* @DP_TQING_ENABLE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %223
  %232 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %233 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %6, align 8
  %234 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %231, %223
  %238 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %239 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %240 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @DP_DISC_ENABLE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %237
  %248 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %249 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %7, align 8
  %250 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %247, %237
  br label %254

254:                                              ; preds = %253, %216
  %255 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %256 = load i32, i32* @MPT_PRT_NEGOTIATION, align 4
  %257 = load i64, i64* %8, align 8
  %258 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %5, align 8
  %259 = call i64 @IS_CURRENT_SETTINGS(%struct.ccb_trans_settings* %258)
  %260 = icmp ne i64 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %11, align 4
  %266 = call i32 (%struct.mpt_softc*, i32, i8*, i64, ...) @mpt_lprt(%struct.mpt_softc* %255, i32 %256, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %257, i8* %262, i32 %263, i32 %264, i32 %265)
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %254, %71, %44
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i64 @IS_CURRENT_SETTINGS(%struct.ccb_trans_settings*) #1

declare dso_local i64 @xpt_path_sim(i32) #1

declare dso_local i64 @mpt_map_physdisk(%struct.mpt_softc*, %union.ccb*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mpt_read_cur_cfg_page(%struct.mpt_softc*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, i64) #1

declare dso_local i32 @mpt2host_config_page_scsi_device_0(%struct.TYPE_11__*) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i64, ...) #1

declare dso_local i32 @MPI_SCSIPORTPAGE0_CAP_GET_MAX_SYNC_OFFSET(i32) #1

declare dso_local i32 @MPI_SCSIPORTPAGE0_CAP_GET_MIN_SYNC_PERIOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
