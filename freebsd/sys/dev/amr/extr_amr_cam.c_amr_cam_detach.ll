; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32*, i32, i32** }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amr_cam_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_cam_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.amr_softc* @device_get_softc(i32 %5)
  store %struct.amr_softc* %6, %struct.amr_softc** %3, align 8
  %7 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %8 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %7, i32 0, i32 2
  %9 = call i32 @mtx_lock(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %45, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %13 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %18 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %16
  %26 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %27 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %26, i32 0, i32 3
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @cam_sim_path(i32* %32)
  %34 = call i32 @xpt_bus_deregister(i32 %33)
  %35 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %36 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %35, i32 0, i32 3
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @cam_sim_free(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %25, %16
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %10

48:                                               ; preds = %10
  %49 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %50 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %49, i32 0, i32 2
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %53 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %58 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @cam_simq_free(i32* %59)
  br label %61

61:                                               ; preds = %56, %48
  ret i32 0
}

declare dso_local %struct.amr_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cam_simq_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
