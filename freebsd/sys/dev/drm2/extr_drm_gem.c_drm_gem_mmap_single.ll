; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_object = type { i32 }
%struct.drm_gem_object = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@OBJT_MGTDEVICE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_mmap_single(%struct.drm_device* %0, i32* %1, i32 %2, %struct.vm_object** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_object**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_gem_object*, align 8
  %13 = alloca %struct.vm_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.vm_object** %3, %struct.vm_object*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = call i32 @DRM_LOCK(%struct.drm_device* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_gem_object* @drm_gem_object_from_offset(%struct.drm_device* %16, i32 %18)
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %12, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %21 = icmp eq %struct.drm_gem_object* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %24 = call i32 @DRM_UNLOCK(%struct.drm_device* %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %62

27:                                               ; preds = %5
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %29 = call i32 @drm_gem_object_reference(%struct.drm_gem_object* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %31 = call i32 @DRM_UNLOCK(%struct.drm_device* %30)
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %33 = load i32, i32* @OBJT_MGTDEVICE, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DRM_GEM_MAPPING_MAPOFF(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.vm_object* @cdev_pager_allocate(%struct.drm_gem_object* %32, i32 %33, i32 %38, i32 %39, i32 %40, i32 %43, i32 %46)
  store %struct.vm_object* %47, %struct.vm_object** %13, align 8
  %48 = load %struct.vm_object*, %struct.vm_object** %13, align 8
  %49 = icmp eq %struct.vm_object* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %27
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %52 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %62

55:                                               ; preds = %27
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DRM_GEM_MAPPING_MAPOFF(i32 %57)
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.vm_object*, %struct.vm_object** %13, align 8
  %61 = load %struct.vm_object**, %struct.vm_object*** %10, align 8
  store %struct.vm_object* %60, %struct.vm_object** %61, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %55, %50, %22
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @DRM_LOCK(%struct.drm_device*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_from_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_UNLOCK(%struct.drm_device*) #1

declare dso_local i32 @drm_gem_object_reference(%struct.drm_gem_object*) #1

declare dso_local %struct.vm_object* @cdev_pager_allocate(%struct.drm_gem_object*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_GEM_MAPPING_MAPOFF(i32) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
