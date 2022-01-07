; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.gdt_softc = type { i32, i32, i32*, i32, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.ccb_trans_settings = type { i32, i32, i8*, i8*, i8*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.ccb_calc_geometry = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i8*, i32, %struct.cam_sim* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@GDT_D_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"iir_action(%p) func 0x%x cmd 0x%x bus %d target %d lun %d\0A\00", align 1
@gdt_stat = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@sim_links = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_2 = common dso_local global i8* null, align 8
@XPORT_SPI = common dso_local global i8* null, align 8
@CTS_TYPE_USER_SETTINGS = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@GDT_MAX_HDRIVES = common dso_local global i32 0, align 4
@GDT_FC = common dso_local global i32 0, align 4
@GDT_MAXID_FC = common dso_local global i32 0, align 4
@GDT_MAXID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@INTEL_VENDOR_ID_IIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Intel Corp.\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ICP vortex \00", align 1
@DEV_IDLEN = common dso_local global i32 0, align 4
@GDT_D_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"gdt_next(%p) cmd 0x%x invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @iir_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iir_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.gdt_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccb_trans_settings*, align 8
  %10 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %11 = alloca %struct.ccb_trans_settings_spi*, align 8
  %12 = alloca %struct.ccb_calc_geometry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %15 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %16 = call i64 @cam_sim_softc(%struct.cam_sim* %15)
  %17 = inttoptr i64 %16 to %struct.gdt_softc*
  store %struct.gdt_softc* %17, %struct.gdt_softc** %5, align 8
  %18 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %19 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %18, i32 0, i32 6
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @mtx_assert(i32* %19, i32 %20)
  %22 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_18__*
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 4
  store %struct.cam_sim* %22, %struct.cam_sim** %25, align 8
  %26 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %27 = call i32 @cam_sim_bus(%struct.cam_sim* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %union.ccb*, %union.ccb** %4, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_18__*
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_18__*
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @GDT_D_CMD, align 4
  %37 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_18__*
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %union.ccb*, %union.ccb** %4, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_12__*
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @GDT_DPRINTF(i32 %36, i8* %53)
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 1), align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %2
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 1), align 8
  br label %62

62:                                               ; preds = %60, %2
  %63 = load %union.ccb*, %union.ccb** %4, align 8
  %64 = bitcast %union.ccb* %63 to %struct.TYPE_18__*
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %364 [
    i32 130, label %67
    i32 131, label %84
    i32 136, label %84
    i32 129, label %93
    i32 134, label %102
    i32 135, label %173
    i32 132, label %218
    i32 128, label %227
    i32 133, label %236
  ]

67:                                               ; preds = %62
  %68 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %69 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %68, i32 0, i32 5
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_18__*
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sim_links, i32 0, i32 0), align 4
  %73 = call i32 @TAILQ_INSERT_TAIL(i32* %69, %struct.TYPE_18__* %71, i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 2), align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 2), align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 2), align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 3), align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 2), align 8
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 3), align 4
  br label %81

81:                                               ; preds = %79, %67
  %82 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %83 = call i32 @gdt_next(%struct.gdt_softc* %82)
  br label %382

84:                                               ; preds = %62, %62
  %85 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %86 = load %union.ccb*, %union.ccb** %4, align 8
  %87 = bitcast %union.ccb* %86 to %struct.TYPE_18__*
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  store i8* %85, i8** %88, align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %91 = load %union.ccb*, %union.ccb** %4, align 8
  %92 = call i32 @xpt_done(%union.ccb* %91)
  br label %382

93:                                               ; preds = %62
  %94 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %95 = load %union.ccb*, %union.ccb** %4, align 8
  %96 = bitcast %union.ccb* %95 to %struct.TYPE_18__*
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  store i8* %94, i8** %97, align 8
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %100 = load %union.ccb*, %union.ccb** %4, align 8
  %101 = call i32 @xpt_done(%union.ccb* %100)
  br label %382

102:                                              ; preds = %62
  %103 = load %union.ccb*, %union.ccb** %4, align 8
  %104 = bitcast %union.ccb* %103 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %104, %struct.ccb_trans_settings** %9, align 8
  %105 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %106 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %107, %struct.ccb_trans_settings_scsi** %10, align 8
  %108 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %109 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %110, %struct.ccb_trans_settings_spi** %11, align 8
  %111 = load i8*, i8** @PROTO_SCSI, align 8
  %112 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %113 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @SCSI_REV_2, align 8
  %115 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %116 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @XPORT_SPI, align 8
  %118 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %119 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %121 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %120, i32 0, i32 0
  store i32 2, i32* %121, align 8
  %122 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %123 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CTS_TYPE_USER_SETTINGS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %163

