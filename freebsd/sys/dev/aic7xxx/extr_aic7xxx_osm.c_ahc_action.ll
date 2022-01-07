; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_26__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.ahc_softc = type { i32, i32, i32, i32, i32, i32, %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate* }
%struct.ahc_tmode_lstate = type { i32, i32 }
%struct.ahc_tmode_tstate = type { i32, i32 }
%struct.scb = type { i32, %union.ccb*, %struct.hardware_scb* }
%struct.hardware_scb = type { i32, %struct.TYPE_18__, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.target_data }
%struct.target_data = type { i32, i32, i32 }
%struct.ahc_devinfo = type { i32, i32, i32, i32 }
%struct.ccb_trans_settings = type { i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.ahc_initiator_tinfo = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.ahc_syncrate = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i8*, i32, %struct.scb*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ahc_action\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@sim_links = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@CAM_REQ_INPROG = common dso_local global i8* null, align 8
@AHC_TQINFIFO_BLOCKED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AHC_INITIATORROLE = common dso_local global i32 0, align 4
@CAM_PROVIDE_FAIL = common dso_local global i8* null, align 8
@AHC_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i8* null, align 8
@CAM_DEBUG_SUBTRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"start scb(%p)\0A\00", align 1
@SCB_DEVICE_RESET = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@SCB_TARGET_IMMEDIATE = common dso_local global i32 0, align 4
@TARGET_SCB = common dso_local global i32 0, align 4
@SCB_TARGET_SCB = common dso_local global i32 0, align 4
@CAM_SEND_STATUS = common dso_local global i32 0, align 4
@SPHASE_PENDING = common dso_local global i32 0, align 4
@CAM_DIS_DISCONNECT = common dso_local global i32 0, align 4
@NO_DISCONNECT = common dso_local global i32 0, align 4
@CAM_TAG_ACTION_VALID = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@AHC_TRANS_GOAL = common dso_local global i32 0, align 4
@CTS_TYPE_USER_SETTINGS = common dso_local global i32 0, align 4
@AHC_TRANS_USER = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@CTS_SPI_VALID_PPR_OPTIONS = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@AHC_SYNCRATE_DT = common dso_local global i32 0, align 4
@AHC_ULTRA = common dso_local global i32 0, align 4
@AHC_SYNCRATE_ULTRA = common dso_local global i32 0, align 4
@AHC_SYNCRATE_FAST = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@AHC_EXTENDED_TRANS_B = common dso_local global i32 0, align 4
@AHC_EXTENDED_TRANS_A = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"SCSI bus reset delivered. %d SCBs aborted.\0A\00", align 1
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@AHC_TARGETMODE = common dso_local global i32 0, align 4
@PIT_PROCESSOR = common dso_local global i32 0, align 4
@PIT_DISCONNECT = common dso_local global i32 0, align 4
@PIT_TERM_IO = common dso_local global i32 0, align 4
@AHC_NUM_LUNS = common dso_local global i32 0, align 4
@AHC_RESET_BUS_B = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@AHC_RESET_BUS_A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Adaptec\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@SCSI_REV_2 = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i32 0, align 4
@SID_SPI_CLOCK_ST = common dso_local global i32 0, align 4
@AHC_DT = common dso_local global i32 0, align 4
@SID_SPI_CLOCK_DT_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @ahc_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca %struct.ahc_tmode_lstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahc_tmode_tstate*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.scb*, align 8
  %12 = alloca %struct.hardware_scb*, align 8
  %13 = alloca %struct.target_data*, align 8
  %14 = alloca %struct.ahc_tmode_tstate*, align 8
  %15 = alloca %struct.ahc_tmode_lstate*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ahc_devinfo, align 4
  %18 = alloca %struct.ccb_trans_settings*, align 8
  %19 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %20 = alloca %struct.ccb_trans_settings_spi*, align 8
  %21 = alloca %struct.ahc_initiator_tinfo*, align 8
  %22 = alloca %struct.ahc_tmode_tstate*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.ahc_syncrate*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %31 = load %union.ccb*, %union.ccb** %4, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_17__*
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %36 = call i32 @CAM_DEBUG(i32 %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %38 = call i64 @cam_sim_softc(%struct.cam_sim* %37)
  %39 = inttoptr i64 %38 to %struct.ahc_softc*
  store %struct.ahc_softc* %39, %struct.ahc_softc** %5, align 8
  %40 = load %union.ccb*, %union.ccb** %4, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_17__*
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %45 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %46 = call i32 @SIM_SCSI_ID(%struct.ahc_softc* %44, %struct.cam_sim* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %union.ccb*, %union.ccb** %4, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_17__*
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %939 [
    i32 140, label %51
    i32 138, label %51
    i32 130, label %112
    i32 131, label %112
    i32 134, label %309
    i32 135, label %309
    i32 137, label %339
    i32 141, label %346
    i32 129, label %351
    i32 136, label %705
    i32 139, label %718
    i32 132, label %743
    i32 128, label %766
    i32 133, label %773
  ]

51:                                               ; preds = %2, %2
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %53 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %54 = load %union.ccb*, %union.ccb** %4, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i8* @ahc_find_tmode_devs(%struct.ahc_softc* %52, %struct.cam_sim* %53, %union.ccb* %54, %struct.ahc_tmode_tstate** %9, %struct.ahc_tmode_lstate** %6, i32 %55)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** @CAM_REQ_CMP, align 8
  %59 = icmp ne i8* %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %51
  %61 = load %union.ccb*, %union.ccb** %4, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_17__*
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 138
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  store %struct.ahc_tmode_tstate* null, %struct.ahc_tmode_tstate** %9, align 8
  %67 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %68 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %67, i32 0, i32 7
  %69 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %68, align 8
  store %struct.ahc_tmode_lstate* %69, %struct.ahc_tmode_lstate** %6, align 8
  br label %77

70:                                               ; preds = %60
  %71 = load i8*, i8** %10, align 8
  %72 = load %union.ccb*, %union.ccb** %4, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_17__*
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  store i8* %71, i8** %74, align 8
  %75 = load %union.ccb*, %union.ccb** %4, align 8
  %76 = call i32 @xpt_done(%union.ccb* %75)
  br label %946

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %union.ccb*, %union.ccb** %4, align 8
  %80 = bitcast %union.ccb* %79 to %struct.TYPE_17__*
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 140
  br i1 %83, label %84, label %106

84:                                               ; preds = %78
  %85 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %6, align 8
  %86 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %85, i32 0, i32 1
  %87 = load %union.ccb*, %union.ccb** %4, align 8
  %88 = bitcast %union.ccb* %87 to %struct.TYPE_17__*
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sim_links, i32 0, i32 0), align 4
  %90 = call i32 @SLIST_INSERT_HEAD(i32* %86, %struct.TYPE_17__* %88, i32 %89)
  %91 = load i8*, i8** @CAM_REQ_INPROG, align 8
  %92 = load %union.ccb*, %union.ccb** %4, align 8
  %93 = bitcast %union.ccb* %92 to %struct.TYPE_17__*
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  store i8* %91, i8** %94, align 8
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %96 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AHC_TQINFIFO_BLOCKED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %84
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @ahc_run_tqinfifo(%struct.ahc_softc* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %84
  br label %946

106:                                              ; preds = %78
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %8, align 4
  %108 = load %union.ccb*, %union.ccb** %4, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_16__*
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %2, %2, %106
  %113 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %114 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @AHC_INITIATORROLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %112
  %120 = load %union.ccb*, %union.ccb** %4, align 8
  %121 = bitcast %union.ccb* %120 to %struct.TYPE_17__*
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 130
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load %union.ccb*, %union.ccb** %4, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_17__*
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 131
  br i1 %130, label %131, label %138

131:                                              ; preds = %125, %119
  %132 = load i8*, i8** @CAM_PROVIDE_FAIL, align 8
  %133 = load %union.ccb*, %union.ccb** %4, align 8
  %134 = bitcast %union.ccb* %133 to %struct.TYPE_17__*
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  store i8* %132, i8** %135, align 8
  %136 = load %union.ccb*, %union.ccb** %4, align 8
  %137 = call i32 @xpt_done(%union.ccb* %136)
  br label %946

138:                                              ; preds = %125, %112
  %139 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %140 = call %struct.scb* @ahc_get_scb(%struct.ahc_softc* %139)
  store %struct.scb* %140, %struct.scb** %11, align 8
  %141 = icmp eq %struct.scb* %140, null
  br i1 %141, label %142, label %156

142:                                              ; preds = %138
  %143 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %144 = call i32 @xpt_freeze_simq(%struct.cam_sim* %143, i32 1)
  %145 = load i32, i32* @AHC_RESOURCE_SHORTAGE, align 4
  %146 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %147 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i8*, i8** @CAM_REQUEUE_REQ, align 8
  %151 = load %union.ccb*, %union.ccb** %4, align 8
  %152 = bitcast %union.ccb* %151 to %struct.TYPE_17__*
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  store i8* %150, i8** %153, align 8
  %154 = load %union.ccb*, %union.ccb** %4, align 8
  %155 = call i32 @xpt_done(%union.ccb* %154)
  br label %946

156:                                              ; preds = %138
  %157 = load %struct.scb*, %struct.scb** %11, align 8
  %158 = getelementptr inbounds %struct.scb, %struct.scb* %157, i32 0, i32 2
  %159 = load %struct.hardware_scb*, %struct.hardware_scb** %158, align 8
  store %struct.hardware_scb* %159, %struct.hardware_scb** %12, align 8
  %160 = load %union.ccb*, %union.ccb** %4, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_17__*
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @CAM_DEBUG_SUBTRACE, align 4
  %165 = load %struct.scb*, %struct.scb** %11, align 8
  %166 = bitcast %struct.scb* %165 to i8*
  %167 = call i32 @CAM_DEBUG(i32 %163, i32 %164, i8* %166)
  %168 = load %union.ccb*, %union.ccb** %4, align 8
  %169 = load %struct.scb*, %struct.scb** %11, align 8
  %170 = getelementptr inbounds %struct.scb, %struct.scb* %169, i32 0, i32 1
  store %union.ccb* %168, %union.ccb** %170, align 8
  %171 = load %struct.scb*, %struct.scb** %11, align 8
  %172 = load %union.ccb*, %union.ccb** %4, align 8
  %173 = bitcast %union.ccb* %172 to %struct.TYPE_17__*
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 4
  store %struct.scb* %171, %struct.scb** %174, align 8
  %175 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  %176 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %175, i32 0, i32 0
  store i32 0, i32* %176, align 4
  %177 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %178 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @BUILD_SCSIID(%struct.ahc_softc* %177, %struct.cam_sim* %178, i32 %179, i32 %180)
  %182 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  %183 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 4
  %184 = load %union.ccb*, %union.ccb** %4, align 8
  %185 = bitcast %union.ccb* %184 to %struct.TYPE_17__*
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  %189 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load %union.ccb*, %union.ccb** %4, align 8
  %191 = bitcast %union.ccb* %190 to %struct.TYPE_17__*
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 131
  br i1 %194, label %195, label %210

195:                                              ; preds = %156
  %196 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  %197 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %196, i32 0, i32 2
  store i32 0, i32* %197, align 4
  %198 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %199 = load %struct.scb*, %struct.scb** %11, align 8
  %200 = getelementptr inbounds %struct.scb, %struct.scb* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load i32, i32* @MK_MESSAGE, align 4
  %204 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  %205 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  %208 = load %struct.scb*, %struct.scb** %11, align 8
  %209 = call i32 @ahc_execute_scb(%struct.scb* %208, i32* null, i32 0, i32 0)
  br label %308

210:                                              ; preds = %156
  %211 = load %union.ccb*, %union.ccb** %4, align 8
  %212 = bitcast %union.ccb* %211 to %struct.TYPE_17__*
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 138
  br i1 %215, label %216, label %284

216:                                              ; preds = %210
  %217 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  %218 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  store %struct.target_data* %219, %struct.target_data** %13, align 8
  %220 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %221 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %220, i32 0, i32 6
  %222 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %221, align 8
  %223 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %6, align 8
  %224 = icmp eq %struct.ahc_tmode_lstate* %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %216
  %226 = load i32, i32* @SCB_TARGET_IMMEDIATE, align 4
  %227 = load %struct.scb*, %struct.scb** %11, align 8
  %228 = getelementptr inbounds %struct.scb, %struct.scb* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %225, %216
  %232 = load i32, i32* @TARGET_SCB, align 4
  %233 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  %234 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* @SCB_TARGET_SCB, align 4
  %238 = load %struct.scb*, %struct.scb** %11, align 8
  %239 = getelementptr inbounds %struct.scb, %struct.scb* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  %242 = load %struct.target_data*, %struct.target_data** %13, align 8
  %243 = getelementptr inbounds %struct.target_data, %struct.target_data* %242, i32 0, i32 1
  store i32 0, i32* %243, align 4
  %244 = load %union.ccb*, %union.ccb** %4, align 8
  %245 = bitcast %union.ccb* %244 to %struct.TYPE_17__*
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @CAM_SEND_STATUS, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %231
  %252 = load i32, i32* @SPHASE_PENDING, align 4
  %253 = load %struct.target_data*, %struct.target_data** %13, align 8
  %254 = getelementptr inbounds %struct.target_data, %struct.target_data* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  %257 = load %union.ccb*, %union.ccb** %4, align 8
  %258 = bitcast %union.ccb* %257 to %struct.TYPE_16__*
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.target_data*, %struct.target_data** %13, align 8
  %262 = getelementptr inbounds %struct.target_data, %struct.target_data* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 4
  br label %263

263:                                              ; preds = %251, %231
  %264 = load %union.ccb*, %union.ccb** %4, align 8
  %265 = bitcast %union.ccb* %264 to %struct.TYPE_17__*
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @CAM_DIS_DISCONNECT, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %263
  %272 = load i32, i32* @NO_DISCONNECT, align 4
  %273 = load %struct.target_data*, %struct.target_data** %13, align 8
  %274 = getelementptr inbounds %struct.target_data, %struct.target_data* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %271, %263
  %278 = load %union.ccb*, %union.ccb** %4, align 8
  %279 = bitcast %union.ccb* %278 to %struct.TYPE_16__*
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.target_data*, %struct.target_data** %13, align 8
  %283 = getelementptr inbounds %struct.target_data, %struct.target_data* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 4
  br label %284

284:                                              ; preds = %277, %210
  %285 = load %union.ccb*, %union.ccb** %4, align 8
  %286 = bitcast %union.ccb* %285 to %struct.TYPE_17__*
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %284
  %293 = load %union.ccb*, %union.ccb** %4, align 8
  %294 = bitcast %union.ccb* %293 to %struct.TYPE_16__*
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  %298 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 4
  br label %301

301:                                              ; preds = %292, %284
  %302 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %303 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %304 = load %union.ccb*, %union.ccb** %4, align 8
  %305 = bitcast %union.ccb* %304 to %struct.TYPE_16__*
  %306 = load %struct.scb*, %struct.scb** %11, align 8
  %307 = call i32 @ahc_setup_data(%struct.ahc_softc* %302, %struct.cam_sim* %303, %struct.TYPE_16__* %305, %struct.scb* %306)
  br label %308

308:                                              ; preds = %301, %195
  br label %946

309:                                              ; preds = %2, %2
  %310 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %311 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %312 = load %union.ccb*, %union.ccb** %4, align 8
  %313 = load i32, i32* @TRUE, align 4
  %314 = call i8* @ahc_find_tmode_devs(%struct.ahc_softc* %310, %struct.cam_sim* %311, %union.ccb* %312, %struct.ahc_tmode_tstate** %14, %struct.ahc_tmode_lstate** %15, i32 %313)
  store i8* %314, i8** %16, align 8
  %315 = load i8*, i8** %16, align 8
  %316 = load i8*, i8** @CAM_REQ_CMP, align 8
  %317 = icmp ne i8* %315, %316
  br i1 %317, label %318, label %325

318:                                              ; preds = %309
  %319 = load i8*, i8** %16, align 8
  %320 = load %union.ccb*, %union.ccb** %4, align 8
  %321 = bitcast %union.ccb* %320 to %struct.TYPE_17__*
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 2
  store i8* %319, i8** %322, align 8
  %323 = load %union.ccb*, %union.ccb** %4, align 8
  %324 = call i32 @xpt_done(%union.ccb* %323)
  br label %946

325:                                              ; preds = %309
  %326 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %15, align 8
  %327 = getelementptr inbounds %struct.ahc_tmode_lstate, %struct.ahc_tmode_lstate* %326, i32 0, i32 0
  %328 = load %union.ccb*, %union.ccb** %4, align 8
  %329 = bitcast %union.ccb* %328 to %struct.TYPE_17__*
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sim_links, i32 0, i32 0), align 4
  %331 = call i32 @SLIST_INSERT_HEAD(i32* %327, %struct.TYPE_17__* %329, i32 %330)
  %332 = load i8*, i8** @CAM_REQ_INPROG, align 8
  %333 = load %union.ccb*, %union.ccb** %4, align 8
  %334 = bitcast %union.ccb* %333 to %struct.TYPE_17__*
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 2
  store i8* %332, i8** %335, align 8
  %336 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %337 = load %struct.ahc_tmode_lstate*, %struct.ahc_tmode_lstate** %15, align 8
  %338 = call i32 @ahc_send_lstate_events(%struct.ahc_softc* %336, %struct.ahc_tmode_lstate* %337)
  br label %946

339:                                              ; preds = %2
  %340 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %341 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %342 = load %union.ccb*, %union.ccb** %4, align 8
  %343 = call i32 @ahc_handle_en_lun(%struct.ahc_softc* %340, %struct.cam_sim* %341, %union.ccb* %342)
  %344 = load %union.ccb*, %union.ccb** %4, align 8
  %345 = call i32 @xpt_done(%union.ccb* %344)
  br label %946

346:                                              ; preds = %2
  %347 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %348 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %349 = load %union.ccb*, %union.ccb** %4, align 8
  %350 = call i32 @ahc_abort_ccb(%struct.ahc_softc* %347, %struct.cam_sim* %348, %union.ccb* %349)
  br label %946

351:                                              ; preds = %2
  %352 = load %union.ccb*, %union.ccb** %4, align 8
  %353 = bitcast %union.ccb* %352 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %353, %struct.ccb_trans_settings** %18, align 8
  %354 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %355 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %354, i32 0, i32 5
  %356 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %355, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %356, %struct.ccb_trans_settings_scsi** %19, align 8
  %357 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %358 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %359, %struct.ccb_trans_settings_spi** %20, align 8
  %360 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %361 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %362 = call i32 @SIM_SCSI_ID(%struct.ahc_softc* %360, %struct.cam_sim* %361)
  %363 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %364 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %368 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %372 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %373 = call i32 @SIM_CHANNEL(%struct.ahc_softc* %371, %struct.cam_sim* %372)
  %374 = load i32, i32* @ROLE_UNKNOWN, align 4
  %375 = call i32 @ahc_compile_devinfo(%struct.ahc_devinfo* %17, i32 %362, i32 %366, i32 %370, i32 %373, i32 %374)
  %376 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %377 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %17, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %17, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %17, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %376, i32 %378, i32 %380, i32 %382, %struct.ahc_tmode_tstate** %22)
  store %struct.ahc_initiator_tinfo* %383, %struct.ahc_initiator_tinfo** %21, align 8
  store i32 0, i32* %25, align 4
  %384 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %385 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %421

389:                                              ; preds = %351
  %390 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %391 = load i32, i32* %25, align 4
  %392 = or i32 %391, %390
  store i32 %392, i32* %25, align 4
  %393 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %22, align 8
  %394 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %393, i32 0, i32 1
  store i32* %394, i32** %23, align 8
  %395 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %22, align 8
  %396 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %395, i32 0, i32 0
  store i32* %396, i32** %24, align 8
  %397 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %398 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %401 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 1
  store i32 %399, i32* %402, align 4
  %403 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %404 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %407 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %406, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %407, i32 0, i32 0
  store i32 %405, i32* %408, align 4
  %409 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %410 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %413 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %413, i32 0, i32 4
  store i32 %411, i32* %414, align 4
  %415 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %416 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %419 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %419, i32 0, i32 3
  store i32 %417, i32* %420, align 4
  br label %455

421:                                              ; preds = %351
  %422 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %423 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @CTS_TYPE_USER_SETTINGS, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %447

427:                                              ; preds = %421
  %428 = load i32, i32* @AHC_TRANS_USER, align 4
  %429 = load i32, i32* %25, align 4
  %430 = or i32 %429, %428
  store i32 %430, i32* %25, align 4
  %431 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %432 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %431, i32 0, i32 5
  store i32* %432, i32** %23, align 8
  %433 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %434 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %433, i32 0, i32 4
  store i32* %434, i32** %24, align 8
  %435 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %436 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %439 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %439, i32 0, i32 4
  store i32 %437, i32* %440, align 4
  %441 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %18, align 8
  %442 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %445 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %445, i32 0, i32 3
  store i32 %443, i32* %446, align 4
  br label %454

447:                                              ; preds = %421
  %448 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %449 = load %union.ccb*, %union.ccb** %4, align 8
  %450 = bitcast %union.ccb* %449 to %struct.TYPE_17__*
  %451 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %450, i32 0, i32 2
  store i8* %448, i8** %451, align 8
  %452 = load %union.ccb*, %union.ccb** %4, align 8
  %453 = call i32 @xpt_done(%union.ccb* %452)
  br label %946

454:                                              ; preds = %427
  br label %455

455:                                              ; preds = %454, %389
  %456 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %457 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %483

462:                                              ; preds = %455
  %463 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %464 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %462
  %470 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %17, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = load i32*, i32** %23, align 8
  %473 = load i32, i32* %472, align 4
  %474 = or i32 %473, %471
  store i32 %474, i32* %472, align 4
  br label %482

475:                                              ; preds = %462
  %476 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %17, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = xor i32 %477, -1
  %479 = load i32*, i32** %23, align 8
  %480 = load i32, i32* %479, align 4
  %481 = and i32 %480, %478
  store i32 %481, i32* %479, align 4
  br label %482

482:                                              ; preds = %475, %469
  br label %483

483:                                              ; preds = %482, %455
  %484 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %19, align 8
  %485 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %511

490:                                              ; preds = %483
  %491 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %19, align 8
  %492 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %490
  %498 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %17, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = load i32*, i32** %24, align 8
  %501 = load i32, i32* %500, align 4
  %502 = or i32 %501, %499
  store i32 %502, i32* %500, align 4
  br label %510

503:                                              ; preds = %490
  %504 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %17, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = xor i32 %505, -1
  %507 = load i32*, i32** %24, align 8
  %508 = load i32, i32* %507, align 4
  %509 = and i32 %508, %506
  store i32 %509, i32* %507, align 4
  br label %510

510:                                              ; preds = %503, %497
  br label %511

511:                                              ; preds = %510, %483
  %512 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %513 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %531

518:                                              ; preds = %511
  %519 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %520 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %521 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %520, i32 0, i32 5
  %522 = load i32, i32* @ROLE_UNKNOWN, align 4
  %523 = call i32 @ahc_validate_width(%struct.ahc_softc* %519, i32* null, i32* %521, i32 %522)
  %524 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %525 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %526 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %525, i32 0, i32 5
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* %25, align 4
  %529 = load i32, i32* @FALSE, align 4
  %530 = call i32 @ahc_set_width(%struct.ahc_softc* %524, %struct.ahc_devinfo* %17, i32 %527, i32 %528, i32 %529)
  br label %531

531:                                              ; preds = %518, %511
  %532 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %533 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* @CTS_SPI_VALID_PPR_OPTIONS, align 4
  %536 = and i32 %534, %535
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %557

538:                                              ; preds = %531
  %539 = load i32, i32* %25, align 4
  %540 = load i32, i32* @AHC_TRANS_USER, align 4
  %541 = icmp eq i32 %539, %540
  br i1 %541, label %542, label %549

542:                                              ; preds = %538
  %543 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %544 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %544, i32 0, i32 2
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %548 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %547, i32 0, i32 2
  store i32 %546, i32* %548, align 4
  br label %556

549:                                              ; preds = %538
  %550 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %551 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %555 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %554, i32 0, i32 2
  store i32 %553, i32* %555, align 4
  br label %556

556:                                              ; preds = %549, %542
  br label %557

557:                                              ; preds = %556, %531
  %558 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %559 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %562 = and i32 %560, %561
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %583

564:                                              ; preds = %557
  %565 = load i32, i32* %25, align 4
  %566 = load i32, i32* @AHC_TRANS_USER, align 4
  %567 = icmp eq i32 %565, %566
  br i1 %567, label %568, label %575

568:                                              ; preds = %564
  %569 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %570 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 4
  %573 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %574 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %573, i32 0, i32 3
  store i32 %572, i32* %574, align 4
  br label %582

575:                                              ; preds = %564
  %576 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %577 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %581 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %580, i32 0, i32 3
  store i32 %579, i32* %581, align 4
  br label %582

582:                                              ; preds = %575, %568
  br label %583

583:                                              ; preds = %582, %557
  %584 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %585 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 4
  %587 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %588 = and i32 %586, %587
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %609

590:                                              ; preds = %583
  %591 = load i32, i32* %25, align 4
  %592 = load i32, i32* @AHC_TRANS_USER, align 4
  %593 = icmp eq i32 %591, %592
  br i1 %593, label %594, label %601

594:                                              ; preds = %590
  %595 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %596 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %595, i32 0, i32 1
  %597 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 4
  %599 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %600 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %599, i32 0, i32 4
  store i32 %598, i32* %600, align 4
  br label %608

601:                                              ; preds = %590
  %602 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %21, align 8
  %603 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %607 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %606, i32 0, i32 4
  store i32 %605, i32* %607, align 4
  br label %608

608:                                              ; preds = %601, %594
  br label %609

609:                                              ; preds = %608, %583
  %610 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %611 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 4
  %613 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %614 = and i32 %612, %613
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %623, label %616

616:                                              ; preds = %609
  %617 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %618 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 4
  %620 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %621 = and i32 %619, %620
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %698

623:                                              ; preds = %616, %609
  %624 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %625 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* @AHC_ULTRA2, align 4
  %628 = and i32 %626, %627
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %632

630:                                              ; preds = %623
  %631 = load i32, i32* @AHC_SYNCRATE_DT, align 4
  store i32 %631, i32* %27, align 4
  br label %644

632:                                              ; preds = %623
  %633 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %634 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* @AHC_ULTRA, align 4
  %637 = and i32 %635, %636
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %641

639:                                              ; preds = %632
  %640 = load i32, i32* @AHC_SYNCRATE_ULTRA, align 4
  store i32 %640, i32* %27, align 4
  br label %643

641:                                              ; preds = %632
  %642 = load i32, i32* @AHC_SYNCRATE_FAST, align 4
  store i32 %642, i32* %27, align 4
  br label %643

643:                                              ; preds = %641, %639
  br label %644

644:                                              ; preds = %643, %630
  %645 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %646 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %645, i32 0, i32 5
  %647 = load i32, i32* %646, align 4
  %648 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %649 = icmp ne i32 %647, %648
  br i1 %649, label %650, label %657

650:                                              ; preds = %644
  %651 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %652 = xor i32 %651, -1
  %653 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %654 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %653, i32 0, i32 2
  %655 = load i32, i32* %654, align 4
  %656 = and i32 %655, %652
  store i32 %656, i32* %654, align 4
  br label %657

657:                                              ; preds = %650, %644
  %658 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %659 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %660 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %659, i32 0, i32 4
  %661 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %662 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %661, i32 0, i32 2
  %663 = load i32, i32* %27, align 4
  %664 = call %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc* %658, i32* %660, i32* %662, i32 %663)
  store %struct.ahc_syncrate* %664, %struct.ahc_syncrate** %26, align 8
  %665 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %666 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %26, align 8
  %667 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %668 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %667, i32 0, i32 3
  %669 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %670 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %669, i32 0, i32 5
  %671 = load i32, i32* %670, align 4
  %672 = load i32, i32* @ROLE_UNKNOWN, align 4
  %673 = call i32 @ahc_validate_offset(%struct.ahc_softc* %665, i32* null, %struct.ahc_syncrate* %666, i32* %668, i32 %671, i32 %672)
  %674 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %675 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %674, i32 0, i32 3
  %676 = load i32, i32* %675, align 4
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %683

