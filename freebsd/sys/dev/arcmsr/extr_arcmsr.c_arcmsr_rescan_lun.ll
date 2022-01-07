; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_rescan_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_rescan_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }
%struct.cam_path = type { i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CAM_REQ_CMP = common dso_local global i64 0, align 8
@XPT_SCAN_LUN = common dso_local global i32 0, align 4
@arcmsr_rescanLun_cb = common dso_local global i32 0, align 4
@CAM_FLAG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, i32, i32)* @arcmsr_rescan_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_rescan_lun(%struct.AdapterControlBlock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.AdapterControlBlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca %union.ccb*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i64 (...) @xpt_alloc_ccb_nowait()
  %10 = inttoptr i64 %9 to %union.ccb*
  store %union.ccb* %10, %union.ccb** %8, align 8
  %11 = icmp eq %union.ccb* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %47

13:                                               ; preds = %3
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %15 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cam_sim_path(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @xpt_create_path(%struct.cam_path** %7, i32* null, i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* @CAM_REQ_CMP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load %union.ccb*, %union.ccb** %8, align 8
  %25 = call i32 @xpt_free_ccb(%union.ccb* %24)
  br label %47

26:                                               ; preds = %13
  %27 = load %union.ccb*, %union.ccb** %8, align 8
  %28 = call i32 @bzero(%union.ccb* %27, i32 8)
  %29 = load %union.ccb*, %union.ccb** %8, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_4__*
  %31 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %32 = call i32 @xpt_setup_ccb(%struct.TYPE_4__* %30, %struct.cam_path* %31, i32 5)
  %33 = load i32, i32* @XPT_SCAN_LUN, align 4
  %34 = load %union.ccb*, %union.ccb** %8, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @arcmsr_rescanLun_cb, align 4
  %38 = load %union.ccb*, %union.ccb** %8, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @CAM_FLAG_NONE, align 4
  %42 = load %union.ccb*, %union.ccb** %8, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %union.ccb*, %union.ccb** %8, align 8
  %46 = call i32 @xpt_action(%union.ccb* %45)
  br label %47

47:                                               ; preds = %26, %23, %12
  ret void
}

declare dso_local i64 @xpt_alloc_ccb_nowait(...) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @bzero(%union.ccb*, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_4__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
