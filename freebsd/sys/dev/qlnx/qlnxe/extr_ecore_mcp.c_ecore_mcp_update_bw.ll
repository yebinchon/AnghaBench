; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_update_bw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_update_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.ecore_mcp_function_info }
%struct.ecore_mcp_function_info = type { i32, i32 }
%struct.ecore_ptt = type { i32 }
%struct.public_func = type { i32 }

@DRV_MSG_CODE_BW_UPDATE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_mcp_update_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_mcp_update_bw(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_mcp_function_info*, align 8
  %6 = alloca %struct.public_func, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @OSAL_SPIN_LOCK(i32* %12)
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %17 = call i32 @MCP_PF_ID(%struct.ecore_hwfn* %16)
  %18 = call i32 @ecore_mcp_get_shmem_func(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, %struct.public_func* %6, i32 %17)
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = call i32 @ecore_read_pf_bandwidth(%struct.ecore_hwfn* %19, %struct.public_func* %6)
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.ecore_mcp_function_info* %24, %struct.ecore_mcp_function_info** %5, align 8
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ecore_configure_pf_min_bandwidth(i32 %27, i32 %30)
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %36 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ecore_configure_pf_max_bandwidth(i32 %34, i32 %37)
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @OSAL_SPIN_UNLOCK(i32* %42)
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %45 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %46 = load i32, i32* @DRV_MSG_CODE_BW_UPDATE_ACK, align 4
  %47 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %44, %struct.ecore_ptt* %45, i32 %46, i32 0, i32* %7, i32* %8)
  ret void
}

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_mcp_get_shmem_func(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.public_func*, i32) #1

declare dso_local i32 @MCP_PF_ID(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_read_pf_bandwidth(%struct.ecore_hwfn*, %struct.public_func*) #1

declare dso_local i32 @ecore_configure_pf_min_bandwidth(i32, i32) #1

declare dso_local i32 @ecore_configure_pf_max_bandwidth(i32, i32) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
