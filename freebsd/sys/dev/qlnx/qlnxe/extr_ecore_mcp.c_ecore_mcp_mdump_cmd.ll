; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_mdump_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_mdump_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mdump_cmd_params = type { i32, i32, i32, i32, i32, i32 }
%struct.ecore_mcp_mb_params = type { i32, i32, i32, i32, i32, i32, i32 }

@DRV_MSG_CODE_MDUMP_CMD = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@FW_MSG_CODE_MDUMP_INVALID_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"The mdump sub command is unsupported by the MFW [mdump_cmd 0x%x]\0A\00", align 1
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@FW_MSG_CODE_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"The mdump command is not supported by the MFW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mdump_cmd_params*)* @ecore_mcp_mdump_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mcp_mdump_cmd(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_mdump_cmd_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_mdump_cmd_params*, align 8
  %8 = alloca %struct.ecore_mcp_mb_params, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_mdump_cmd_params* %2, %struct.ecore_mdump_cmd_params** %7, align 8
  %10 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %8, i32 28)
  %11 = load i32, i32* @DRV_MSG_CODE_MDUMP_CMD, align 4
  %12 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 6
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ecore_mdump_cmd_params*, %struct.ecore_mdump_cmd_params** %7, align 8
  %14 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = load %struct.ecore_mdump_cmd_params*, %struct.ecore_mdump_cmd_params** %7, align 8
  %18 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ecore_mdump_cmd_params*, %struct.ecore_mdump_cmd_params** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ecore_mdump_cmd_params*, %struct.ecore_mdump_cmd_params** %7, align 8
  %26 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ecore_mdump_cmd_params*, %struct.ecore_mdump_cmd_params** %7, align 8
  %30 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %35 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34, %struct.ecore_mcp_mb_params* %8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ECORE_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ecore_mdump_cmd_params*, %struct.ecore_mdump_cmd_params** %7, align 8
  %45 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ecore_mdump_cmd_params*, %struct.ecore_mdump_cmd_params** %7, align 8
  %47 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FW_MSG_CODE_MDUMP_INVALID_CMD, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %53 = load %struct.ecore_mdump_cmd_params*, %struct.ecore_mdump_cmd_params** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %52, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %57, i32* %9, align 4
  br label %69

58:                                               ; preds = %41
  %59 = load %struct.ecore_mdump_cmd_params*, %struct.ecore_mdump_cmd_params** %7, align 8
  %60 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FW_MSG_CODE_UNSUPPORTED, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %66 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %39
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params*, i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
