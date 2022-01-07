; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_validate_filter_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_validate_filter_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_filter_control_settings = type { i32, i32, i32, i32 }

@I40E_HASH_FILTER_BASE_SIZE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_DMA_CNTX_BASE_SIZE = common dso_local global i32 0, align 4
@I40E_GLHMC_FCOEFMAX = common dso_local global i32 0, align 4
@I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_MASK = common dso_local global i32 0, align 4
@I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_SHIFT = common dso_local global i32 0, align 4
@I40E_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_filter_control_settings*)* @i40e_validate_filter_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_validate_filter_settings(%struct.i40e_hw* %0, %struct.i40e_filter_control_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_filter_control_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_filter_control_settings* %1, %struct.i40e_filter_control_settings** %5, align 8
  %12 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %22 [
    i32 136, label %15
    i32 133, label %15
    i32 131, label %15
    i32 128, label %15
    i32 137, label %15
    i32 132, label %15
  ]

15:                                               ; preds = %2, %2, %2, %2, %2, %2
  %16 = load i32, i32* @I40E_HASH_FILTER_BASE_SIZE, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %18 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %23, i32* %3, align 4
  br label %81

24:                                               ; preds = %15
  %25 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %26 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %35 [
    i32 141, label %28
    i32 146, label %28
    i32 144, label %28
    i32 142, label %28
  ]

28:                                               ; preds = %24, %24, %24, %24
  %29 = load i32, i32* @I40E_DMA_CNTX_BASE_SIZE, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %31 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %36, i32* %3, align 4
  br label %81

37:                                               ; preds = %28
  %38 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %39 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %48 [
    i32 136, label %41
    i32 133, label %41
    i32 131, label %41
    i32 128, label %41
    i32 137, label %41
    i32 132, label %41
    i32 129, label %41
    i32 138, label %41
    i32 134, label %41
    i32 130, label %41
    i32 135, label %41
  ]

41:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %42 = load i32, i32* @I40E_HASH_FILTER_BASE_SIZE, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %44 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %49, i32* %3, align 4
  br label %81

50:                                               ; preds = %41
  %51 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %52 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %61 [
    i32 141, label %54
    i32 146, label %54
    i32 144, label %54
    i32 142, label %54
    i32 139, label %54
    i32 147, label %54
    i32 143, label %54
    i32 140, label %54
    i32 148, label %54
    i32 145, label %54
  ]

54:                                               ; preds = %50, %50, %50, %50, %50, %50, %50, %50, %50, %50
  %55 = load i32, i32* @I40E_DMA_CNTX_BASE_SIZE, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.i40e_filter_control_settings*, %struct.i40e_filter_control_settings** %5, align 8
  %57 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %62, i32* %3, align 4
  br label %81

63:                                               ; preds = %54
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %65 = load i32, i32* @I40E_GLHMC_FCOEFMAX, align 4
  %66 = call i32 @rd32(%struct.i40e_hw* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @I40E_GLHMC_FCOEFMAX_PMFCOEFMAX_SHIFT, align 4
  %71 = ashr i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* @I40E_ERR_INVALID_SIZE, align 4
  store i32 %78, i32* %3, align 4
  br label %81

79:                                               ; preds = %63
  %80 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %77, %61, %48, %35, %22
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
