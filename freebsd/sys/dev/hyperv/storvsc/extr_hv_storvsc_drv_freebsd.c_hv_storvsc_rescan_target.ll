; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_hv_storvsc_rescan_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_hv_storvsc_rescan_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_softc = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to alloc CCB for rescan\0A\00", align 1
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"unable to create path for rescan, pathid: %u,targetid: %u\0A\00", align 1
@XPT_SCAN_BUS = common dso_local global i32 0, align 4
@XPT_SCAN_TGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.storvsc_softc*)* @hv_storvsc_rescan_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_storvsc_rescan_target(%struct.storvsc_softc* %0) #0 {
  %2 = alloca %struct.storvsc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.ccb*, align 8
  store %struct.storvsc_softc* %0, %struct.storvsc_softc** %2, align 8
  %6 = load %struct.storvsc_softc*, %struct.storvsc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.storvsc_softc, %struct.storvsc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @cam_sim_path(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  store i32 %10, i32* %4, align 4
  %11 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %11, %union.ccb** %5, align 8
  %12 = load %union.ccb*, %union.ccb** %5, align 8
  %13 = icmp eq %union.ccb* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %49

16:                                               ; preds = %1
  %17 = load %union.ccb*, %union.ccb** %5, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %23 = call i64 @xpt_create_path(i32* %19, i32* null, i32 %20, i32 %21, i32 %22)
  %24 = load i64, i64* @CAM_REQ_CMP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %union.ccb*, %union.ccb** %5, align 8
  %31 = call i32 @xpt_free_ccb(%union.ccb* %30)
  br label %49

32:                                               ; preds = %16
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @XPT_SCAN_BUS, align 4
  %38 = load %union.ccb*, %union.ccb** %5, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* @XPT_SCAN_TGT, align 4
  %43 = load %union.ccb*, %union.ccb** %5, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %union.ccb*, %union.ccb** %5, align 8
  %48 = call i32 @xpt_rescan(%union.ccb* %47)
  br label %49

49:                                               ; preds = %46, %26, %14
  ret void
}

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