678:                                              ; preds = %657
  %679 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %680 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %679, i32 0, i32 4
  store i32 0, i32* %680, align 4
  %681 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %682 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %681, i32 0, i32 2
  store i32 0, i32* %682, align 4
  br label %683

683:                                              ; preds = %678, %657
  %684 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %685 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %26, align 8
  %686 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %687 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %686, i32 0, i32 4
  %688 = load i32, i32* %687, align 4
  %689 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %690 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %689, i32 0, i32 3
  %691 = load i32, i32* %690, align 4
  %692 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %20, align 8
  %693 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %692, i32 0, i32 2
  %694 = load i32, i32* %693, align 4
  %695 = load i32, i32* %25, align 4
  %696 = load i32, i32* @FALSE, align 4
  %697 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %684, %struct.ahc_devinfo* %17, %struct.ahc_syncrate* %685, i32 %688, i32 %691, i32 %694, i32 %695, i32 %696)
  br label %698

698:                                              ; preds = %683, %616
  %699 = load i8*, i8** @CAM_REQ_CMP, align 8
  %700 = load %union.ccb*, %union.ccb** %4, align 8
  %701 = bitcast %union.ccb* %700 to %struct.TYPE_17__*
  %702 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %701, i32 0, i32 2
  store i8* %699, i8** %702, align 8
  %703 = load %union.ccb*, %union.ccb** %4, align 8
  %704 = call i32 @xpt_done(%union.ccb* %703)
  br label %946

