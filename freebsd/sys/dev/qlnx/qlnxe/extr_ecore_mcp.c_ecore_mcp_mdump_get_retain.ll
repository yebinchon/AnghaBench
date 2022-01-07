; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_mdump_get_retain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_mdump_get_retain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mdump_retain_data = type { i32, i32, i32, i32 }
%struct.ecore_mdump_cmd_params = type { i32, i64, %struct.mdump_retain_data_stc*, i32 }
%struct.mdump_retain_data_stc = type { i32, i32, i32, i32 }

@DRV_MSG_CODE_MDUMP_GET_RETAIN = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@FW_MSG_CODE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Failed to get the mdump retained data [mcp_resp 0x%x]\0A\00", align 1
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_mdump_get_retain(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_mdump_retain_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_mdump_retain_data*, align 8
  %8 = alloca %struct.ecore_mdump_cmd_params, align 8
  %9 = alloca %struct.mdump_retain_data_stc, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_mdump_retain_data* %2, %struct.ecore_mdump_retain_data** %7, align 8
  %11 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mdump_cmd_params* %8, i32 32)
  %12 = load i32, i32* @DRV_MSG_CODE_MDUMP_GET_RETAIN, align 4
  %13 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %8, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %8, i32 0, i32 2
  store %struct.mdump_retain_data_stc* %9, %struct.mdump_retain_data_stc** %14, align 8
  %15 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %8, i32 0, i32 0
  store i32 16, i32* %15, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %18 = call i32 @ecore_mcp_mdump_cmd(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17, %struct.ecore_mdump_cmd_params* %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ECORE_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %53

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %8, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FW_MSG_CODE_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %31 = getelementptr inbounds %struct.ecore_mdump_cmd_params, %struct.ecore_mdump_cmd_params* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @DP_INFO(%struct.ecore_hwfn* %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %53

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.mdump_retain_data_stc, %struct.mdump_retain_data_stc* %9, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ecore_mdump_retain_data*, %struct.ecore_mdump_retain_data** %7, align 8
  %39 = getelementptr inbounds %struct.ecore_mdump_retain_data, %struct.ecore_mdump_retain_data* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.mdump_retain_data_stc, %struct.mdump_retain_data_stc* %9, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ecore_mdump_retain_data*, %struct.ecore_mdump_retain_data** %7, align 8
  %43 = getelementptr inbounds %struct.ecore_mdump_retain_data, %struct.ecore_mdump_retain_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.mdump_retain_data_stc, %struct.mdump_retain_data_stc* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ecore_mdump_retain_data*, %struct.ecore_mdump_retain_data** %7, align 8
  %47 = getelementptr inbounds %struct.ecore_mdump_retain_data, %struct.ecore_mdump_retain_data* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.mdump_retain_data_stc, %struct.mdump_retain_data_stc* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ecore_mdump_retain_data*, %struct.ecore_mdump_retain_data** %7, align 8
  %51 = getelementptr inbounds %struct.ecore_mdump_retain_data, %struct.ecore_mdump_retain_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %35, %29, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mdump_cmd_params*, i32) #1

declare dso_local i32 @ecore_mcp_mdump_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mdump_cmd_params*) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
