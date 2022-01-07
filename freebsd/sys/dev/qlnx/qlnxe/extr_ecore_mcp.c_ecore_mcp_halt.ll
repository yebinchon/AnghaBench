; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_halt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@DRV_MSG_CODE_MCP_HALT = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1
@ECORE_MCP_HALT_SLEEP_MS = common dso_local global i32 0, align 4
@MCP_REG_CPU_STATE = common dso_local global i32 0, align 4
@MCP_REG_CPU_STATE_SOFT_HALTED = common dso_local global i64 0, align 8
@ECORE_MCP_HALT_MAX_RETRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed to halt the MCP [CPU_MODE = 0x%08x, CPU_STATE = 0x%08x]\0A\00", align 1
@MCP_REG_CPU_MODE = common dso_local global i32 0, align 4
@ECORE_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_halt(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %13 = load i32, i32* @DRV_MSG_CODE_MCP_HALT, align 4
  %14 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %11, %struct.ecore_ptt* %12, i32 %13, i32 0, i64* %6, i64* %7)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @ECORE_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %20 = call i32 @DP_ERR(%struct.ecore_hwfn* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* @ECORE_MCP_HALT_SLEEP_MS, align 4
  %25 = call i32 @OSAL_MSLEEP(i32 %24)
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %28 = load i32, i32* @MCP_REG_CPU_STATE, align 4
  %29 = call i64 @ecore_rd(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @MCP_REG_CPU_STATE_SOFT_HALTED, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %41

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* @ECORE_MCP_HALT_MAX_RETRIES, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %23, label %41

41:                                               ; preds = %36, %34
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @ECORE_MCP_HALT_MAX_RETRIES, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %49 = load i32, i32* @MCP_REG_CPU_MODE, align 4
  %50 = call i64 @ecore_rd(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %46, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load i32, i32* @ECORE_BUSY, align 4
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %41
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %56 = call i32 @ecore_mcp_cmd_set_blocking(%struct.ecore_hwfn* %55, i32 1)
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %45, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i64*, i64*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, i64) #1

declare dso_local i32 @ecore_mcp_cmd_set_blocking(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
