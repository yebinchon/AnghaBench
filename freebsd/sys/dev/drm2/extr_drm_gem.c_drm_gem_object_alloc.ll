; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_object_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_object_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.drm_gem_object*)* }

@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @drm_gem_object_alloc(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.drm_gem_object* @malloc(i32 4, i32 %7, i32 %10)
  store %struct.drm_gem_object* %11, %struct.drm_gem_object** %6, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %13 = icmp ne %struct.drm_gem_object* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @drm_gem_object_init(%struct.drm_device* %16, %struct.drm_gem_object* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64 (%struct.drm_gem_object*)*, i64 (%struct.drm_gem_object*)** %26, align 8
  %28 = icmp ne i64 (%struct.drm_gem_object*)* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64 (%struct.drm_gem_object*)*, i64 (%struct.drm_gem_object*)** %33, align 8
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %36 = call i64 %34(%struct.drm_gem_object* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %41

39:                                               ; preds = %29, %22
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  store %struct.drm_gem_object* %40, %struct.drm_gem_object** %3, align 8
  br label %50

41:                                               ; preds = %38
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %43 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vm_object_deallocate(i32 %44)
  br label %46

46:                                               ; preds = %41, %21, %14
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %48 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %49 = call i32 @free(%struct.drm_gem_object* %47, i32 %48)
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %3, align 8
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %51
}

declare dso_local %struct.drm_gem_object* @malloc(i32, i32, i32) #1

declare dso_local i64 @drm_gem_object_init(%struct.drm_device*, %struct.drm_gem_object*, i64) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @free(%struct.drm_gem_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
