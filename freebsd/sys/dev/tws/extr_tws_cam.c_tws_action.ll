; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %union.ccb* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, i8*, i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%union.ccb = type { %struct.TYPE_14__ }
%struct.tws_softc = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"execute scsi failed\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"abort i/o\00", align 1
@CAM_UA_ABORT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"reset bus\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"set tran settings\00", align 1
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"get tran settings\00", align 1
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_2 = common dso_local global i8* null, align 8
@XPORT_SPI = common dso_local global i8* null, align 8
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"calc geometry(ccb,block-size)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"path inquiry\00", align 1
@TWS_MAX_NUM_UNITS = common dso_local global i32 0, align 4
@TWS_MAX_NUM_LUNS = common dso_local global i32 0, align 4
@TWS_SCSI_INITIATOR_ID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"3ware\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@TWS_MAX_IO_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @tws_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.tws_softc*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %6 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %7 = bitcast %struct.cam_sim* %6 to %union.ccb*
  %8 = call i64 @cam_sim_softc(%union.ccb* %7)
  %9 = inttoptr i64 %8 to %struct.tws_softc*
  store %struct.tws_softc* %9, %struct.tws_softc** %5, align 8
  %10 = load %union.ccb*, %union.ccb** %4, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_15__*
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %209 [
    i32 129, label %14
    i32 134, label %23
    i32 130, label %32
    i32 128, label %38
    i32 132, label %50
    i32 133, label %101
    i32 131, label %114
  ]

14:                                               ; preds = %2
  %15 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %16 = load %union.ccb*, %union.ccb** %4, align 8
  %17 = call i32 @tws_execute_scsi(%struct.tws_softc* %15, %union.ccb* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %21 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %union.ccb* null, %union.ccb* null)
  br label %22

22:                                               ; preds = %19, %14
  br label %221

23:                                               ; preds = %2
  %24 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %25 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %union.ccb* null, %union.ccb* null)
  %26 = load i8*, i8** @CAM_UA_ABORT, align 8
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_15__*
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = call i32 @xpt_done(%union.ccb* %30)
  br label %221

32:                                               ; preds = %2
  %33 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %34 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %35 = bitcast %struct.cam_sim* %34 to %union.ccb*
  %36 = load %union.ccb*, %union.ccb** %4, align 8
  %37 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %union.ccb* %35, %union.ccb* %36)
  br label %221

38:                                               ; preds = %2
  %39 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %40 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %41 = bitcast %struct.cam_sim* %40 to %union.ccb*
  %42 = load %union.ccb*, %union.ccb** %4, align 8
  %43 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %union.ccb* %41, %union.ccb* %42)
  %44 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %45 = load %union.ccb*, %union.ccb** %4, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_15__*
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %union.ccb*, %union.ccb** %4, align 8
  %49 = call i32 @xpt_done(%union.ccb* %48)
  br label %221

50:                                               ; preds = %2
  %51 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %52 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %53 = bitcast %struct.cam_sim* %52 to %union.ccb*
  %54 = load %union.ccb*, %union.ccb** %4, align 8
  %55 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %union.ccb* %53, %union.ccb* %54)
  %56 = load i8*, i8** @PROTO_SCSI, align 8
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_13__*
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 5
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** @SCSI_REV_2, align 8
  %61 = load %union.ccb*, %union.ccb** %4, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_13__*
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @XPORT_SPI, align 8
  %65 = load %union.ccb*, %union.ccb** %4, align 8
  %66 = bitcast %union.ccb* %65 to %struct.TYPE_13__*
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  store i8* %64, i8** %67, align 8
  %68 = load %union.ccb*, %union.ccb** %4, align 8
  %69 = bitcast %union.ccb* %68 to %struct.TYPE_13__*
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 2, i32* %70, align 8
  %71 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %72 = load %union.ccb*, %union.ccb** %4, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_13__*
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %78 = load %union.ccb*, %union.ccb** %4, align 8
  %79 = bitcast %union.ccb* %78 to %struct.TYPE_13__*
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %84 = load %union.ccb*, %union.ccb** %4, align 8
  %85 = bitcast %union.ccb* %84 to %struct.TYPE_13__*
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %90 = load %union.ccb*, %union.ccb** %4, align 8
  %91 = bitcast %union.ccb* %90 to %struct.TYPE_13__*
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 %89, i32* %94, align 4
  %95 = load i8*, i8** @CAM_REQ_CMP, align 8
  %96 = load %union.ccb*, %union.ccb** %4, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_15__*
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  %99 = load %union.ccb*, %union.ccb** %4, align 8
  %100 = call i32 @xpt_done(%union.ccb* %99)
  br label %221

