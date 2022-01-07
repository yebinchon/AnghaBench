; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_create_mmap_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_create_mmap_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.TYPE_2__, %struct.drm_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { %struct.drm_gem_mm* }
%struct.drm_gem_mm = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to add to map hash\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_gem_mm*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_gem_mm*, %struct.drm_gem_mm** %11, align 8
  store %struct.drm_gem_mm* %12, %struct.drm_gem_mm** %5, align 8
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %14 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.drm_gem_mm*, %struct.drm_gem_mm** %5, align 8
  %20 = getelementptr inbounds %struct.drm_gem_mm, %struct.drm_gem_mm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @alloc_unr(i32 %21)
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %24 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.drm_gem_mm*, %struct.drm_gem_mm** %5, align 8
  %27 = getelementptr inbounds %struct.drm_gem_mm, %struct.drm_gem_mm* %26, i32 0, i32 1
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %29 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %28, i32 0, i32 1
  %30 = call i32 @drm_ht_insert_item(i32* %27, %struct.TYPE_2__* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %18
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.drm_gem_mm*, %struct.drm_gem_mm** %5, align 8
  %36 = getelementptr inbounds %struct.drm_gem_mm, %struct.drm_gem_mm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %39 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @free_unr(i32 %37, i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %18
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %33, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @drm_ht_insert_item(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @free_unr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
