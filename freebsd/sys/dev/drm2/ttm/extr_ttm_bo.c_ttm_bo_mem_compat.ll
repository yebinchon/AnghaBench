; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_mem_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_mem_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_placement = type { i64, i64, i32, i32* }
%struct.ttm_mem_reg = type { i64, i64, i32, i64 }

@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@TTM_PL_MASK_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_placement*, %struct.ttm_mem_reg*)* @ttm_bo_mem_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_mem_compat(%struct.ttm_placement* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_placement*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca i32, align 4
  store %struct.ttm_placement* %0, %struct.ttm_placement** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  %7 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %8 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %13 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %18 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %21 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %16
  %25 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %33 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24, %16
  store i32 -1, i32* %3, align 4
  br label %81

37:                                               ; preds = %24, %11, %2
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %77, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %41 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %38
  %45 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %46 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %53 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %51, %54
  %56 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %44
  %60 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %61 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %68 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %66, %69
  %71 = load i32, i32* @TTM_PL_MASK_MEM, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %81

76:                                               ; preds = %59, %44
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %38

80:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %74, %36
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