705:                                              ; preds = %2
  %706 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %707 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %708 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %709 = call i32 @SIM_SCSI_ID(%struct.ahc_softc* %707, %struct.cam_sim* %708)
  %710 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %711 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %712 = call i32 @SIM_CHANNEL(%struct.ahc_softc* %710, %struct.cam_sim* %711)
  %713 = load %union.ccb*, %union.ccb** %4, align 8
  %714 = bitcast %union.ccb* %713 to %struct.ccb_trans_settings*
  %715 = call i32 @ahc_get_tran_settings(%struct.ahc_softc* %706, i32 %709, i32 %712, %struct.ccb_trans_settings* %714)
  %716 = load %union.ccb*, %union.ccb** %4, align 8
  %717 = call i32 @xpt_done(%union.ccb* %716)
  br label %946

718:                                              ; preds = %2
  %719 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %720 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %721 = call i32 @SIM_IS_SCSIBUS_B(%struct.ahc_softc* %719, %struct.cam_sim* %720)
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %729

723:                                              ; preds = %718
  %724 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %725 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  %727 = load i32, i32* @AHC_EXTENDED_TRANS_B, align 4
  %728 = and i32 %726, %727
  br label %735

729:                                              ; preds = %718
  %730 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %731 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %730, i32 0, i32 0
  %732 = load i32, i32* %731, align 8
  %733 = load i32, i32* @AHC_EXTENDED_TRANS_A, align 4
  %734 = and i32 %732, %733
  br label %735

