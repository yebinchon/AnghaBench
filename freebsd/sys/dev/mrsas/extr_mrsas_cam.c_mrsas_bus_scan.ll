; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_bus_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_cam.c_mrsas_bus_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@xpt_periph = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_bus_scan(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %union.ccb*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  %6 = call %union.ccb* (...) @xpt_alloc_ccb()
  store %union.ccb* %6, %union.ccb** %4, align 8
  %7 = icmp eq %union.ccb* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  store i32 %9, i32* %2, align 4
  br label %74

10:                                               ; preds = %1
  %11 = call %union.ccb* (...) @xpt_alloc_ccb()
  store %union.ccb* %11, %union.ccb** %5, align 8
  %12 = icmp eq %union.ccb* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = call i32 @xpt_free_ccb(%union.ccb* %14)
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %10
  %18 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %union.ccb*, %union.ccb** %4, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @xpt_periph, align 4
  %25 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cam_sim_path(i32 %27)
  %29 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %30 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %31 = call i64 @xpt_create_path(i32* %23, i32 %24, i32 %28, i32 %29, i32 %30)
  %32 = load i64, i64* @CAM_REQ_CMP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %17
  %35 = load %union.ccb*, %union.ccb** %4, align 8
  %36 = call i32 @xpt_free_ccb(%union.ccb* %35)
  %37 = load %union.ccb*, %union.ccb** %5, align 8
  %38 = call i32 @xpt_free_ccb(%union.ccb* %37)
  %39 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock(i32* %40)
  %42 = load i32, i32* @EIO, align 4
  store i32 %42, i32* %2, align 4
  br label %74

43:                                               ; preds = %17
  %44 = load %union.ccb*, %union.ccb** %5, align 8
  %45 = bitcast %union.ccb* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* @xpt_periph, align 4
  %48 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cam_sim_path(i32 %50)
  %52 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %53 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %54 = call i64 @xpt_create_path(i32* %46, i32 %47, i32 %51, i32 %52, i32 %53)
  %55 = load i64, i64* @CAM_REQ_CMP, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %43
  %58 = load %union.ccb*, %union.ccb** %4, align 8
  %59 = call i32 @xpt_free_ccb(%union.ccb* %58)
  %60 = load %union.ccb*, %union.ccb** %5, align 8
  %61 = call i32 @xpt_free_ccb(%union.ccb* %60)
  %62 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %63 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %62, i32 0, i32 0
  %64 = call i32 @mtx_unlock(i32* %63)
  %65 = load i32, i32* @EIO, align 4
  store i32 %65, i32* %2, align 4
  br label %74

66:                                               ; preds = %43
  %67 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %67, i32 0, i32 0
  %69 = call i32 @mtx_unlock(i32* %68)
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = call i32 @xpt_rescan(%union.ccb* %70)
  %72 = load %union.ccb*, %union.ccb** %5, align 8
  %73 = call i32 @xpt_rescan(%union.ccb* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %66, %57, %34, %13, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %union.ccb* @xpt_alloc_ccb(...) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_create_path(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
