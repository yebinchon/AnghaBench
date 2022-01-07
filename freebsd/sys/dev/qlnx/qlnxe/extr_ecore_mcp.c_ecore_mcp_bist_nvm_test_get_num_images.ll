; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_bist_nvm_test_get_num_images.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_bist_nvm_test_get_num_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@DRV_MB_PARAM_BIST_NVM_TEST_NUM_IMAGES = common dso_local global i32 0, align 4
@DRV_MB_PARAM_BIST_TEST_INDEX_OFFSET = common dso_local global i32 0, align 4
@DRV_MSG_CODE_BIST_TEST = common dso_local global i32 0, align 4
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@FW_MSG_CODE_OK = common dso_local global i32 0, align 4
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_bist_nvm_test_get_num_images(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @DRV_MB_PARAM_BIST_NVM_TEST_NUM_IMAGES, align 4
  %13 = load i32, i32* @DRV_MB_PARAM_BIST_TEST_INDEX_OFFSET, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %17 = load i32, i32* @DRV_MSG_CODE_BIST_TEST, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %15, %struct.ecore_ptt* %16, i32 %17, i32 %18, i32* %9, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @ECORE_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @FW_MSG_CODE_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %24
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
