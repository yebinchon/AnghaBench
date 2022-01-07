; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@MCP_REG_CPU_STATE = common dso_local global i32 0, align 4
@MCP_REG_CPU_MODE = common dso_local global i32 0, align 4
@MCP_REG_CPU_MODE_SOFT_HALT = common dso_local global i32 0, align 4
@ECORE_MCP_RESUME_SLEEP_MS = common dso_local global i32 0, align 4
@MCP_REG_CPU_STATE_SOFT_HALTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Failed to resume the MCP [CPU_MODE = 0x%08x, CPU_STATE = 0x%08x]\0A\00", align 1
@ECORE_BUSY = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_resume(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %9 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %10 = load i32, i32* @MCP_REG_CPU_STATE, align 4
  %11 = call i32 @ecore_wr(%struct.ecore_hwfn* %8, %struct.ecore_ptt* %9, i32 %10, i32 -1)
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %14 = load i32, i32* @MCP_REG_CPU_MODE, align 4
  %15 = call i32 @ecore_rd(%struct.ecore_hwfn* %12, %struct.ecore_ptt* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @MCP_REG_CPU_MODE_SOFT_HALT, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %22 = load i32, i32* @MCP_REG_CPU_MODE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ecore_wr(%struct.ecore_hwfn* %20, %struct.ecore_ptt* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @ECORE_MCP_RESUME_SLEEP_MS, align 4
  %26 = call i32 @OSAL_MSLEEP(i32 %25)
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %29 = load i32, i32* @MCP_REG_CPU_STATE, align 4
  %30 = call i32 @ecore_rd(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MCP_REG_CPU_STATE_SOFT_HALTED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %36, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @ECORE_BUSY, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %43 = call i32 @ecore_mcp_cmd_set_blocking(%struct.ecore_hwfn* %42, i32 0)
  %44 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @ecore_mcp_cmd_set_blocking(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
