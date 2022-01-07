; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_send_drv_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_send_drv_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_drv_version = type { i32*, i32 }
%struct.ecore_mcp_mb_params = type { i32, %struct.ecore_mcp_mb_params*, i32, i32*, i32 }
%struct.drv_version_stc = type { i32, %struct.drv_version_stc*, i32, i32*, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@MCP_DRV_VER_STR_SIZE = common dso_local global i32 0, align 4
@DRV_MSG_CODE_SET_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_send_drv_version(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_mcp_drv_version* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_mcp_drv_version*, align 8
  %8 = alloca %struct.ecore_mcp_mb_params, align 8
  %9 = alloca %struct.drv_version_stc, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_mcp_drv_version* %2, %struct.ecore_mcp_drv_version** %7, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @CHIP_REV_IS_SLOW(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %21, i32* %4, align 4
  br label %77

22:                                               ; preds = %3
  %23 = bitcast %struct.drv_version_stc* %9 to %struct.ecore_mcp_mb_params*
  %24 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %23, i32 40)
  %25 = load %struct.ecore_mcp_drv_version*, %struct.ecore_mcp_drv_version** %7, align 8
  %26 = getelementptr inbounds %struct.ecore_mcp_drv_version, %struct.ecore_mcp_drv_version* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.drv_version_stc, %struct.drv_version_stc* %9, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @MCP_DRV_VER_STR_SIZE, align 4
  %30 = sub nsw i32 %29, 4
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %56, %22
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.ecore_mcp_drv_version*, %struct.ecore_mcp_drv_version** %7, align 8
  %38 = getelementptr inbounds %struct.ecore_mcp_drv_version, %struct.ecore_mcp_drv_version* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @OSAL_CPU_TO_BE32(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds %struct.drv_version_stc, %struct.drv_version_stc* %9, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %32

59:                                               ; preds = %32
  %60 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %8, i32 40)
  %61 = load i32, i32* @DRV_MSG_CODE_SET_VERSION, align 4
  %62 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = bitcast %struct.drv_version_stc* %9 to %struct.ecore_mcp_mb_params*
  %64 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 1
  store %struct.ecore_mcp_mb_params* %63, %struct.ecore_mcp_mb_params** %64, align 8
  %65 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 0
  store i32 40, i32* %65, align 8
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %67 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %68 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %66, %struct.ecore_ptt* %67, %struct.ecore_mcp_mb_params* %8)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @ECORE_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %74 = call i32 @DP_ERR(%struct.ecore_hwfn* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %59
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @CHIP_REV_IS_SLOW(i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params*, i32) #1

declare dso_local i32 @OSAL_CPU_TO_BE32(i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
