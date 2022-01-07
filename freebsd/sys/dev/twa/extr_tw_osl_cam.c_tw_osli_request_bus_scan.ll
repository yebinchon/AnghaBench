; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_request_bus_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osli_request_bus_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"entering\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osli_request_bus_scan(%struct.twa_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twa_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  store %struct.twa_softc* %0, %struct.twa_softc** %3, align 8
  %5 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %6 = call i32 @tw_osli_dbg_dprintf(i32 3, %struct.twa_softc* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %8 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = call %union.ccb* (...) @xpt_alloc_ccb()
  store %union.ccb* %14, %union.ccb** %4, align 8
  %15 = icmp eq %union.ccb* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %13
  %19 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %20 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mtx_lock(i32 %21)
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %27 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cam_sim_path(i32 %28)
  %30 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %31 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %32 = call i64 @xpt_create_path(i32* %25, i32* null, i32 %29, i32 %30, i32 %31)
  %33 = load i64, i64* @CAM_REQ_CMP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %18
  %36 = load %union.ccb*, %union.ccb** %4, align 8
  %37 = call i32 @xpt_free_ccb(%union.ccb* %36)
  %38 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %39 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mtx_unlock(i32 %40)
  %42 = load i32, i32* @EIO, align 4
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %18
  %44 = load %union.ccb*, %union.ccb** %4, align 8
  %45 = call i32 @xpt_rescan(%union.ccb* %44)
  %46 = load %struct.twa_softc*, %struct.twa_softc** %3, align 8
  %47 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mtx_unlock(i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %35, %16, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb(...) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
