; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_update_stag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_update_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.public_func = type { i64 }

@FUNC_MF_CFG_OV_STAG_MASK = common dso_local global i32 0, align 4
@MODE_MF_SD = common dso_local global i32 0, align 4
@ECORE_MCP_VLAN_UNSET = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_TAG_VALUE = common dso_local global i32 0, align 4
@DORQ_REG_TAG1_OVRD_MODE = common dso_local global i32 0, align 4
@DORQ_REG_PF_EXT_VID_BB_K2 = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ovlan  = %d hw_mode = 0x%x\0A\00", align 1
@ECORE_HW_INFO_CHANGE_OVLAN = common dso_local global i32 0, align 4
@DRV_MSG_CODE_S_TAG_UPDATE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_mcp_update_stag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_mcp_update_stag(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.public_func, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = call i32 @MCP_PF_ID(%struct.ecore_hwfn* %10)
  %12 = call i32 @ecore_mcp_get_shmem_func(%struct.ecore_hwfn* %8, %struct.ecore_ptt* %9, %struct.public_func* %5, i32 %11)
  %13 = getelementptr inbounds %struct.public_func, %struct.public_func* %5, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @FUNC_MF_CFG_OV_STAG_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %24 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MODE_MF_SD, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %2
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ECORE_MCP_VLAN_UNSET, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %40
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %49 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %50 = load i32, i32* @NIG_REG_LLH_FUNC_TAG_VALUE, align 4
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ecore_wr(%struct.ecore_hwfn* %48, %struct.ecore_ptt* %49, i32 %50, i32 %54)
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %57 = call i32 @ecore_sp_pf_update_stag(%struct.ecore_hwfn* %56)
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %59 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %60 = load i32, i32* @DORQ_REG_TAG1_OVRD_MODE, align 4
  %61 = call i32 @ecore_wr(%struct.ecore_hwfn* %58, %struct.ecore_ptt* %59, i32 %60, i32 1)
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %63 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %64 = load i32, i32* @DORQ_REG_PF_EXT_VID_BB_K2, align 4
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %66 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ecore_wr(%struct.ecore_hwfn* %62, %struct.ecore_ptt* %63, i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %47, %40, %2
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %72 = load i32, i32* @ECORE_MSG_SP, align 4
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %74 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %80 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %71, i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %82)
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %85 = load i32, i32* @ECORE_HW_INFO_CHANGE_OVLAN, align 4
  %86 = call i32 @OSAL_HW_INFO_CHANGE(%struct.ecore_hwfn* %84, i32 %85)
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %88 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %89 = load i32, i32* @DRV_MSG_CODE_S_TAG_UPDATE_ACK, align 4
  %90 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %87, %struct.ecore_ptt* %88, i32 %89, i32 0, i32* %6, i32* %7)
  ret void
}

declare dso_local i32 @ecore_mcp_get_shmem_func(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.public_func*, i32) #1

declare dso_local i32 @MCP_PF_ID(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_sp_pf_update_stag(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @OSAL_HW_INFO_CHANGE(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