127:                                              ; preds = %102
  %128 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %129 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %130 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %132 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %133 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %135 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %136 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %138 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %137, i32 0, i32 0
  store i32 25, i32* %138, align 4
  %139 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %140 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %127
  %144 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %145 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %144, i32 0, i32 1
  store i32 15, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %127
  %147 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %148 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %11, align 8
  %155 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %157 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %158 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load i8*, i8** @CAM_REQ_CMP, align 8
  %160 = load %union.ccb*, %union.ccb** %4, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_18__*
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  store i8* %159, i8** %162, align 8
  br label %168

163:                                              ; preds = %102
  %164 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %165 = load %union.ccb*, %union.ccb** %4, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_18__*
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 2
  store i8* %164, i8** %167, align 8
  br label %168

168:                                              ; preds = %163, %146
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %170 = add nsw i64 %169, -1
  store i64 %170, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %171 = load %union.ccb*, %union.ccb** %4, align 8
  %172 = call i32 @xpt_done(%union.ccb* %171)
  br label %382

173:                                              ; preds = %62
  %174 = load %union.ccb*, %union.ccb** %4, align 8
  %175 = bitcast %union.ccb* %174 to %struct.ccb_calc_geometry*
  store %struct.ccb_calc_geometry* %175, %struct.ccb_calc_geometry** %12, align 8
  %176 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %177 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %176, i32 0, i32 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %12, align 8
  %185 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  %186 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %187 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %186, i32 0, i32 4
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %12, align 8
  %195 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %12, align 8
  %197 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %12, align 8
  %200 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %198, %201
  store i32 %202, i32* %13, align 4
  %203 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %12, align 8
  %204 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %13, align 4
  %207 = sdiv i32 %205, %206
  %208 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %12, align 8
  %209 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  %210 = load i8*, i8** @CAM_REQ_CMP, align 8
  %211 = load %union.ccb*, %union.ccb** %4, align 8
  %212 = bitcast %union.ccb* %211 to %struct.TYPE_18__*
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 2
  store i8* %210, i8** %213, align 8
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %215 = add nsw i64 %214, -1
  store i64 %215, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %216 = load %union.ccb*, %union.ccb** %4, align 8
  %217 = call i32 @xpt_done(%union.ccb* %216)
  br label %382

218:                                              ; preds = %62
  %219 = load i8*, i8** @CAM_REQ_CMP, align 8
  %220 = load %union.ccb*, %union.ccb** %4, align 8
  %221 = bitcast %union.ccb* %220 to %struct.TYPE_18__*
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 2
  store i8* %219, i8** %222, align 8
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %224 = add nsw i64 %223, -1
  store i64 %224, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %225 = load %union.ccb*, %union.ccb** %4, align 8
  %226 = call i32 @xpt_done(%union.ccb* %225)
  br label %382

227:                                              ; preds = %62
  %228 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %229 = load %union.ccb*, %union.ccb** %4, align 8
  %230 = bitcast %union.ccb* %229 to %struct.TYPE_18__*
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  store i8* %228, i8** %231, align 8
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %233 = add nsw i64 %232, -1
  store i64 %233, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %234 = load %union.ccb*, %union.ccb** %4, align 8
  %235 = call i32 @xpt_done(%union.ccb* %234)
  br label %382

236:                                              ; preds = %62
  %237 = load %union.ccb*, %union.ccb** %4, align 8
  %238 = bitcast %union.ccb* %237 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %238, %struct.ccb_pathinq** %14, align 8
  %239 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %240 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %239, i32 0, i32 0
  store i32 1, i32* %240, align 8
  %241 = load i32, i32* @PI_SDTR_ABLE, align 4
  %242 = load i32, i32* @PI_TAG_ABLE, align 4
  %243 = or i32 %241, %242
  %244 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %245 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @PI_WIDE_16, align 4
  %247 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %248 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %252 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %251, i32 0, i32 2
  store i32 1, i32* %252, align 8
  %253 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %254 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %253, i32 0, i32 18
  store i32 0, i32* %254, align 8
  %255 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %256 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %255, i32 0, i32 17
  store i32 0, i32* %256, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %259 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %257, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %236
  %263 = load i32, i32* @GDT_MAX_HDRIVES, align 4
  %264 = sub nsw i32 %263, 1
  %265 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %266 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %265, i32 0, i32 16
  store i32 %264, i32* %266, align 8
  br label %285

