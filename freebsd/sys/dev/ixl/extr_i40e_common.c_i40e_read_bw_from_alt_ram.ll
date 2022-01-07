; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_read_bw_from_alt_ram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_read_bw_from_alt_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_ALT_STRUCT_FIRST_PF_OFFSET = common dso_local global i32 0, align 4
@I40E_ALT_STRUCT_MAX_BW_OFFSET = common dso_local global i32 0, align 4
@I40E_ALT_STRUCT_DWORDS_PER_PF = common dso_local global i32 0, align 4
@I40E_ALT_STRUCT_MIN_BW_OFFSET = common dso_local global i32 0, align 4
@I40E_ALT_BW_VALID_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_read_bw_from_alt_ram(%struct.i40e_hw* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @I40E_ALT_STRUCT_FIRST_PF_OFFSET, align 4
  %15 = load i32, i32* @I40E_ALT_STRUCT_MAX_BW_OFFSET, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @I40E_ALT_STRUCT_DWORDS_PER_PF, align 4
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = add nsw i32 %16, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @I40E_ALT_STRUCT_FIRST_PF_OFFSET, align 4
  %24 = load i32, i32* @I40E_ALT_STRUCT_MIN_BW_OFFSET, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @I40E_ALT_STRUCT_DWORDS_PER_PF, align 4
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = add nsw i32 %25, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @i40e_aq_alternate_read(%struct.i40e_hw* %32, i32 %33, i32* %34, i32 %35, i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I40E_ALT_BW_VALID_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %5
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  br label %49

46:                                               ; preds = %5
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40E_ALT_BW_VALID_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @i40e_aq_alternate_read(%struct.i40e_hw*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