101:                                              ; preds = %2
  %102 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %103 = load %union.ccb*, %union.ccb** %4, align 8
  %104 = load %union.ccb*, %union.ccb** %4, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_16__*
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load %union.ccb*, %union.ccb** %106, align 8
  %108 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %union.ccb* %103, %union.ccb* %107)
  %109 = load %union.ccb*, %union.ccb** %4, align 8
  %110 = bitcast %union.ccb* %109 to %struct.TYPE_16__*
  %111 = call i32 @cam_calc_geometry(%struct.TYPE_16__* %110, i32 1)
  %112 = load %union.ccb*, %union.ccb** %4, align 8
  %113 = call i32 @xpt_done(%union.ccb* %112)
  br label %221

114:                                              ; preds = %2
  %115 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %116 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %117 = bitcast %struct.cam_sim* %116 to %union.ccb*
  %118 = load %union.ccb*, %union.ccb** %4, align 8
  %119 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %union.ccb* %117, %union.ccb* %118)
  %120 = load %union.ccb*, %union.ccb** %4, align 8
  %121 = bitcast %union.ccb* %120 to %struct.TYPE_14__*
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %union.ccb*, %union.ccb** %4, align 8
  %124 = bitcast %union.ccb* %123 to %struct.TYPE_14__*
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 18
  store i32 0, i32* %125, align 4
  %126 = load %union.ccb*, %union.ccb** %4, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_14__*
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 17
  store i32 0, i32* %128, align 8
  %129 = load %union.ccb*, %union.ccb** %4, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_14__*
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 16
  store i32 0, i32* %131, align 4
  %132 = load %union.ccb*, %union.ccb** %4, align 8
  %133 = bitcast %union.ccb* %132 to %struct.TYPE_14__*
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 15
  store i32 0, i32* %134, align 8
  %135 = load i32, i32* @TWS_MAX_NUM_UNITS, align 4
  %136 = load %union.ccb*, %union.ccb** %4, align 8
  %137 = bitcast %union.ccb* %136 to %struct.TYPE_14__*
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 14
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @TWS_MAX_NUM_LUNS, align 4
  %140 = sub nsw i32 %139, 1
  %141 = load %union.ccb*, %union.ccb** %4, align 8
  %142 = bitcast %union.ccb* %141 to %struct.TYPE_14__*
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 13
  store i32 %140, i32* %143, align 8
  %144 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %145 = bitcast %struct.cam_sim* %144 to %union.ccb*
  %146 = call i32 @cam_sim_unit(%union.ccb* %145)
  %147 = load %union.ccb*, %union.ccb** %4, align 8
  %148 = bitcast %union.ccb* %147 to %struct.TYPE_14__*
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 12
  store i32 %146, i32* %149, align 4
  %150 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %151 = bitcast %struct.cam_sim* %150 to %union.ccb*
  %152 = call i32 @cam_sim_bus(%union.ccb* %151)
  %153 = load %union.ccb*, %union.ccb** %4, align 8
  %154 = bitcast %union.ccb* %153 to %struct.TYPE_14__*
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 11
  store i32 %152, i32* %155, align 8
  %156 = load i32, i32* @TWS_SCSI_INITIATOR_ID, align 4
  %157 = load %union.ccb*, %union.ccb** %4, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_14__*
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 10
  store i32 %156, i32* %159, align 4
  %160 = load %union.ccb*, %union.ccb** %4, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_14__*
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  store i32 6000000, i32* %162, align 4
  %163 = load %union.ccb*, %union.ccb** %4, align 8
  %164 = bitcast %union.ccb* %163 to %struct.TYPE_14__*
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @SIM_IDLEN, align 4
  %168 = call i32 @strlcpy(i32 %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %167)
  %169 = load %union.ccb*, %union.ccb** %4, align 8
  %170 = bitcast %union.ccb* %169 to %struct.TYPE_14__*
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @HBA_IDLEN, align 4
  %174 = call i32 @strlcpy(i32 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %173)
  %175 = load %union.ccb*, %union.ccb** %4, align 8
  %176 = bitcast %union.ccb* %175 to %struct.TYPE_14__*
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %180 = bitcast %struct.cam_sim* %179 to %union.ccb*
  %181 = call i8* @cam_sim_name(%union.ccb* %180)
  %182 = load i32, i32* @DEV_IDLEN, align 4
  %183 = call i32 @strlcpy(i32 %178, i8* %181, i32 %182)
  %184 = load i8*, i8** @XPORT_SPI, align 8
  %185 = load %union.ccb*, %union.ccb** %4, align 8
  %186 = bitcast %union.ccb* %185 to %struct.TYPE_14__*
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 6
  store i8* %184, i8** %187, align 8
  %188 = load %union.ccb*, %union.ccb** %4, align 8
  %189 = bitcast %union.ccb* %188 to %struct.TYPE_14__*
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  store i32 2, i32* %190, align 8
  %191 = load i8*, i8** @PROTO_SCSI, align 8
  %192 = load %union.ccb*, %union.ccb** %4, align 8
  %193 = bitcast %union.ccb* %192 to %struct.TYPE_14__*
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 5
  store i8* %191, i8** %194, align 8
  %195 = load i8*, i8** @SCSI_REV_2, align 8
  %196 = load %union.ccb*, %union.ccb** %4, align 8
  %197 = bitcast %union.ccb* %196 to %struct.TYPE_14__*
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 4
  store i8* %195, i8** %198, align 8
  %199 = load i32, i32* @TWS_MAX_IO_SIZE, align 4
  %200 = load %union.ccb*, %union.ccb** %4, align 8
  %201 = bitcast %union.ccb* %200 to %struct.TYPE_14__*
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 3
  store i32 %199, i32* %202, align 4
  %203 = load i8*, i8** @CAM_REQ_CMP, align 8
  %204 = load %union.ccb*, %union.ccb** %4, align 8
  %205 = bitcast %union.ccb* %204 to %struct.TYPE_15__*
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  store i8* %203, i8** %206, align 8
  %207 = load %union.ccb*, %union.ccb** %4, align 8
  %208 = call i32 @xpt_done(%union.ccb* %207)
  br label %221

209:                                              ; preds = %2
  %210 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %211 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %212 = bitcast %struct.cam_sim* %211 to %union.ccb*
  %213 = load %union.ccb*, %union.ccb** %4, align 8
  %214 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %union.ccb* %212, %union.ccb* %213)
  %215 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %216 = load %union.ccb*, %union.ccb** %4, align 8
  %217 = bitcast %union.ccb* %216 to %struct.TYPE_15__*
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  store i8* %215, i8** %218, align 8
  %219 = load %union.ccb*, %union.ccb** %4, align 8
  %220 = call i32 @xpt_done(%union.ccb* %219)
  br label %221

221:                                              ; preds = %209, %114, %101, %50, %38, %32, %23, %22
  ret void
}

declare dso_local i64 @cam_sim_softc(%union.ccb*) #1

declare dso_local i32 @tws_execute_scsi(%struct.tws_softc*, %union.ccb*) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, %union.ccb*, %union.ccb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @cam_calc_geometry(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @cam_sim_unit(%union.ccb*) #1

declare dso_local i32 @cam_sim_bus(%union.ccb*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
