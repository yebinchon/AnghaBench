; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_unload_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_unload_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_mb_params = type { i32, i32, i32 }

@DRV_MB_PARAM_UNLOAD_WOL_DISABLED = common dso_local global i32 0, align 4
@DRV_MB_PARAM_UNLOAD_WOL_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown WoL configuration %02x\0A\00", align 1
@DRV_MB_PARAM_UNLOAD_WOL_MCP = common dso_local global i32 0, align 4
@DRV_MSG_CODE_UNLOAD_REQ = common dso_local global i32 0, align 4
@ECORE_MB_FLAG_CAN_SLEEP = common dso_local global i32 0, align 4
@ECORE_MB_FLAG_AVOID_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_unload_req(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_mcp_mb_params, align 4
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %16 [
    i32 129, label %12
    i32 128, label %14
    i32 130, label %24
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @DRV_MB_PARAM_UNLOAD_WOL_DISABLED, align 4
  store i32 %13, i32* %6, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* @DRV_MB_PARAM_UNLOAD_WOL_ENABLED, align 4
  store i32 %15, i32* %6, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %17, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %2, %16
  %25 = load i32, i32* @DRV_MB_PARAM_UNLOAD_WOL_MCP, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %14, %12
  %27 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %5, i32 12)
  %28 = load i32, i32* @DRV_MSG_CODE_UNLOAD_REQ, align 4
  %29 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %5, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @ECORE_MB_FLAG_CAN_SLEEP, align 4
  %33 = load i32, i32* @ECORE_MB_FLAG_AVOID_BLOCK, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %37 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %38 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %36, %struct.ecore_ptt* %37, %struct.ecore_mcp_mb_params* %5)
  ret i32 %38
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params*, i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
