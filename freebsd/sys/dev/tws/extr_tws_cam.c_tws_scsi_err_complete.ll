; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_scsi_err_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_scsi_err_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_request = type { %struct.tws_softc*, i32, %struct.TYPE_13__*, %union.ccb* }
%struct.tws_softc = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%union.ccb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.tws_command_header = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"sbe, cmd_status\00", align 1
@TWS_ERROR_LOGICAL_UNIT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@TWS_ERROR_UNIT_OFFLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid lun error\00", align 1
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid target error\00", align 1
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"scsi status  error\00", align 1
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@TWS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"page mode not supported\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@TWS_SENSE_DATA_LENGTH = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@TWS_BUSY_Q = common dso_local global i32 0, align 4
@TWS_FREE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_request*, %struct.tws_command_header*)* @tws_scsi_err_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_scsi_err_complete(%struct.tws_request* %0, %struct.tws_command_header* %1) #0 {
  %3 = alloca %struct.tws_request*, align 8
  %4 = alloca %struct.tws_command_header*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tws_softc*, align 8
  %7 = alloca %union.ccb*, align 8
  store %struct.tws_request* %0, %struct.tws_request** %3, align 8
  store %struct.tws_command_header* %1, %struct.tws_command_header** %4, align 8
  %8 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %9 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %8, i32 0, i32 0
  %10 = load %struct.tws_softc*, %struct.tws_softc** %9, align 8
  store %struct.tws_softc* %10, %struct.tws_softc** %6, align 8
  %11 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %12 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %11, i32 0, i32 3
  %13 = load %union.ccb*, %union.ccb** %12, align 8
  store %union.ccb* %13, %union.ccb** %7, align 8
  %14 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %15 = load %struct.tws_command_header*, %struct.tws_command_header** %4, align 8
  %16 = getelementptr inbounds %struct.tws_command_header, %struct.tws_command_header* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %20 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %19, i32 0, i32 2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %25)
  %27 = load %struct.tws_command_header*, %struct.tws_command_header** %4, align 8
  %28 = getelementptr inbounds %struct.tws_command_header, %struct.tws_command_header* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TWS_ERROR_LOGICAL_UNIT_NOT_SUPPORTED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %2
  %34 = load %struct.tws_command_header*, %struct.tws_command_header** %4, align 8
  %35 = getelementptr inbounds %struct.tws_command_header, %struct.tws_command_header* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TWS_ERROR_UNIT_OFFLINE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %33, %2
  %41 = load %union.ccb*, %union.ccb** %7, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_14__*
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %48 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %49 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %50 = load %union.ccb*, %union.ccb** %7, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_14__*
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  br label %64

55:                                               ; preds = %40
  %56 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %57 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %58 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %59 = load %union.ccb*, %union.ccb** %7, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_14__*
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %55, %46
  br label %101

65:                                               ; preds = %33
  %66 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %67 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  %68 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %69 = load %union.ccb*, %union.ccb** %7, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_14__*
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 8
  %74 = load %union.ccb*, %union.ccb** %7, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_10__*
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 26
  br i1 %81, label %82, label %100

82:                                               ; preds = %65
  %83 = load %struct.tws_command_header*, %struct.tws_command_header** %4, align 8
  %84 = getelementptr inbounds %struct.tws_command_header, %struct.tws_command_header* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TWS_ERROR_NOT_SUPPORTED, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %91 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %92 = or i32 %90, %91
  %93 = load %union.ccb*, %union.ccb** %7, align 8
  %94 = bitcast %union.ccb* %93 to %struct.TYPE_14__*
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %99 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  br label %100

100:                                              ; preds = %89, %82, %65
  br label %101

101:                                              ; preds = %100, %64
  %102 = load %union.ccb*, %union.ccb** %7, align 8
  %103 = bitcast %union.ccb* %102 to %struct.TYPE_14__*
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %109 = load %union.ccb*, %union.ccb** %7, align 8
  %110 = bitcast %union.ccb* %109 to %struct.TYPE_14__*
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  br label %112

112:                                              ; preds = %107, %101
  %113 = load %union.ccb*, %union.ccb** %7, align 8
  %114 = bitcast %union.ccb* %113 to %struct.TYPE_10__*
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  store i32* %115, i32** %5, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %112
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.tws_command_header*, %struct.tws_command_header** %4, align 8
  %121 = getelementptr inbounds %struct.tws_command_header, %struct.tws_command_header* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TWS_SENSE_DATA_LENGTH, align 4
  %124 = call i32 @memcpy(i32* %119, i32 %122, i32 %123)
  %125 = load i32, i32* @TWS_SENSE_DATA_LENGTH, align 4
  %126 = load %union.ccb*, %union.ccb** %7, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_10__*
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %130 = load %union.ccb*, %union.ccb** %7, align 8
  %131 = bitcast %union.ccb* %130 to %struct.TYPE_14__*
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %118, %112
  %136 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %137 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %136, i32 0, i32 2
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %union.ccb*, %union.ccb** %7, align 8
  %144 = bitcast %union.ccb* %143 to %struct.TYPE_10__*
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %147 = xor i32 %146, -1
  %148 = load %union.ccb*, %union.ccb** %7, align 8
  %149 = bitcast %union.ccb* %148 to %struct.TYPE_14__*
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %147
  store i32 %152, i32* %150, align 8
  %153 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %154 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %153, i32 0, i32 1
  %155 = call i32 @mtx_lock(i32* %154)
  %156 = load %union.ccb*, %union.ccb** %7, align 8
  %157 = call i32 @xpt_done(%union.ccb* %156)
  %158 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %159 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %158, i32 0, i32 1
  %160 = call i32 @mtx_unlock(i32* %159)
  %161 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %162 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %161, i32 0, i32 1
  %163 = call i32 @callout_stop(i32* %162)
  %164 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %165 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %164, i32 0, i32 0
  %166 = load %struct.tws_softc*, %struct.tws_softc** %165, align 8
  %167 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %168 = call i32 @tws_unmap_request(%struct.tws_softc* %166, %struct.tws_request* %167)
  %169 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %170 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %169, i32 0, i32 0
  %171 = call i32 @mtx_lock(i32* %170)
  %172 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %173 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %174 = load i32, i32* @TWS_BUSY_Q, align 4
  %175 = call i32 @tws_q_remove_request(%struct.tws_softc* %172, %struct.tws_request* %173, i32 %174)
  %176 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %177 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %178 = load i32, i32* @TWS_FREE_Q, align 4
  %179 = call i32 @tws_q_insert_tail(%struct.tws_softc* %176, %struct.tws_request* %177, i32 %178)
  %180 = load %struct.tws_softc*, %struct.tws_softc** %6, align 8
  %181 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %180, i32 0, i32 0
  %182 = call i32 @mtx_unlock(i32* %181)
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @tws_unmap_request(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i32 @tws_q_remove_request(%struct.tws_softc*, %struct.tws_request*, i32) #1

declare dso_local i32 @tws_q_insert_tail(%struct.tws_softc*, %struct.tws_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