735:                                              ; preds = %729, %723
  %736 = phi i32 [ %728, %723 ], [ %734, %729 ]
  store i32 %736, i32* %28, align 4
  %737 = load %union.ccb*, %union.ccb** %4, align 8
  %738 = bitcast %union.ccb* %737 to i32*
  %739 = load i32, i32* %28, align 4
  %740 = call i32 @aic_calc_geometry(i32* %738, i32 %739)
  %741 = load %union.ccb*, %union.ccb** %4, align 8
  %742 = call i32 @xpt_done(%union.ccb* %741)
  br label %946

743:                                              ; preds = %2
  %744 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %745 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %746 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %747 = call i32 @SIM_CHANNEL(%struct.ahc_softc* %745, %struct.cam_sim* %746)
  %748 = load i32, i32* @TRUE, align 4
  %749 = call i32 @ahc_reset_channel(%struct.ahc_softc* %744, i32 %747, i32 %748)
  store i32 %749, i32* %29, align 4
  %750 = load i32, i32* @bootverbose, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %759

752:                                              ; preds = %743
  %753 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %754 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %755 = call i32 @SIM_PATH(%struct.ahc_softc* %753, %struct.cam_sim* %754)
  %756 = call i32 @xpt_print_path(i32 %755)
  %757 = load i32, i32* %29, align 4
  %758 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %757)
  br label %759

