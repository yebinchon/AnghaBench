; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_send_protocol_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_send_protocol_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%union.ecore_mcp_protocol_stats = type { i32 }
%struct.ecore_mcp_mb_params = type { i32, %union.ecore_mcp_protocol_stats*, i32, i32 }

@ECORE_MCP_LAN_STATS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_STATS_TYPE_LAN = common dso_local global i32 0, align 4
@ECORE_MCP_FCOE_STATS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_STATS_TYPE_FCOE = common dso_local global i32 0, align 4
@ECORE_MCP_ISCSI_STATS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_STATS_TYPE_ISCSI = common dso_local global i32 0, align 4
@ECORE_MCP_RDMA_STATS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_STATS_TYPE_RDMA = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid protocol type %d\0A\00", align 1
@DRV_MSG_CODE_GET_STATS = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to send protocol stats, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_mcp_send_protocol_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_mcp_send_protocol_stats(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ecore_mcp_protocol_stats, align 4
  %9 = alloca %struct.ecore_mcp_mb_params, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %25 [
    i32 129, label %13
    i32 131, label %16
    i32 130, label %19
    i32 128, label %22
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @ECORE_MCP_LAN_STATS, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @DRV_MSG_CODE_STATS_TYPE_LAN, align 4
  store i32 %15, i32* %10, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i32, i32* @ECORE_MCP_FCOE_STATS, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @DRV_MSG_CODE_STATS_TYPE_FCOE, align 4
  store i32 %18, i32* %10, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load i32, i32* @ECORE_MCP_ISCSI_STATS, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @DRV_MSG_CODE_STATS_TYPE_ISCSI, align 4
  store i32 %21, i32* %10, align 4
  br label %30

22:                                               ; preds = %3
  %23 = load i32, i32* @ECORE_MCP_RDMA_STATS, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @DRV_MSG_CODE_STATS_TYPE_RDMA, align 4
  store i32 %24, i32* %10, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = load i32, i32* @ECORE_MSG_SP, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %26, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %53

30:                                               ; preds = %22, %19, %16, %13
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @OSAL_GET_PROTOCOL_STATS(i32 %33, i32 %34, %union.ecore_mcp_protocol_stats* %8)
  %36 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %9, i32 24)
  %37 = load i32, i32* @DRV_MSG_CODE_GET_STATS, align 4
  %38 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %9, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %9, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %9, i32 0, i32 1
  store %union.ecore_mcp_protocol_stats* %8, %union.ecore_mcp_protocol_stats** %41, align 8
  %42 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %9, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %45 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %43, %struct.ecore_ptt* %44, %struct.ecore_mcp_mb_params* %9)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @ECORE_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %30
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @DP_ERR(%struct.ecore_hwfn* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %25, %49, %30
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_GET_PROTOCOL_STATS(i32, i32, %union.ecore_mcp_protocol_stats*) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params*, i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
