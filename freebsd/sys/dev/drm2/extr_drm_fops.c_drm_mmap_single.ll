; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fops.c_drm_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fops.c_drm_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.vm_object = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mmap_single(%struct.cdev* %0, i32* %1, i32 %2, %struct.vm_object** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_object**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.vm_object** %3, %struct.vm_object*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.cdev*, %struct.cdev** %7, align 8
  %14 = call %struct.drm_device* @drm_get_device_from_kdev(%struct.cdev* %13)
  store %struct.drm_device* %14, %struct.drm_device** %12, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.vm_object**, %struct.vm_object*** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ttm_bo_mmap_single(i32* %22, i32* %23, i32 %24, %struct.vm_object** %25, i32 %26)
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %48

29:                                               ; preds = %5
  %30 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DRIVER_GEM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.vm_object**, %struct.vm_object*** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @drm_gem_mmap_single(%struct.drm_device* %39, i32* %40, i32 %41, %struct.vm_object** %42, i32 %43)
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %48

46:                                               ; preds = %29
  %47 = load i32, i32* @ENODEV, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %38, %19
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.drm_device* @drm_get_device_from_kdev(%struct.cdev*) #1

declare dso_local i32 @ttm_bo_mmap_single(i32*, i32*, i32, %struct.vm_object**, i32) #1

declare dso_local i32 @drm_gem_mmap_single(%struct.drm_device*, i32*, i32, %struct.vm_object**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
