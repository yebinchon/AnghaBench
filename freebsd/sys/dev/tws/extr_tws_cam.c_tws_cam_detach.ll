; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_cam_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_cam_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_cam_detach(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  %3 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %4 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %5 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %6 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %5, i32 0, i32 0
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %9 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %14 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @xpt_free_path(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %19 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %24 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @cam_sim_path(i64 %25)
  %27 = call i32 @xpt_bus_deregister(i32 %26)
  %28 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %29 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @cam_sim_free(i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %17
  %34 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %35 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %34, i32 0, i32 0
  %36 = call i32 @mtx_unlock(i32* %35)
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_free_path(i64) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i64) #1

declare dso_local i32 @cam_sim_free(i64, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