759:                                              ; preds = %752, %743
  %760 = load i8*, i8** @CAM_REQ_CMP, align 8
  %761 = load %union.ccb*, %union.ccb** %4, align 8
  %762 = bitcast %union.ccb* %761 to %struct.TYPE_17__*
  %763 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %762, i32 0, i32 2
  store i8* %760, i8** %763, align 8
  %764 = load %union.ccb*, %union.ccb** %4, align 8
  %765 = call i32 @xpt_done(%union.ccb* %764)
  br label %946

766:                                              ; preds = %2
  %767 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %768 = load %union.ccb*, %union.ccb** %4, align 8
  %769 = bitcast %union.ccb* %768 to %struct.TYPE_17__*
  %770 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %769, i32 0, i32 2
  store i8* %767, i8** %770, align 8
  %771 = load %union.ccb*, %union.ccb** %4, align 8
  %772 = call i32 @xpt_done(%union.ccb* %771)
  br label %946

773:                                              ; preds = %2
  %774 = load %union.ccb*, %union.ccb** %4, align 8
  %775 = bitcast %union.ccb* %774 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %775, %struct.ccb_pathinq** %30, align 8
  %776 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %777 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %776, i32 0, i32 0
  store i32 1, i32* %777, align 8
  %778 = load i32, i32* @PI_SDTR_ABLE, align 4
  %779 = load i32, i32* @PI_TAG_ABLE, align 4
  %780 = or i32 %778, %779
  %781 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %782 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %781, i32 0, i32 1
  store i32 %780, i32* %782, align 4
  %783 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %784 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %783, i32 0, i32 1
  %785 = load i32, i32* %784, align 4
  %786 = load i32, i32* @AHC_WIDE, align 4
  %787 = and i32 %785, %786
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %795

