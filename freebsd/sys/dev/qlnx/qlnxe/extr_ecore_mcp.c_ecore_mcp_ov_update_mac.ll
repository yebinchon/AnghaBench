; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_ov_update_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_ov_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_mb_params = type { i32, i32*, i32, i32 }

@DRV_MSG_CODE_SET_VMAC = common dso_local global i32 0, align 4
@DRV_MSG_CODE_VMAC_TYPE_MAC = common dso_local global i32 0, align 4
@DRV_MSG_CODE_VMAC_TYPE_OFFSET = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to send mac address, rc = %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_ov_update_mac(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ecore_mcp_mb_params, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %7, i32 24)
  %11 = load i32, i32* @DRV_MSG_CODE_SET_VMAC, align 4
  %12 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @DRV_MSG_CODE_VMAC_TYPE_MAC, align 4
  %14 = load i32, i32* @DRV_MSG_CODE_VMAC_TYPE_OFFSET, align 4
  %15 = shl i32 %13, %14
  %16 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = call i32 @MCP_PF_ID(%struct.ecore_hwfn* %17)
  %19 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 24
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %25, %29
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 24
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %44, %48
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %52 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %7, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %7, i32 0, i32 2
  store i32 8, i32* %53, align 8
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %55 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %56 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %54, %struct.ecore_ptt* %55, %struct.ecore_mcp_mb_params* %7)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ECORE_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %3
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @DP_ERR(%struct.ecore_hwfn* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %3
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %66 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = call i32 @OSAL_MEMCPY(i32 %69, i32* %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params*, i32) #1

declare dso_local i32 @MCP_PF_ID(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
