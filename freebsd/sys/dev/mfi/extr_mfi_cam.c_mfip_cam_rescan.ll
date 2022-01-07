; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_cam_rescan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_cam_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mfip_softc = type { i64, %struct.cam_sim* }
%struct.cam_sim = type { i32 }

@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mfip\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't find mfip child device!\0A\00", align 1
@MFIP_STATE_DETACH = common dso_local global i64 0, align 8
@MFIP_STATE_RESCAN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot allocate ccb for bus rescan.\0A\00", align 1
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Cannot create path for bus rescan.\0A\00", align 1
@MFIP_STATE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfi_softc*, i32)* @mfip_cam_rescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfip_cam_rescan(%struct.mfi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.mfip_softc*, align 8
  %7 = alloca %struct.cam_sim*, align 8
  %8 = alloca i32*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @mtx_lock(i32* @Giant)
  %10 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @device_find_child(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %13, i32** %8, align 8
  %14 = call i32 @mtx_unlock(i32* @Giant)
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %85

22:                                               ; preds = %2
  %23 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %23, i32 0, i32 0
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call %struct.mfip_softc* @device_get_softc(i32* %26)
  store %struct.mfip_softc* %27, %struct.mfip_softc** %6, align 8
  %28 = load %struct.mfip_softc*, %struct.mfip_softc** %6, align 8
  %29 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MFIP_STATE_DETACH, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %34, i32 0, i32 0
  %36 = call i32 @mtx_unlock(i32* %35)
  br label %85

37:                                               ; preds = %22
  %38 = load i64, i64* @MFIP_STATE_RESCAN, align 8
  %39 = load %struct.mfip_softc*, %struct.mfip_softc** %6, align 8
  %40 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %41, %union.ccb** %5, align 8
  %42 = load %union.ccb*, %union.ccb** %5, align 8
  %43 = icmp eq %union.ccb* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %45, i32 0, i32 0
  %47 = call i32 @mtx_unlock(i32* %46)
  %48 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %85

52:                                               ; preds = %37
  %53 = load %struct.mfip_softc*, %struct.mfip_softc** %6, align 8
  %54 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %53, i32 0, i32 1
  %55 = load %struct.cam_sim*, %struct.cam_sim** %54, align 8
  store %struct.cam_sim* %55, %struct.cam_sim** %7, align 8
  %56 = load %union.ccb*, %union.ccb** %5, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.cam_sim*, %struct.cam_sim** %7, align 8
  %60 = call i32 @cam_sim_path(%struct.cam_sim* %59)
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %63 = call i64 @xpt_create_path(i32* %58, i32* null, i32 %60, i32 %61, i32 %62)
  %64 = load i64, i64* @CAM_REQ_CMP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %52
  %67 = load %union.ccb*, %union.ccb** %5, align 8
  %68 = call i32 @xpt_free_ccb(%union.ccb* %67)
  %69 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %70 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %69, i32 0, i32 0
  %71 = call i32 @mtx_unlock(i32* %70)
  %72 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %73 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %85

76:                                               ; preds = %52
  %77 = load %union.ccb*, %union.ccb** %5, align 8
  %78 = call i32 @xpt_rescan(%union.ccb* %77)
  %79 = load i64, i64* @MFIP_STATE_NONE, align 8
  %80 = load %struct.mfip_softc*, %struct.mfip_softc** %6, align 8
  %81 = getelementptr inbounds %struct.mfip_softc, %struct.mfip_softc* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %83 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %82, i32 0, i32 0
  %84 = call i32 @mtx_unlock(i32* %83)
  br label %85

85:                                               ; preds = %76, %66, %44, %33, %17
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.mfip_softc* @device_get_softc(i32*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
