; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_set_led.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@DRV_MB_PARAM_SET_LED_MODE_ON = common dso_local global i32 0, align 4
@DRV_MB_PARAM_SET_LED_MODE_OFF = common dso_local global i32 0, align 4
@DRV_MB_PARAM_SET_LED_MODE_OPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid LED mode %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@DRV_MSG_CODE_SET_LED_MODE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_set_led(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %19 [
    i32 129, label %13
    i32 130, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @DRV_MB_PARAM_SET_LED_MODE_ON, align 4
  store i32 %14, i32* %10, align 4
  br label %24

15:                                               ; preds = %3
  %16 = load i32, i32* @DRV_MB_PARAM_SET_LED_MODE_OFF, align 4
  store i32 %16, i32* %10, align 4
  br label %24

17:                                               ; preds = %3
  %18 = load i32, i32* @DRV_MB_PARAM_SET_LED_MODE_OPER, align 4
  store i32 %18, i32* %10, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %20, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %38

24:                                               ; preds = %17, %15, %13
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %27 = load i32, i32* @DRV_MSG_CODE_SET_LED_MODE, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %25, %struct.ecore_ptt* %26, i32 %27, i32 %28, i32* %8, i32* %9)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ECORE_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %35 = call i32 @DP_ERR(%struct.ecore_hwfn* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
