; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_scsi_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_scsi_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_request = type { %struct.TYPE_4__*, %struct.tws_softc*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tws_softc = type { i32, i32 }

@TWS_BUSY_Q = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@TWS_FREE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_request*)* @tws_scsi_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_scsi_complete(%struct.tws_request* %0) #0 {
  %2 = alloca %struct.tws_request*, align 8
  %3 = alloca %struct.tws_softc*, align 8
  store %struct.tws_request* %0, %struct.tws_request** %2, align 8
  %4 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %5 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %4, i32 0, i32 1
  %6 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  store %struct.tws_softc* %6, %struct.tws_softc** %3, align 8
  %7 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %11 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %12 = load i32, i32* @TWS_BUSY_Q, align 4
  %13 = call i32 @tws_q_remove_request(%struct.tws_softc* %10, %struct.tws_request* %11, i32 %12)
  %14 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %15 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_unlock(i32* %15)
  %17 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %18 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %17, i32 0, i32 2
  %19 = call i32 @callout_stop(i32* %18)
  %20 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %21 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %20, i32 0, i32 1
  %22 = load %struct.tws_softc*, %struct.tws_softc** %21, align 8
  %23 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %24 = call i32 @tws_unmap_request(%struct.tws_softc* %22, %struct.tws_request* %23)
  %25 = load i32, i32* @CAM_REQ_CMP, align 4
  %26 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %27 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %32 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %31, i32 0, i32 1
  %33 = call i32 @mtx_lock(i32* %32)
  %34 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %35 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @xpt_done(%struct.TYPE_4__* %36)
  %38 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %39 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %38, i32 0, i32 1
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %42 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %41, i32 0, i32 0
  %43 = call i32 @mtx_lock(i32* %42)
  %44 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %45 = load %struct.tws_request*, %struct.tws_request** %2, align 8
  %46 = load i32, i32* @TWS_FREE_Q, align 4
  %47 = call i32 @tws_q_insert_tail(%struct.tws_softc* %44, %struct.tws_request* %45, i32 %46)
  %48 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %49 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %48, i32 0, i32 0
  %50 = call i32 @mtx_unlock(i32* %49)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @tws_q_remove_request(%struct.tws_softc*, %struct.tws_request*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @tws_unmap_request(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i32 @xpt_done(%struct.TYPE_4__*) #1

declare dso_local i32 @tws_q_insert_tail(%struct.tws_softc*, %struct.tws_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