267:                                              ; preds = %236
  %268 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %269 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @GDT_FC, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %267
  %275 = load i32, i32* @GDT_MAXID_FC, align 4
  %276 = sub nsw i32 %275, 1
  %277 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %278 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %277, i32 0, i32 16
  store i32 %276, i32* %278, align 8
  br label %284

279:                                              ; preds = %267
  %280 = load i32, i32* @GDT_MAXID, align 4
  %281 = sub nsw i32 %280, 1
  %282 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %283 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %282, i32 0, i32 16
  store i32 %281, i32* %283, align 8
  br label %284

284:                                              ; preds = %279, %274
  br label %285

285:                                              ; preds = %284, %262
  %286 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %287 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %286, i32 0, i32 3
  store i32 7, i32* %287, align 4
  %288 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %289 = call i32 @cam_sim_unit(%struct.cam_sim* %288)
  %290 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %291 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %290, i32 0, i32 15
  store i32 %289, i32* %291, align 4
  %292 = load i32, i32* %6, align 4
  %293 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %294 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %293, i32 0, i32 4
  store i32 %292, i32* %294, align 8
  %295 = load i32, i32* %6, align 4
  %296 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %297 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %295, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %285
  br label %309

301:                                              ; preds = %285
  %302 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %303 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  br label %309

309:                                              ; preds = %301, %300
  %310 = phi i32 [ 127, %300 ], [ %308, %301 ]
  %311 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %312 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %311, i32 0, i32 5
  store i32 %310, i32* %312, align 4
  %313 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %314 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %313, i32 0, i32 6
  store i32 3300, i32* %314, align 8
  %315 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %316 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %315, i32 0, i32 14
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @SIM_IDLEN, align 4
  %319 = call i32 @strlcpy(i32 %317, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %318)
  %320 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %321 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @INTEL_VENDOR_ID_IIR, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %309
  %326 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %327 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %326, i32 0, i32 13
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @HBA_IDLEN, align 4
  %330 = call i32 @strlcpy(i32 %328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %329)
  br label %337

331:                                              ; preds = %309
  %332 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %333 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %332, i32 0, i32 13
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @HBA_IDLEN, align 4
  %336 = call i32 @strlcpy(i32 %334, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %335)
  br label %337

337:                                              ; preds = %331, %325
  %338 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %339 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %338, i32 0, i32 12
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %342 = call i8* @cam_sim_name(%struct.cam_sim* %341)
  %343 = load i32, i32* @DEV_IDLEN, align 4
  %344 = call i32 @strlcpy(i32 %340, i8* %342, i32 %343)
  %345 = load i8*, i8** @XPORT_SPI, align 8
  %346 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %347 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %346, i32 0, i32 11
  store i8* %345, i8** %347, align 8
  %348 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %349 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %348, i32 0, i32 7
  store i32 2, i32* %349, align 4
  %350 = load i8*, i8** @PROTO_SCSI, align 8
  %351 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %352 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %351, i32 0, i32 10
  store i8* %350, i8** %352, align 8
  %353 = load i8*, i8** @SCSI_REV_2, align 8
  %354 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %355 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %354, i32 0, i32 9
  store i8* %353, i8** %355, align 8
  %356 = load i8*, i8** @CAM_REQ_CMP, align 8
  %357 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %358 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %357, i32 0, i32 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  store i8* %356, i8** %359, align 8
  %360 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %361 = add nsw i64 %360, -1
  store i64 %361, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %362 = load %union.ccb*, %union.ccb** %4, align 8
  %363 = call i32 @xpt_done(%union.ccb* %362)
  br label %382

364:                                              ; preds = %62
  %365 = load i32, i32* @GDT_D_INVALID, align 4
  %366 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %367 = load %union.ccb*, %union.ccb** %4, align 8
  %368 = bitcast %union.ccb* %367 to %struct.TYPE_18__*
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = sext i32 %370 to i64
  %372 = inttoptr i64 %371 to i8*
  %373 = call i32 @GDT_DPRINTF(i32 %365, i8* %372)
  %374 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %375 = load %union.ccb*, %union.ccb** %4, align 8
  %376 = bitcast %union.ccb* %375 to %struct.TYPE_18__*
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 2
  store i8* %374, i8** %377, align 8
  %378 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %379 = add nsw i64 %378, -1
  store i64 %379, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gdt_stat, i32 0, i32 0), align 8
  %380 = load %union.ccb*, %union.ccb** %4, align 8
  %381 = call i32 @xpt_done(%union.ccb* %380)
  br label %382

382:                                              ; preds = %364, %337, %227, %218, %173, %168, %93, %84, %81
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @gdt_next(%struct.gdt_softc*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
