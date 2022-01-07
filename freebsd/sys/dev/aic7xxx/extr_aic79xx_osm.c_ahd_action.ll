; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.ahd_softc = type { i32, i32, i32, %struct.ahd_tmode_lstate*, %struct.ahd_tmode_lstate* }
%struct.ahd_tmode_lstate = type { i32, i32 }
%struct.scb = type { i32, %union.ccb*, %struct.hardware_scb* }
%struct.hardware_scb = type { i32, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.target_data }
%struct.target_data = type { i32, i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i32, %struct.scb*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ahd_action\0A\00", align 1
@AHD_INITIATORROLE = common dso_local global i32 0, align 4
@CAM_PROVIDE_FAIL = common dso_local global i8* null, align 8
@CAM_TAG_ACTION_VALID = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@AHD_NEVER_COL_IDX = common dso_local global i32 0, align 4
@AHD_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i8* null, align 8
@CAM_DEBUG_SUBTRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"start scb(%p)\0A\00", align 1
@SCB_DEVICE_RESET = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@SIU_TASKMGMT_LUN_RESET = common dso_local global i32 0, align 4
@AHD_EXTENDED_TRANS_A = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"SCSI bus reset delivered. %d SCBs aborted.\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@AHD_WIDE = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@AHD_TARGETMODE = common dso_local global i32 0, align 4
@PIT_PROCESSOR = common dso_local global i32 0, align 4
@PIT_DISCONNECT = common dso_local global i32 0, align 4
@PIT_TERM_IO = common dso_local global i32 0, align 4
@AHD_NUM_LUNS_NONPKT = common dso_local global i32 0, align 4
@AHD_RESET_BUS_A = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Adaptec\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@SCSI_REV_2 = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i32 0, align 4
@SID_SPI_CLOCK_DT_ST = common dso_local global i32 0, align 4
@SID_SPI_IUS = common dso_local global i32 0, align 4
@SID_SPI_QAS = common dso_local global i32 0, align 4
@AHD_TQINFIFO_BLOCKED = common dso_local global i32 0, align 4
@CAM_DIS_DISCONNECT = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i8* null, align 8
@CAM_SEND_STATUS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NO_DISCONNECT = common dso_local global i32 0, align 4
@SCB_TARGET_IMMEDIATE = common dso_local global i32 0, align 4
@SPHASE_PENDING = common dso_local global i32 0, align 4
@TARGET_SCB = common dso_local global i32 0, align 4
@sim_links = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @ahd_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scb*, align 8
  %9 = alloca %struct.hardware_scb*, align 8
  %10 = alloca %struct.ahd_initiator_tinfo*, align 8
  %11 = alloca %struct.ahd_tmode_tstate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_16__*
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %20 = call i32 @CAM_DEBUG(i32 %18, i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %22 = call i64 @cam_sim_softc(%struct.cam_sim* %21)
  %23 = inttoptr i64 %22 to %struct.ahd_softc*
  store %struct.ahd_softc* %23, %struct.ahd_softc** %5, align 8
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_16__*
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %29 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %30 = call i32 @SIM_SCSI_ID(%struct.ahd_softc* %28, %struct.cam_sim* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %union.ccb*, %union.ccb** %4, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_16__*
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %401 [
    i32 130, label %35
    i32 131, label %35
    i32 141, label %199
    i32 129, label %204
    i32 136, label %217
    i32 139, label %230
    i32 132, label %241
    i32 128, label %264
    i32 133, label %271
  ]

35:                                               ; preds = %2, %2
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AHD_INITIATORROLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_16__*
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 130
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %union.ccb*, %union.ccb** %4, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_16__*
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 131
  br i1 %53, label %54, label %61

54:                                               ; preds = %48, %42
  %55 = load i8*, i8** @CAM_PROVIDE_FAIL, align 8
  %56 = load %union.ccb*, %union.ccb** %4, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_16__*
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = call i32 @xpt_done(%union.ccb* %59)
  br label %408

61:                                               ; preds = %48, %35
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %62, i8 signext 65, i32 %63, i32 %64, %struct.ahd_tmode_tstate** %11)
  store %struct.ahd_initiator_tinfo* %65, %struct.ahd_initiator_tinfo** %10, align 8
  %66 = load %union.ccb*, %union.ccb** %4, align 8
  %67 = bitcast %union.ccb* %66 to %struct.TYPE_16__*
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %61
  %74 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %10, align 8
  %75 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %73
  %82 = load %union.ccb*, %union.ccb** %4, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_16__*
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 138
  br i1 %86, label %87, label %89

87:                                               ; preds = %81, %73, %61
  %88 = load i32, i32* @AHD_NEVER_COL_IDX, align 4
  store i32 %88, i32* %12, align 4
  br label %96

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = load %union.ccb*, %union.ccb** %4, align 8
  %92 = bitcast %union.ccb* %91 to %struct.TYPE_16__*
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @AHD_BUILD_COL_IDX(i32 %90, i32 %94)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %89, %87
  %97 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call %struct.scb* @ahd_get_scb(%struct.ahd_softc* %97, i32 %98)
  store %struct.scb* %99, %struct.scb** %8, align 8
  %100 = icmp eq %struct.scb* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %103 = call i32 @xpt_freeze_simq(%struct.cam_sim* %102, i32 1)
  %104 = load i32, i32* @AHD_RESOURCE_SHORTAGE, align 4
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %106 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i8*, i8** @CAM_REQUEUE_REQ, align 8
  %110 = load %union.ccb*, %union.ccb** %4, align 8
  %111 = bitcast %union.ccb* %110 to %struct.TYPE_16__*
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  store i8* %109, i8** %112, align 8
  %113 = load %union.ccb*, %union.ccb** %4, align 8
  %114 = call i32 @xpt_done(%union.ccb* %113)
  br label %408

115:                                              ; preds = %96
  %116 = load %struct.scb*, %struct.scb** %8, align 8
  %117 = getelementptr inbounds %struct.scb, %struct.scb* %116, i32 0, i32 2
  %118 = load %struct.hardware_scb*, %struct.hardware_scb** %117, align 8
  store %struct.hardware_scb* %118, %struct.hardware_scb** %9, align 8
  %119 = load %union.ccb*, %union.ccb** %4, align 8
  %120 = bitcast %union.ccb* %119 to %struct.TYPE_16__*
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @CAM_DEBUG_SUBTRACE, align 4
  %124 = load %struct.scb*, %struct.scb** %8, align 8
  %125 = bitcast %struct.scb* %124 to i8*
  %126 = call i32 @CAM_DEBUG(i32 %122, i32 %123, i8* %125)
  %127 = load %union.ccb*, %union.ccb** %4, align 8
  %128 = load %struct.scb*, %struct.scb** %8, align 8
  %129 = getelementptr inbounds %struct.scb, %struct.scb* %128, i32 0, i32 1
  store %union.ccb* %127, %union.ccb** %129, align 8
  %130 = load %struct.scb*, %struct.scb** %8, align 8
  %131 = load %union.ccb*, %union.ccb** %4, align 8
  %132 = bitcast %union.ccb* %131 to %struct.TYPE_16__*
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 4
  store %struct.scb* %130, %struct.scb** %133, align 8
  %134 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %135 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %134, i32 0, i32 0
  store i32 0, i32* %135, align 4
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %137 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @BUILD_SCSIID(%struct.ahd_softc* %136, %struct.cam_sim* %137, i32 %138, i32 %139)
  %141 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %142 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %union.ccb*, %union.ccb** %4, align 8
  %144 = bitcast %union.ccb* %143 to %struct.TYPE_16__*
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %148 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %union.ccb*, %union.ccb** %4, align 8
  %150 = bitcast %union.ccb* %149 to %struct.TYPE_16__*
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 131
  br i1 %153, label %154, label %172

154:                                              ; preds = %115
  %155 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %156 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %155, i32 0, i32 3
  store i32 0, i32* %156, align 4
  %157 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %158 = load %struct.scb*, %struct.scb** %8, align 8
  %159 = getelementptr inbounds %struct.scb, %struct.scb* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* @MK_MESSAGE, align 4
  %163 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %164 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* @SIU_TASKMGMT_LUN_RESET, align 4
  %168 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %169 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.scb*, %struct.scb** %8, align 8
  %171 = call i32 @ahd_execute_scb(%struct.scb* %170, i32* null, i32 0, i32 0)
  br label %198

172:                                              ; preds = %115
  %173 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %174 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load %union.ccb*, %union.ccb** %4, align 8
  %176 = bitcast %union.ccb* %175 to %struct.TYPE_16__*
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %172
  %183 = load %union.ccb*, %union.ccb** %4, align 8
  %184 = bitcast %union.ccb* %183 to %struct.TYPE_15__*
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %188 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %182, %172
  %192 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %193 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %194 = load %union.ccb*, %union.ccb** %4, align 8
  %195 = bitcast %union.ccb* %194 to %struct.TYPE_15__*
  %196 = load %struct.scb*, %struct.scb** %8, align 8
  %197 = call i32 @ahd_setup_data(%struct.ahd_softc* %192, %struct.cam_sim* %193, %struct.TYPE_15__* %195, %struct.scb* %196)
  br label %198

198:                                              ; preds = %191, %154
  br label %408

199:                                              ; preds = %2
  %200 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %201 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %202 = load %union.ccb*, %union.ccb** %4, align 8
  %203 = call i32 @ahd_abort_ccb(%struct.ahd_softc* %200, %struct.cam_sim* %201, %union.ccb* %202)
  br label %408

204:                                              ; preds = %2
  %205 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %206 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %207 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %208 = call i32 @SIM_SCSI_ID(%struct.ahd_softc* %206, %struct.cam_sim* %207)
  %209 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %210 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %211 = call i32 @SIM_CHANNEL(%struct.ahd_softc* %209, %struct.cam_sim* %210)
  %212 = load %union.ccb*, %union.ccb** %4, align 8
  %213 = bitcast %union.ccb* %212 to i32*
  %214 = call i32 @ahd_set_tran_settings(%struct.ahd_softc* %205, i32 %208, i32 %211, i32* %213)
  %215 = load %union.ccb*, %union.ccb** %4, align 8
  %216 = call i32 @xpt_done(%union.ccb* %215)
  br label %408

217:                                              ; preds = %2
  %218 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %219 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %220 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %221 = call i32 @SIM_SCSI_ID(%struct.ahd_softc* %219, %struct.cam_sim* %220)
  %222 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %223 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %224 = call i32 @SIM_CHANNEL(%struct.ahd_softc* %222, %struct.cam_sim* %223)
  %225 = load %union.ccb*, %union.ccb** %4, align 8
  %226 = bitcast %union.ccb* %225 to i32*
  %227 = call i32 @ahd_get_tran_settings(%struct.ahd_softc* %218, i32 %221, i32 %224, i32* %226)
  %228 = load %union.ccb*, %union.ccb** %4, align 8
  %229 = call i32 @xpt_done(%union.ccb* %228)
  br label %408

230:                                              ; preds = %2
  %231 = load %union.ccb*, %union.ccb** %4, align 8
  %232 = bitcast %union.ccb* %231 to i32*
  %233 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %234 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @AHD_EXTENDED_TRANS_A, align 4
  %237 = and i32 %235, %236
  %238 = call i32 @aic_calc_geometry(i32* %232, i32 %237)
  %239 = load %union.ccb*, %union.ccb** %4, align 8
  %240 = call i32 @xpt_done(%union.ccb* %239)
  br label %408

241:                                              ; preds = %2
  %242 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %243 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %244 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %245 = call i32 @SIM_CHANNEL(%struct.ahd_softc* %243, %struct.cam_sim* %244)
  %246 = load i32, i32* @TRUE, align 4
  %247 = call i32 @ahd_reset_channel(%struct.ahd_softc* %242, i32 %245, i32 %246)
  store i32 %247, i32* %13, align 4
  %248 = load i32, i32* @bootverbose, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %241
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %252 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %253 = call i32 @SIM_PATH(%struct.ahd_softc* %251, %struct.cam_sim* %252)
  %254 = call i32 @xpt_print_path(i32 %253)
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %250, %241
  %258 = load i8*, i8** @CAM_REQ_CMP, align 8
  %259 = load %union.ccb*, %union.ccb** %4, align 8
  %260 = bitcast %union.ccb* %259 to %struct.TYPE_16__*
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 2
  store i8* %258, i8** %261, align 8
  %262 = load %union.ccb*, %union.ccb** %4, align 8
  %263 = call i32 @xpt_done(%union.ccb* %262)
  br label %408

264:                                              ; preds = %2
  %265 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %266 = load %union.ccb*, %union.ccb** %4, align 8
  %267 = bitcast %union.ccb* %266 to %struct.TYPE_16__*
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 2
  store i8* %265, i8** %268, align 8
  %269 = load %union.ccb*, %union.ccb** %4, align 8
  %270 = call i32 @xpt_done(%union.ccb* %269)
  br label %408

271:                                              ; preds = %2
  %272 = load %union.ccb*, %union.ccb** %4, align 8
  %273 = bitcast %union.ccb* %272 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %273, %struct.ccb_pathinq** %14, align 8
  %274 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %275 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  %276 = load i32, i32* @PI_SDTR_ABLE, align 4
  %277 = load i32, i32* @PI_TAG_ABLE, align 4
  %278 = or i32 %276, %277
  %279 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %280 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  %281 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %282 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @AHD_WIDE, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %271
  %288 = load i32, i32* @PI_WIDE_16, align 4
  %289 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %290 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %271
  %294 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %295 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @AHD_TARGETMODE, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %293
  %301 = load i32, i32* @PIT_PROCESSOR, align 4
  %302 = load i32, i32* @PIT_DISCONNECT, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @PIT_TERM_IO, align 4
  %305 = or i32 %303, %304
  %306 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %307 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %306, i32 0, i32 2
  store i32 %305, i32* %307, align 8
  br label %311

308:                                              ; preds = %293
  %309 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %310 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %309, i32 0, i32 2
  store i32 0, i32* %310, align 8
  br label %311

311:                                              ; preds = %308, %300
  %312 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %313 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %312, i32 0, i32 16
  store i32 0, i32* %313, align 4
  %314 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %315 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %314, i32 0, i32 19
  store i32 0, i32* %315, align 8
  %316 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %317 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @AHD_WIDE, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i32 15, i32 7
  %324 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %325 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %324, i32 0, i32 3
  store i32 %323, i32* %325, align 4
  %326 = load i32, i32* @AHD_NUM_LUNS_NONPKT, align 4
  %327 = sub nsw i32 %326, 1
  %328 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %329 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %328, i32 0, i32 18
  store i32 %327, i32* %329, align 4
  %330 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %331 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %334 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %333, i32 0, i32 17
  store i32 %332, i32* %334, align 8
  %335 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %336 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %339 = and i32 %337, %338
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %311
  %342 = load i32, i32* @PIM_NOBUSRESET, align 4
  %343 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %344 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %343, i32 0, i32 16
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %341, %311
  %348 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %349 = call i32 @cam_sim_bus(%struct.cam_sim* %348)
  %350 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %351 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %350, i32 0, i32 15
  store i32 %349, i32* %351, align 8
  %352 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %353 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %352, i32 0, i32 4
  store i32 3300, i32* %353, align 8
  %354 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %355 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %354, i32 0, i32 14
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @SIM_IDLEN, align 4
  %358 = call i32 @strlcpy(i32 %356, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %357)
  %359 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %360 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %359, i32 0, i32 13
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @HBA_IDLEN, align 4
  %363 = call i32 @strlcpy(i32 %361, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %362)
  %364 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %365 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %364, i32 0, i32 12
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %368 = call i8* @cam_sim_name(%struct.cam_sim* %367)
  %369 = load i32, i32* @DEV_IDLEN, align 4
  %370 = call i32 @strlcpy(i32 %366, i8* %368, i32 %369)
  %371 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %372 = call i32 @cam_sim_unit(%struct.cam_sim* %371)
  %373 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %374 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %373, i32 0, i32 11
  store i32 %372, i32* %374, align 8
  %375 = load i32, i32* @PROTO_SCSI, align 4
  %376 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %377 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %376, i32 0, i32 10
  store i32 %375, i32* %377, align 4
  %378 = load i32, i32* @SCSI_REV_2, align 4
  %379 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %380 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %379, i32 0, i32 9
  store i32 %378, i32* %380, align 8
  %381 = load i32, i32* @XPORT_SPI, align 4
  %382 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %383 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %382, i32 0, i32 8
  store i32 %381, i32* %383, align 4
  %384 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %385 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %384, i32 0, i32 5
  store i32 4, i32* %385, align 4
  %386 = load i32, i32* @SID_SPI_CLOCK_DT_ST, align 4
  %387 = load i32, i32* @SID_SPI_IUS, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @SID_SPI_QAS, align 4
  %390 = or i32 %388, %389
  %391 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %392 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %391, i32 0, i32 7
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 0
  store i32 %390, i32* %394, align 8
  %395 = load i8*, i8** @CAM_REQ_CMP, align 8
  %396 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %14, align 8
  %397 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %396, i32 0, i32 6
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 0
  store i8* %395, i8** %398, align 8
  %399 = load %union.ccb*, %union.ccb** %4, align 8
  %400 = call i32 @xpt_done(%union.ccb* %399)
  br label %408

401:                                              ; preds = %2
  %402 = load i8*, i8** @CAM_PROVIDE_FAIL, align 8
  %403 = load %union.ccb*, %union.ccb** %4, align 8
  %404 = bitcast %union.ccb* %403 to %struct.TYPE_16__*
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 2
  store i8* %402, i8** %405, align 8
  %406 = load %union.ccb*, %union.ccb** %4, align 8
  %407 = call i32 @xpt_done(%union.ccb* %406)
  br label %408

408:                                              ; preds = %54, %101, %401, %347, %264, %257, %230, %217, %204, %199, %198
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @SIM_SCSI_ID(%struct.ahd_softc*, %struct.cam_sim*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i8 signext, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @AHD_BUILD_COL_IDX(i32, i32) #1

declare dso_local %struct.scb* @ahd_get_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

declare dso_local i32 @BUILD_SCSIID(%struct.ahd_softc*, %struct.cam_sim*, i32, i32) #1

declare dso_local i32 @ahd_execute_scb(%struct.scb*, i32*, i32, i32) #1

declare dso_local i32 @ahd_setup_data(%struct.ahd_softc*, %struct.cam_sim*, %struct.TYPE_15__*, %struct.scb*) #1

declare dso_local i32 @ahd_abort_ccb(%struct.ahd_softc*, %struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @ahd_set_tran_settings(%struct.ahd_softc*, i32, i32, i32*) #1

declare dso_local i32 @SIM_CHANNEL(%struct.ahd_softc*, %struct.cam_sim*) #1

declare dso_local i32 @ahd_get_tran_settings(%struct.ahd_softc*, i32, i32, i32*) #1

declare dso_local i32 @aic_calc_geometry(i32*, i32) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @xpt_print_path(i32) #1

declare dso_local i32 @SIM_PATH(%struct.ahd_softc*, %struct.cam_sim*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
