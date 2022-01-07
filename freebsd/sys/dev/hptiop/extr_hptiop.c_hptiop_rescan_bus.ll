; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_rescan_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_rescan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*)* @hptiop_rescan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_rescan_bus(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpt_iop_hba*, align 8
  %4 = alloca %union.ccb*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %3, align 8
  %5 = call %union.ccb* (...) @xpt_alloc_ccb()
  store %union.ccb* %5, %union.ccb** %4, align 8
  %6 = icmp eq %union.ccb* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ENOMEM, align 4
  store i32 %8, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load %union.ccb*, %union.ccb** %4, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %14 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cam_sim_path(i32 %15)
  %17 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %18 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %19 = call i64 @xpt_create_path(i32* %12, i32* null, i32 %16, i32 %17, i32 %18)
  %20 = load i64, i64* @CAM_REQ_CMP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %9
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = call i32 @xpt_free_ccb(%union.ccb* %23)
  %25 = load i32, i32* @EIO, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %9
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = call i32 @xpt_rescan(%union.ccb* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %22, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %union.ccb* @xpt_alloc_ccb(...) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