789:                                              ; preds = %773
  %790 = load i32, i32* @PI_WIDE_16, align 4
  %791 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %792 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %791, i32 0, i32 1
  %793 = load i32, i32* %792, align 4
  %794 = or i32 %793, %790
  store i32 %794, i32* %792, align 4
  br label %795

795:                                              ; preds = %789, %773
  %796 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %797 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %796, i32 0, i32 1
  %798 = load i32, i32* %797, align 4
  %799 = load i32, i32* @AHC_TARGETMODE, align 4
  %800 = and i32 %798, %799
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %810

802:                                              ; preds = %795
  %803 = load i32, i32* @PIT_PROCESSOR, align 4
  %804 = load i32, i32* @PIT_DISCONNECT, align 4
  %805 = or i32 %803, %804
  %806 = load i32, i32* @PIT_TERM_IO, align 4
  %807 = or i32 %805, %806
  %808 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %809 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %808, i32 0, i32 2
  store i32 %807, i32* %809, align 8
  br label %813

810:                                              ; preds = %795
  %811 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %812 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %811, i32 0, i32 2
  store i32 0, i32* %812, align 8
  br label %813

813:                                              ; preds = %810, %802
  %814 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %815 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %814, i32 0, i32 16
  store i32 0, i32* %815, align 4
  %816 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %817 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %816, i32 0, i32 19
  store i32 0, i32* %817, align 8
  %818 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %819 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %818, i32 0, i32 1
  %820 = load i32, i32* %819, align 4
  %821 = load i32, i32* @AHC_WIDE, align 4
  %822 = and i32 %820, %821
  %823 = icmp ne i32 %822, 0
  %824 = zext i1 %823 to i64
  %825 = select i1 %823, i32 15, i32 7
  %826 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %827 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %826, i32 0, i32 3
  store i32 %825, i32* %827, align 4
  %828 = load i32, i32* @AHC_NUM_LUNS, align 4
  %829 = sub nsw i32 %828, 1
  %830 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %831 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %830, i32 0, i32 18
  store i32 %829, i32* %831, align 4
  %832 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %833 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %834 = call i32 @SIM_IS_SCSIBUS_B(%struct.ahc_softc* %832, %struct.cam_sim* %833)
  %835 = icmp ne i32 %834, 0
  br i1 %835, label %836, label %855

