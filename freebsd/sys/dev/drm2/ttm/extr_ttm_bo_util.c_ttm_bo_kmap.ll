; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_kmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_bo_kmap_obj = type { %struct.ttm_buffer_object*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DRM_CURPROC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_kmap(%struct.ttm_buffer_object* %0, i64 %1, i64 %2, %struct.ttm_bo_kmap_obj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %10 = alloca %struct.ttm_mem_type_manager*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ttm_bo_kmap_obj* %3, %struct.ttm_bo_kmap_obj** %9, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %17, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %18, i64 %22
  store %struct.ttm_mem_type_manager* %23, %struct.ttm_mem_type_manager** %10, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 3
  %26 = call i32 @list_empty(i32* %25)
  %27 = call i32 @MPASS(i32 %26)
  %28 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %29 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %31 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %32 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %31, i32 0, i32 0
  store %struct.ttm_buffer_object* %30, %struct.ttm_buffer_object** %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %35 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %90

41:                                               ; preds = %4
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %44 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %90

50:                                               ; preds = %41
  %51 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %10, align 8
  %52 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %51, i32 0)
  %53 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %54 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %57 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %56, i32 0, i32 1
  %58 = call i32 @ttm_mem_io_reserve(%struct.TYPE_5__* %55, %struct.TYPE_6__* %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %10, align 8
  %60 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %59)
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %90

65:                                               ; preds = %50
  %66 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %67 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %77 = call i32 @ttm_bo_kmap_ttm(%struct.ttm_buffer_object* %73, i64 %74, i64 %75, %struct.ttm_bo_kmap_obj* %76)
  store i32 %77, i32* %5, align 4
  br label %90

78:                                               ; preds = %65
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @PAGE_SHIFT, align 8
  %81 = shl i64 %79, %80
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @PAGE_SHIFT, align 8
  %84 = shl i64 %82, %83
  store i64 %84, i64* %12, align 8
  %85 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %9, align 8
  %89 = call i32 @ttm_bo_ioremap(%struct.ttm_buffer_object* %85, i64 %86, i64 %87, %struct.ttm_bo_kmap_obj* %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %78, %72, %63, %47, %38
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_reserve(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

declare dso_local i32 @ttm_bo_kmap_ttm(%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*) #1

declare dso_local i32 @ttm_bo_ioremap(%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
