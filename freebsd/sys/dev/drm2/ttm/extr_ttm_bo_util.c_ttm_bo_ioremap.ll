; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_ioremap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_bo_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ttm_bo_kmap_obj = type { i64, i8*, i32 }

@ttm_bo_map_premapped = common dso_local global i32 0, align 4
@ttm_bo_map_iomap = common dso_local global i32 0, align 4
@TTM_PL_FLAG_WC = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i64, i64, %struct.ttm_bo_kmap_obj*)* @ttm_bo_ioremap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_ioremap(%struct.ttm_buffer_object* %0, i64 %1, i64 %2, %struct.ttm_bo_kmap_obj* %3) #0 {
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ttm_bo_kmap_obj*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ttm_bo_kmap_obj* %3, %struct.ttm_bo_kmap_obj** %8, align 8
  %10 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %11 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %10, i32 0, i32 0
  store %struct.ttm_mem_reg* %11, %struct.ttm_mem_reg** %9, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %13 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load i32, i32* @ttm_bo_map_premapped, align 4
  %20 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %21 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %23 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = bitcast i32* %29 to i8*
  %31 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %32 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %69

33:                                               ; preds = %4
  %34 = load i32, i32* @ttm_bo_map_iomap, align 4
  %35 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %36 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %41, %46
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %47, %48
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %52 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TTM_PL_FLAG_WC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %33
  %58 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  br label %61

59:                                               ; preds = %33
  %60 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i8* @pmap_mapdev_attr(i64 %49, i64 %50, i32 %62)
  %64 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %65 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %68 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %61, %18
  %70 = load %struct.ttm_bo_kmap_obj*, %struct.ttm_bo_kmap_obj** %8, align 8
  %71 = getelementptr inbounds %struct.ttm_bo_kmap_obj, %struct.ttm_bo_kmap_obj* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  br label %78

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 0, %77 ]
  ret i32 %79
}

declare dso_local i8* @pmap_mapdev_attr(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
