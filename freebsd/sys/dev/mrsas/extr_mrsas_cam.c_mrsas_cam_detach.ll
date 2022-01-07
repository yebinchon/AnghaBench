; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_cam_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_cam_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i64, i64, i64, i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_cam_detach(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  %3 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @taskqueue_free(i32* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %22 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @xpt_free_path(i64 %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %27 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @cam_sim_path(i64 %33)
  %35 = call i32 @xpt_bus_deregister(i32 %34)
  %36 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %37 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @cam_sim_free(i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %25
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @xpt_free_path(i64 %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %53 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %58 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @cam_sim_path(i64 %59)
  %61 = call i32 @xpt_bus_deregister(i32 %60)
  %62 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %63 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @cam_sim_free(i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %51
  %68 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %69 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %68, i32 0, i32 0
  %70 = call i32 @mtx_unlock(i32* %69)
  ret void
}

declare dso_local i32 @taskqueue_free(i32*) #1

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
