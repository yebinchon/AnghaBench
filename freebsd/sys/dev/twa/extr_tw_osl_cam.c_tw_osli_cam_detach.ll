; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_cam_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_cam_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i32, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osli_cam_detach(%struct.twa_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twa_softc*, align 8
  store %struct.twa_softc* %0, %struct.twa_softc** %3, align 8
  %4 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %5 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %7 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @mtx_lock(i32 %8)
  %10 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %11 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %16 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @xpt_free_path(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %21 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %26 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @cam_sim_path(i64 %27)
  %29 = call i32 @xpt_bus_deregister(i32 %28)
  %30 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %31 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @cam_sim_free(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %24, %19
  %36 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %37 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mtx_destroy(i32 %38)
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @xpt_free_path(i64) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i64) #1

declare dso_local i32 @cam_sim_free(i64, i32) #1

declare dso_local i32 @mtx_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
