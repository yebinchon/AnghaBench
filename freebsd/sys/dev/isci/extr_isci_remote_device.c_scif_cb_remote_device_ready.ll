; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_remote_device.c_scif_cb_remote_device_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_remote_device.c_scif_cb_remote_device_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_REMOTE_DEVICE = type { i64 }
%struct.ISCI_CONTROLLER = type { i32, i64, %struct.ISCI_REMOTE_DEVICE** }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_remote_device_ready(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %8 = alloca %struct.ISCI_CONTROLLER*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.ccb*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @sci_object_get_association(i32 %11)
  %13 = bitcast i8* %12 to %struct.ISCI_REMOTE_DEVICE*
  store %struct.ISCI_REMOTE_DEVICE* %13, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @sci_object_get_association(i32 %14)
  %16 = bitcast i8* %15 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %16, %struct.ISCI_CONTROLLER** %8, align 8
  %17 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %18 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %21 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %20, i32 0, i32 2
  %22 = load %struct.ISCI_REMOTE_DEVICE**, %struct.ISCI_REMOTE_DEVICE*** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %22, i64 %23
  %25 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %24, align 8
  %26 = icmp eq %struct.ISCI_REMOTE_DEVICE* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %3
  %28 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %29 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %30 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %29, i32 0, i32 2
  %31 = load %struct.ISCI_REMOTE_DEVICE**, %struct.ISCI_REMOTE_DEVICE*** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %31, i64 %32
  store %struct.ISCI_REMOTE_DEVICE* %28, %struct.ISCI_REMOTE_DEVICE** %33, align 8
  %34 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %35 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %27
  %39 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %39, %union.ccb** %10, align 8
  %40 = load %union.ccb*, %union.ccb** %10, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %8, align 8
  %44 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cam_sim_path(i32 %45)
  %47 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %48 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %51 = call i32 @xpt_create_path(i32* %42, i32* null, i32 %46, i64 %49, i32 %50)
  %52 = load %union.ccb*, %union.ccb** %10, align 8
  %53 = call i32 @xpt_rescan(%union.ccb* %52)
  br label %54

54:                                               ; preds = %38, %27
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %57 = call i32 @isci_remote_device_release_device_queue(%struct.ISCI_REMOTE_DEVICE* %56)
  ret void
}

declare dso_local i8* @sci_object_get_association(i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_create_path(i32*, i32*, i32, i64, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

declare dso_local i32 @isci_remote_device_release_device_queue(%struct.ISCI_REMOTE_DEVICE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
