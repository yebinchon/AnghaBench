; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_action_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_action_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.mmcnull_softc = type { i32, i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_7__, i32, i8*, i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ccb_trans_settings_mmc }
%struct.ccb_trans_settings_mmc = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8* }

@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"action: func_code %0x\0A\00", align 1
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"FreeBSD Foundation\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_MMCSD = common dso_local global i8* null, align 8
@SCSI_REV_0 = common dso_local global i32 0, align 4
@XPORT_MMCSD = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Got XPT_GET_TRAN_SETTINGS\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Got XPT_SET_TRAN_SETTINGS, should update IOS...\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Got XPT_RESET_BUS, ACK it...\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Got XPT_MMC_IO\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Got XPT_RESET_DEV\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Func code %d is unknown\0A\00", align 1
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @mmcnull_action_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmcnull_action_sd(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mmcnull_softc*, align 8
  %6 = alloca %struct.ccb_pathinq*, align 8
  %7 = alloca %struct.ccb_trans_settings*, align 8
  %8 = alloca %struct.ccb_trans_settings_mmc*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %10 = call %struct.mmcnull_softc* @cam_sim_softc(%struct.cam_sim* %9)
  store %struct.mmcnull_softc* %10, %struct.mmcnull_softc** %5, align 8
  %11 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %5, align 8
  %12 = icmp eq %struct.mmcnull_softc* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_8__*
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = call i32 @xpt_done(%union.ccb* %18)
  br label %191

20:                                               ; preds = %2
  %21 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %5, align 8
  %22 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %21, i32 0, i32 1
  %23 = load i32, i32* @MA_OWNED, align 4
  %24 = call i32 @mtx_assert(i32* %22, i32 %23)
  %25 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %5, align 8
  %26 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %union.ccb*, %union.ccb** %4, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_8__*
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_8__*
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %175 [
    i32 131, label %37
    i32 133, label %106
    i32 128, label %140
    i32 130, label %149
    i32 132, label %158
    i32 129, label %166
  ]

37:                                               ; preds = %20
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = bitcast %union.ccb* %38 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %39, %struct.ccb_pathinq** %6, align 8
  %40 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %41 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @PI_SDTR_ABLE, align 4
  %43 = load i32, i32* @PI_TAG_ABLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PI_WIDE_16, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %48 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %50 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %49, i32 0, i32 18
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* @PIM_NOBUSRESET, align 4
  %52 = load i32, i32* @PIM_SEQSCAN, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %55 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %57 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %56, i32 0, i32 17
  store i32 0, i32* %57, align 4
  %58 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %59 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %58, i32 0, i32 16
  store i32 0, i32* %59, align 8
  %60 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %61 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %60, i32 0, i32 15
  store i32 0, i32* %61, align 4
  %62 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %63 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %62, i32 0, i32 3
  store i32 1, i32* %63, align 4
  %64 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %65 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SIM_IDLEN, align 4
  %68 = call i32 @strncpy(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %70 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HBA_IDLEN, align 4
  %73 = call i32 @strncpy(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %75 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %78 = call i8* @cam_sim_name(%struct.cam_sim* %77)
  %79 = load i32, i32* @DEV_IDLEN, align 4
  %80 = call i32 @strncpy(i32 %76, i8* %78, i32 %79)
  %81 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %82 = call i32 @cam_sim_unit(%struct.cam_sim* %81)
  %83 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %84 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 4
  %85 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %86 = call i32 @cam_sim_bus(%struct.cam_sim* %85)
  %87 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %88 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %87, i32 0, i32 10
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %90 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %89, i32 0, i32 4
  store i32 100, i32* %90, align 8
  %91 = load i8*, i8** @PROTO_MMCSD, align 8
  %92 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %93 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %92, i32 0, i32 9
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @SCSI_REV_0, align 4
  %95 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %96 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** @XPORT_MMCSD, align 8
  %98 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %99 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %98, i32 0, i32 7
  store i8* %97, i8** %99, align 8
  %100 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %101 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %100, i32 0, i32 6
  store i32 0, i32* %101, align 8
  %102 = load i8*, i8** @CAM_REQ_CMP, align 8
  %103 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %6, align 8
  %104 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  br label %188

106:                                              ; preds = %20
  %107 = load %union.ccb*, %union.ccb** %4, align 8
  %108 = bitcast %union.ccb* %107 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %108, %struct.ccb_trans_settings** %7, align 8
  %109 = load %union.ccb*, %union.ccb** %4, align 8
  %110 = bitcast %union.ccb* %109 to %struct.ccb_trans_settings*
  %111 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store %struct.ccb_trans_settings_mmc* %112, %struct.ccb_trans_settings_mmc** %8, align 8
  %113 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %5, align 8
  %114 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i8*, i8** @PROTO_MMCSD, align 8
  %118 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %119 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %121 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %120, i32 0, i32 3
  store i32 0, i32* %121, align 8
  %122 = load i8*, i8** @XPORT_MMCSD, align 8
  %123 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %124 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %126 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %7, align 8
  %128 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.ccb_trans_settings_mmc*, %struct.ccb_trans_settings_mmc** %8, align 8
  %131 = getelementptr inbounds %struct.ccb_trans_settings_mmc, %struct.ccb_trans_settings_mmc* %130, i32 0, i32 0
  store i32 12000000, i32* %131, align 4
  %132 = load %struct.ccb_trans_settings_mmc*, %struct.ccb_trans_settings_mmc** %8, align 8
  %133 = getelementptr inbounds %struct.ccb_trans_settings_mmc, %struct.ccb_trans_settings_mmc* %132, i32 0, i32 1
  store i32 200000, i32* %133, align 4
  %134 = load %struct.ccb_trans_settings_mmc*, %struct.ccb_trans_settings_mmc** %8, align 8
  %135 = getelementptr inbounds %struct.ccb_trans_settings_mmc, %struct.ccb_trans_settings_mmc* %134, i32 0, i32 2
  store i32 1, i32* %135, align 4
  %136 = load i8*, i8** @CAM_REQ_CMP, align 8
  %137 = load %union.ccb*, %union.ccb** %4, align 8
  %138 = bitcast %union.ccb* %137 to %struct.TYPE_8__*
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i8* %136, i8** %139, align 8
  br label %188

140:                                              ; preds = %20
  %141 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %5, align 8
  %142 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i8*, i8** @CAM_REQ_CMP, align 8
  %146 = load %union.ccb*, %union.ccb** %4, align 8
  %147 = bitcast %union.ccb* %146 to %struct.TYPE_8__*
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i8* %145, i8** %148, align 8
  br label %188

149:                                              ; preds = %20
  %150 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %5, align 8
  %151 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i8*, i8** @CAM_REQ_CMP, align 8
  %155 = load %union.ccb*, %union.ccb** %4, align 8
  %156 = bitcast %union.ccb* %155 to %struct.TYPE_8__*
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i8* %154, i8** %157, align 8
  br label %188

158:                                              ; preds = %20
  %159 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %5, align 8
  %160 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @device_printf(i32 %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %163 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %164 = load %union.ccb*, %union.ccb** %4, align 8
  %165 = call i32 @mmcnull_handle_mmcio(%struct.cam_sim* %163, %union.ccb* %164)
  br label %191

166:                                              ; preds = %20
  %167 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %5, align 8
  %168 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, ...) @device_printf(i32 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %171 = load i8*, i8** @CAM_REQ_CMP, align 8
  %172 = load %union.ccb*, %union.ccb** %4, align 8
  %173 = bitcast %union.ccb* %172 to %struct.TYPE_8__*
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i8* %171, i8** %174, align 8
  br label %188

175:                                              ; preds = %20
  %176 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %5, align 8
  %177 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %union.ccb*, %union.ccb** %4, align 8
  %180 = bitcast %union.ccb* %179 to %struct.TYPE_8__*
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i32, i8*, ...) @device_printf(i32 %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %185 = load %union.ccb*, %union.ccb** %4, align 8
  %186 = bitcast %union.ccb* %185 to %struct.TYPE_8__*
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  store i8* %184, i8** %187, align 8
  br label %188

188:                                              ; preds = %175, %166, %149, %140, %106, %37
  %189 = load %union.ccb*, %union.ccb** %4, align 8
  %190 = call i32 @xpt_done(%union.ccb* %189)
  br label %191

191:                                              ; preds = %188, %158, %13
  ret void
}

declare dso_local %struct.mmcnull_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @mmcnull_handle_mmcio(%struct.cam_sim*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
