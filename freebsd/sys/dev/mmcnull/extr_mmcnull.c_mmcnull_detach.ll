; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmcnull/extr_mmcnull.c_mmcnull_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcnull_softc = type { i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"detached OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mmcnull_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcnull_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmcnull_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mmcnull_softc* @device_get_softc(i32 %5)
  store %struct.mmcnull_softc* %6, %struct.mmcnull_softc** %4, align 8
  %7 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %8 = icmp eq %struct.mmcnull_softc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @cam_sim_path(i32* %22)
  %24 = call i32 @xpt_bus_deregister(i32 %23)
  %25 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @cam_sim_free(i32* %27, i32 %28)
  %30 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %31 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %30, i32 0, i32 0
  %32 = call i32 @mtx_unlock(i32* %31)
  br label %33

33:                                               ; preds = %16, %11
  %34 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %40 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @cam_simq_free(i32* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %44, i32 0, i32 1
  %46 = call i32 @callout_drain(i32* %45)
  %47 = load %struct.mmcnull_softc*, %struct.mmcnull_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mmcnull_softc, %struct.mmcnull_softc* %47, i32 0, i32 0
  %49 = call i32 @mtx_destroy(i32* %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.mmcnull_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cam_simq_free(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
