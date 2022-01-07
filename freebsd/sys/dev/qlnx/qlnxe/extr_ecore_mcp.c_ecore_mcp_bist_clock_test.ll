; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_bist_clock_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_bist_clock_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@DRV_MB_PARAM_BIST_CLOCK_TEST = common dso_local global i64 0, align 8
@DRV_MB_PARAM_BIST_TEST_INDEX_OFFSET = common dso_local global i64 0, align 8
@DRV_MSG_CODE_BIST_TEST = common dso_local global i32 0, align 4
@FW_MSG_CODE_MASK = common dso_local global i64 0, align 8
@FW_MSG_CODE_OK = common dso_local global i64 0, align 8
@DRV_MB_PARAM_BIST_RC_PASSED = common dso_local global i64 0, align 8
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_bist_clock_test(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %10 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i64, i64* @DRV_MB_PARAM_BIST_CLOCK_TEST, align 8
  %12 = load i64, i64* @DRV_MB_PARAM_BIST_TEST_INDEX_OFFSET, align 8
  %13 = shl i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %16 = load i32, i32* @DRV_MSG_CODE_BIST_TEST, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, i32 %16, i64 %17, i64* %7, i64* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @ECORE_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @FW_MSG_CODE_MASK, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* @FW_MSG_CODE_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @DRV_MB_PARAM_BIST_RC_PASSED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %24
  %35 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
