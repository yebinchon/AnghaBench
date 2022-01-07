; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32*, %struct.TYPE_2__, %struct.ttm_bo_device* }
%struct.TYPE_2__ = type { i64 }
%struct.ttm_bo_device = type { i32, i32, %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }

@ttm_bo_device_buffer_objects = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*)* @ttm_bo_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_release(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %5 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %5, i32 0, i32 3
  %7 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  store %struct.ttm_bo_device* %7, %struct.ttm_bo_device** %3, align 8
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %8, i32 0, i32 2
  %10 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %10, i64 %14
  store %struct.ttm_mem_type_manager* %15, %struct.ttm_mem_type_manager** %4, align 8
  %16 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %17 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %16, i32 0, i32 0
  %18 = call i32 @rw_wlock(i32* %17)
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load i32, i32* @ttm_bo_device_buffer_objects, align 4
  %28 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %29 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %28, i32 0, i32 1
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %31 = call i32 @RB_REMOVE(i32 %27, i32* %29, %struct.ttm_buffer_object* %30)
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %33 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @drm_mm_put_block(i32* %34)
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %37 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %26, %1
  %39 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %40 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %39, i32 0, i32 0
  %41 = call i32 @rw_wunlock(i32* %40)
  %42 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %43 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %42, i32 0)
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %45 = call i32 @ttm_mem_io_free_vm(%struct.ttm_buffer_object* %44)
  %46 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %47 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %46)
  %48 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %49 = call i32 @ttm_bo_cleanup_refs_or_queue(%struct.ttm_buffer_object* %48)
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 0
  %52 = call i64 @refcount_release(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %56 = call i32 @ttm_bo_release_list(%struct.ttm_buffer_object* %55)
  br label %57

57:                                               ; preds = %54, %38
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.ttm_buffer_object*) #1

declare dso_local i32 @drm_mm_put_block(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_free_vm(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

declare dso_local i32 @ttm_bo_cleanup_refs_or_queue(%struct.ttm_buffer_object*) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @ttm_bo_release_list(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
