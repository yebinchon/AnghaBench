; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_drain_busy_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_drain_busy_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32 }
%struct.tws_request = type { i64, i32, i32, i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@TWS_BUSY_Q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"moved to TWS_COMPLETE_Q\00", align 1
@TWS_REQ_RET_RESET = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@TWS_FREE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_softc*)* @tws_drain_busy_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_drain_busy_queue(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  %3 = alloca %struct.tws_request*, align 8
  %4 = alloca %union.ccb*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  %5 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %6 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %7 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %8 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %11 = load i32, i32* @TWS_BUSY_Q, align 4
  %12 = call %struct.tws_request* @tws_q_remove_tail(%struct.tws_softc* %10, i32 %11)
  store %struct.tws_request* %12, %struct.tws_request** %3, align 8
  %13 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %14 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_unlock(i32* %14)
  br label %16

16:                                               ; preds = %19, %1
  %17 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %18 = icmp ne %struct.tws_request* %17, null
  br i1 %18, label %19, label %82

19:                                               ; preds = %16
  %20 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %21 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %22 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %23)
  %25 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %26 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %25, i32 0, i32 3
  %27 = call i32 @callout_stop(i32* %26)
  %28 = load i32, i32* @TWS_REQ_RET_RESET, align 4
  %29 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %30 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %32 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %union.ccb*
  store %union.ccb* %34, %union.ccb** %4, align 8
  %35 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %36 = xor i32 %35, -1
  %37 = load %union.ccb*, %union.ccb** %4, align 8
  %38 = bitcast %union.ccb* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %49 = load %union.ccb*, %union.ccb** %4, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %55 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %58 = call i32 @tws_unmap_request(i32 %56, %struct.tws_request* %57)
  %59 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %60 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %59, i32 0, i32 1
  %61 = call i32 @mtx_lock(i32* %60)
  %62 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %63 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @xpt_done(i64 %64)
  %66 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %67 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %66, i32 0, i32 1
  %68 = call i32 @mtx_unlock(i32* %67)
  %69 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %70 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %69, i32 0, i32 0
  %71 = call i32 @mtx_lock(i32* %70)
  %72 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %73 = load %struct.tws_request*, %struct.tws_request** %3, align 8
  %74 = load i32, i32* @TWS_FREE_Q, align 4
  %75 = call i32 @tws_q_insert_tail(%struct.tws_softc* %72, %struct.tws_request* %73, i32 %74)
  %76 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %77 = load i32, i32* @TWS_BUSY_Q, align 4
  %78 = call %struct.tws_request* @tws_q_remove_tail(%struct.tws_softc* %76, i32 %77)
  store %struct.tws_request* %78, %struct.tws_request** %3, align 8
  %79 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %80 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %79, i32 0, i32 0
  %81 = call i32 @mtx_unlock(i32* %80)
  br label %16

82:                                               ; preds = %16
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.tws_request* @tws_q_remove_tail(%struct.tws_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @tws_unmap_request(i32, %struct.tws_request*) #1

declare dso_local i32 @xpt_done(i64) #1

declare dso_local i32 @tws_q_insert_tail(%struct.tws_softc*, %struct.tws_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
