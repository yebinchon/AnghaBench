; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_add_to_lru.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_add_to_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.TYPE_4__*, i32, i32*, i32, %struct.TYPE_3__, %struct.ttm_bo_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }

@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_add_to_lru(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca %struct.ttm_buffer_object*, align 8
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %2, align 8
  %5 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %6 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %5, i32 0, i32 6
  %7 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  store %struct.ttm_bo_device* %7, %struct.ttm_bo_device** %3, align 8
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %9 = call i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object* %8)
  %10 = call i32 @MPASS(i32 %9)
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %1
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 4
  %21 = call i32 @list_empty(i32* %20)
  %22 = call i32 @MPASS(i32 %21)
  %23 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %24 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %23, i32 0, i32 0
  %25 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %24, align 8
  %26 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %27 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %25, i64 %29
  store %struct.ttm_mem_type_manager* %30, %struct.ttm_mem_type_manager** %4, align 8
  %31 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %32 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %31, i32 0, i32 4
  %33 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %4, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %33, i32 0, i32 0
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %37 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %36, i32 0, i32 0
  %38 = call i32 @refcount_acquire(i32* %37)
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %40 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %18
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 2
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %45, i32* %49)
  %51 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %2, align 8
  %52 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %51, i32 0, i32 0
  %53 = call i32 @refcount_acquire(i32* %52)
  br label %54

54:                                               ; preds = %43, %18
  br label %55

55:                                               ; preds = %54, %1
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @refcount_acquire(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
