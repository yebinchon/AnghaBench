; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_update_fcoe_fabric_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_update_fcoe_fabric_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_mb_params = type { i32, %struct.ecore_mcp_mb_params*, i32, i8*, i8* }
%struct.mcp_wwn = type { i32, %struct.mcp_wwn*, i32, i8*, i8* }

@DRV_MSG_CODE_OEM_UPDATE_FCOE_FABRIC_NAME = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to update fcoe wwn, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_update_fcoe_fabric_name(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ecore_mcp_mb_params, align 8
  %8 = alloca %struct.mcp_wwn, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = call i32 @OSAL_MEM_ZERO(%struct.mcp_wwn* %8, i32 40)
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct.mcp_wwn, %struct.mcp_wwn* %8, i32 0, i32 4
  store i8* %13, i8** %14, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = bitcast i32* %16 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.mcp_wwn, %struct.mcp_wwn* %8, i32 0, i32 3
  store i8* %18, i8** %19, align 8
  %20 = bitcast %struct.ecore_mcp_mb_params* %7 to %struct.mcp_wwn*
  %21 = call i32 @OSAL_MEM_ZERO(%struct.mcp_wwn* %20, i32 40)
  %22 = load i32, i32* @DRV_MSG_CODE_OEM_UPDATE_FCOE_FABRIC_NAME, align 4
  %23 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = bitcast %struct.mcp_wwn* %8 to %struct.ecore_mcp_mb_params*
  %25 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %7, i32 0, i32 1
  store %struct.ecore_mcp_mb_params* %24, %struct.ecore_mcp_mb_params** %25, align 8
  %26 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %7, i32 0, i32 0
  store i32 40, i32* %26, align 8
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %29 = bitcast %struct.ecore_mcp_mb_params* %7 to %struct.mcp_wwn*
  %30 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, %struct.mcp_wwn* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ECORE_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @DP_ERR(%struct.ecore_hwfn* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %3
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.mcp_wwn*, i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.mcp_wwn*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
