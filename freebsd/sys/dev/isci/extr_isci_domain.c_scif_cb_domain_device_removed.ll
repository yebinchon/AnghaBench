; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_device_removed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_device_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_REMOTE_DEVICE = type { i64 }
%struct.ISCI_DOMAIN = type { %struct.ISCI_REMOTE_DEVICE* }
%struct.ISCI_CONTROLLER = type { i32, i32**, i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_domain_device_removed(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %8 = alloca %struct.ISCI_DOMAIN*, align 8
  %9 = alloca %struct.ISCI_CONTROLLER*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.ccb*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @sci_object_get_association(i32 %12)
  %14 = inttoptr i64 %13 to %struct.ISCI_REMOTE_DEVICE*
  store %struct.ISCI_REMOTE_DEVICE* %14, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @sci_object_get_association(i32 %15)
  %17 = inttoptr i64 %16 to %struct.ISCI_DOMAIN*
  store %struct.ISCI_DOMAIN* %17, %struct.ISCI_DOMAIN** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @sci_object_get_association(i32 %18)
  %20 = inttoptr i64 %19 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %20, %struct.ISCI_CONTROLLER** %9, align 8
  %21 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %9, align 8
  %22 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cam_sim_path(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %25, %union.ccb** %11, align 8
  %26 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %9, align 8
  %27 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %30 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  store i32* null, i32** %32, align 8
  %33 = load %union.ccb*, %union.ccb** %11, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %38 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %41 = call i32 @xpt_create_path(i32* %35, i32* null, i32 %36, i64 %39, i32 %40)
  %42 = load %union.ccb*, %union.ccb** %11, align 8
  %43 = call i32 @xpt_rescan(%union.ccb* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @scif_remote_device_destruct(i32 %44)
  %46 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %47 = load %struct.ISCI_DOMAIN*, %struct.ISCI_DOMAIN** %8, align 8
  %48 = getelementptr inbounds %struct.ISCI_DOMAIN, %struct.ISCI_DOMAIN* %47, i32 0, i32 0
  %49 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %48, align 8
  %50 = icmp ne %struct.ISCI_REMOTE_DEVICE* %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %3
  %52 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %9, align 8
  %53 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %7, align 8
  %56 = call i32 @sci_pool_put(i32 %54, %struct.ISCI_REMOTE_DEVICE* %55)
  br label %57

57:                                               ; preds = %51, %3
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_create_path(i32*, i32*, i32, i64, i32) #1

declare dso_local i32 @xpt_rescan(%union.ccb*) #1

declare dso_local i32 @scif_remote_device_destruct(i32) #1

declare dso_local i32 @sci_pool_put(i32, %struct.ISCI_REMOTE_DEVICE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