836:                                              ; preds = %813
  %837 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %838 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %837, i32 0, i32 3
  %839 = load i32, i32* %838, align 4
  %840 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %841 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %840, i32 0, i32 17
  store i32 %839, i32* %841, align 8
  %842 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %843 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 8
  %845 = load i32, i32* @AHC_RESET_BUS_B, align 4
  %846 = and i32 %844, %845
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %848, label %854

848:                                              ; preds = %836
  %849 = load i32, i32* @PIM_NOBUSRESET, align 4
  %850 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %851 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %850, i32 0, i32 16
  %852 = load i32, i32* %851, align 4
  %853 = or i32 %852, %849
  store i32 %853, i32* %851, align 4
  br label %854

854:                                              ; preds = %848, %836
  br label %874

855:                                              ; preds = %813
  %856 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %857 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %856, i32 0, i32 2
  %858 = load i32, i32* %857, align 8
  %859 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %860 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %859, i32 0, i32 17
  store i32 %858, i32* %860, align 8
  %861 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %862 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %861, i32 0, i32 0
  %863 = load i32, i32* %862, align 8
  %864 = load i32, i32* @AHC_RESET_BUS_A, align 4
  %865 = and i32 %863, %864
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %867, label %873

867:                                              ; preds = %855
  %868 = load i32, i32* @PIM_NOBUSRESET, align 4
  %869 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %870 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %869, i32 0, i32 16
  %871 = load i32, i32* %870, align 4
  %872 = or i32 %871, %868
  store i32 %872, i32* %870, align 4
  br label %873

873:                                              ; preds = %867, %855
  br label %874

