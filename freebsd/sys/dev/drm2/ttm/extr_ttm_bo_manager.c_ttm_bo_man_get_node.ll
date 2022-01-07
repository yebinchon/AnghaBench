; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_manager.c_ttm_bo_man_get_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_manager.c_ttm_bo_man_get_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i64, i64 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_placement = type { i64, i32 }
%struct.ttm_mem_reg = type { i32, %struct.drm_mm_node*, i32, i32 }
%struct.drm_mm_node = type { i32 }
%struct.ttm_range_manager = type { i32, %struct.drm_mm }
%struct.drm_mm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)* @ttm_bo_man_get_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_man_get_node(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_placement* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_placement*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.ttm_range_manager*, align 8
  %11 = alloca %struct.drm_mm*, align 8
  %12 = alloca %struct.drm_mm_node*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_placement* %2, %struct.ttm_placement** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %15 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %16 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ttm_range_manager*
  store %struct.ttm_range_manager* %18, %struct.ttm_range_manager** %10, align 8
  %19 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %10, align 8
  %20 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %19, i32 0, i32 1
  store %struct.drm_mm* %20, %struct.drm_mm** %11, align 8
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %12, align 8
  %21 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %22 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %28 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %13, align 8
  br label %30

30:                                               ; preds = %26, %4
  br label %31

31:                                               ; preds = %80, %30
  %32 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %33 = call i32 @drm_mm_pre_get(%struct.drm_mm* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %5, align 4
  br label %92

39:                                               ; preds = %31
  %40 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %10, align 8
  %41 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %40, i32 0, i32 0
  %42 = call i32 @mtx_lock(i32* %41)
  %43 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %44 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %45 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %48 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %51 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call %struct.drm_mm_node* @drm_mm_search_free_in_range(%struct.drm_mm* %43, i32 %46, i32 %49, i32 %52, i64 %53, i32 1)
  store %struct.drm_mm_node* %54, %struct.drm_mm_node** %12, align 8
  %55 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %56 = icmp eq %struct.drm_mm_node* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %39
  %61 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %10, align 8
  %62 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %61, i32 0, i32 0
  %63 = call i32 @mtx_unlock(i32* %62)
  store i32 0, i32* %5, align 4
  br label %92

64:                                               ; preds = %39
  %65 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %66 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %67 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %70 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ttm_placement*, %struct.ttm_placement** %8, align 8
  %73 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call %struct.drm_mm_node* @drm_mm_get_block_atomic_range(%struct.drm_mm_node* %65, i32 %68, i32 %71, i32 %74, i64 %75)
  store %struct.drm_mm_node* %76, %struct.drm_mm_node** %12, align 8
  %77 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %10, align 8
  %78 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %77, i32 0, i32 0
  %79 = call i32 @mtx_unlock(i32* %78)
  br label %80

80:                                               ; preds = %64
  %81 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %82 = icmp eq %struct.drm_mm_node* %81, null
  br i1 %82, label %31, label %83

83:                                               ; preds = %80
  %84 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %85 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %86 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %85, i32 0, i32 1
  store %struct.drm_mm_node* %84, %struct.drm_mm_node** %86, align 8
  %87 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %88 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %91 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %83, %60, %37
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @drm_mm_pre_get(%struct.drm_mm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.drm_mm_node* @drm_mm_search_free_in_range(%struct.drm_mm*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.drm_mm_node* @drm_mm_get_block_atomic_range(%struct.drm_mm_node*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