874:                                              ; preds = %873, %854
  %875 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %876 = call i32 @cam_sim_bus(%struct.cam_sim* %875)
  %877 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %878 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %877, i32 0, i32 15
  store i32 %876, i32* %878, align 8
  %879 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %880 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %879, i32 0, i32 4
  store i32 3300, i32* %880, align 8
  %881 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %882 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %881, i32 0, i32 14
  %883 = load i32, i32* %882, align 4
  %884 = load i32, i32* @SIM_IDLEN, align 4
  %885 = call i32 @strlcpy(i32 %883, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %884)
  %886 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %887 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %886, i32 0, i32 13
  %888 = load i32, i32* %887, align 8
  %889 = load i32, i32* @HBA_IDLEN, align 4
  %890 = call i32 @strlcpy(i32 %888, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %889)
  %891 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %892 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %891, i32 0, i32 12
  %893 = load i32, i32* %892, align 4
  %894 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %895 = call i8* @cam_sim_name(%struct.cam_sim* %894)
  %896 = load i32, i32* @DEV_IDLEN, align 4
  %897 = call i32 @strlcpy(i32 %893, i8* %895, i32 %896)
  %898 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %899 = call i32 @cam_sim_unit(%struct.cam_sim* %898)
  %900 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %901 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %900, i32 0, i32 11
  store i32 %899, i32* %901, align 8
  %902 = load i32, i32* @PROTO_SCSI, align 4
  %903 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %904 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %903, i32 0, i32 10
  store i32 %902, i32* %904, align 4
  %905 = load i32, i32* @SCSI_REV_2, align 4
  %906 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %907 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %906, i32 0, i32 9
  store i32 %905, i32* %907, align 8
  %908 = load i32, i32* @XPORT_SPI, align 4
  %909 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %910 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %909, i32 0, i32 8
  store i32 %908, i32* %910, align 4
  %911 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %912 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %911, i32 0, i32 5
  store i32 2, i32* %912, align 4
  %913 = load i32, i32* @SID_SPI_CLOCK_ST, align 4
  %914 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %915 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %914, i32 0, i32 7
  %916 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %915, i32 0, i32 0
  %917 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %916, i32 0, i32 0
  store i32 %913, i32* %917, align 8
  %918 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %919 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %918, i32 0, i32 1
  %920 = load i32, i32* %919, align 4
  %921 = load i32, i32* @AHC_DT, align 4
  %922 = and i32 %920, %921
  %923 = icmp ne i32 %922, 0
  br i1 %923, label %924, label %932

924:                                              ; preds = %874
  %925 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %926 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %925, i32 0, i32 5
  store i32 3, i32* %926, align 4
  %927 = load i32, i32* @SID_SPI_CLOCK_DT_ST, align 4
  %928 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %929 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %928, i32 0, i32 7
  %930 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %929, i32 0, i32 0
  %931 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %930, i32 0, i32 0
  store i32 %927, i32* %931, align 8
  br label %932

932:                                              ; preds = %924, %874
  %933 = load i8*, i8** @CAM_REQ_CMP, align 8
  %934 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %30, align 8
  %935 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %934, i32 0, i32 6
  %936 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %935, i32 0, i32 0
  store i8* %933, i8** %936, align 8
  %937 = load %union.ccb*, %union.ccb** %4, align 8
  %938 = call i32 @xpt_done(%union.ccb* %937)
  br label %946

939:                                              ; preds = %2
  %940 = load i8*, i8** @CAM_PROVIDE_FAIL, align 8
  %941 = load %union.ccb*, %union.ccb** %4, align 8
  %942 = bitcast %union.ccb* %941 to %struct.TYPE_17__*
  %943 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %942, i32 0, i32 2
  store i8* %940, i8** %943, align 8
  %944 = load %union.ccb*, %union.ccb** %4, align 8
  %945 = call i32 @xpt_done(%union.ccb* %944)
  br label %946

946:                                              ; preds = %131, %142, %939, %932, %766, %759, %735, %705, %698, %447, %346, %339, %325, %318, %308, %105, %70
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @SIM_SCSI_ID(%struct.ahc_softc*, %struct.cam_sim*) #1

declare dso_local i8* @ahc_find_tmode_devs(%struct.ahc_softc*, %struct.cam_sim*, %union.ccb*, %struct.ahc_tmode_tstate**, %struct.ahc_tmode_lstate**, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ahc_run_tqinfifo(%struct.ahc_softc*, i32) #1

declare dso_local %struct.scb* @ahc_get_scb(%struct.ahc_softc*) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

declare dso_local i32 @BUILD_SCSIID(%struct.ahc_softc*, %struct.cam_sim*, i32, i32) #1

declare dso_local i32 @ahc_execute_scb(%struct.scb*, i32*, i32, i32) #1

declare dso_local i32 @ahc_setup_data(%struct.ahc_softc*, %struct.cam_sim*, %struct.TYPE_16__*, %struct.scb*) #1

declare dso_local i32 @ahc_send_lstate_events(%struct.ahc_softc*, %struct.ahc_tmode_lstate*) #1

declare dso_local i32 @ahc_handle_en_lun(%struct.ahc_softc*, %struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @ahc_abort_ccb(%struct.ahc_softc*, %struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @ahc_compile_devinfo(%struct.ahc_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SIM_CHANNEL(%struct.ahc_softc*, %struct.cam_sim*) #1

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i32, i32, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i32 @ahc_validate_width(%struct.ahc_softc*, i32*, i32*, i32) #1

declare dso_local i32 @ahc_set_width(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32, i32) #1

declare dso_local %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc*, i32*, i32*, i32) #1

declare dso_local i32 @ahc_validate_offset(%struct.ahc_softc*, i32*, %struct.ahc_syncrate*, i32*, i32, i32) #1

declare dso_local i32 @ahc_set_syncrate(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_syncrate*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_get_tran_settings(%struct.ahc_softc*, i32, i32, %struct.ccb_trans_settings*) #1

declare dso_local i32 @SIM_IS_SCSIBUS_B(%struct.ahc_softc*, %struct.cam_sim*) #1

declare dso_local i32 @aic_calc_geometry(i32*, i32) #1

declare dso_local i32 @ahc_reset_channel(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @xpt_print_path(i32) #1

declare dso_local i32 @SIM_PATH(%struct.ahc_softc*, %struct.cam_sim*) #1

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
