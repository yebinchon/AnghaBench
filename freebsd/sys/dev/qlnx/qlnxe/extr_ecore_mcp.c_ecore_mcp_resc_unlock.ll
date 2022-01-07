; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resc_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_resc_unlock_params = type { i32, i32, i64 }

@RESOURCE_OPCODE_FORCE_RELEASE = common dso_local global i32 0, align 4
@RESOURCE_OPCODE_RELEASE = common dso_local global i32 0, align 4
@RESOURCE_CMD_REQ_RESC = common dso_local global i32 0, align 4
@RESOURCE_CMD_REQ_OPCODE = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Resource unlock request: param 0x%08x [opcode %d, resource %d]\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@RESOURCE_CMD_RSP_OPCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Resource unlock response: mcp_param 0x%08x [opcode %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Resource unlock request for an already released resource [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"Unexpected opcode in resource unlock response [mcp_param 0x%08x, opcode %d]\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_resc_unlock(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_resc_unlock_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_resc_unlock_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_resc_unlock_params* %2, %struct.ecore_resc_unlock_params** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** %7, align 8
  %14 = getelementptr inbounds %struct.ecore_resc_unlock_params, %struct.ecore_resc_unlock_params* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @RESOURCE_OPCODE_FORCE_RELEASE, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @RESOURCE_OPCODE_RELEASE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @RESOURCE_CMD_REQ_RESC, align 4
  %25 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** %7, align 8
  %26 = getelementptr inbounds %struct.ecore_resc_unlock_params, %struct.ecore_resc_unlock_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @SET_MFW_FIELD(i32 %23, i32 %24, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @RESOURCE_CMD_REQ_OPCODE, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @SET_MFW_FIELD(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %34 = load i32, i32* @ECORE_MSG_SP, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** %7, align 8
  %38 = getelementptr inbounds %struct.ecore_resc_unlock_params, %struct.ecore_resc_unlock_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %33, i32 %34, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %39)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ecore_mcp_resource_cmd(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32 %43, i32* %9, i32* %10)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @ECORE_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %21
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  br label %80

50:                                               ; preds = %21
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @RESOURCE_CMD_RSP_OPCODE, align 4
  %53 = call i32 @GET_MFW_FIELD(i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %55 = load i32, i32* @ECORE_MSG_SP, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %54, i32 %55, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  switch i32 %59, label %72 [
    i32 129, label %60
    i32 130, label %66
    i32 128, label %69
  ]

60:                                               ; preds = %50
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %62 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** %7, align 8
  %63 = getelementptr inbounds %struct.ecore_resc_unlock_params, %struct.ecore_resc_unlock_params* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @DP_INFO(%struct.ecore_hwfn* %61, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %50, %60
  %67 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** %7, align 8
  %68 = getelementptr inbounds %struct.ecore_resc_unlock_params, %struct.ecore_resc_unlock_params* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %78

69:                                               ; preds = %50
  %70 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** %7, align 8
  %71 = getelementptr inbounds %struct.ecore_resc_unlock_params, %struct.ecore_resc_unlock_params* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %78

72:                                               ; preds = %50
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %73, i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %69, %66
  %79 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %72, %48
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @SET_MFW_FIELD(i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ecore_mcp_resource_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32*, i32*) #1

declare dso_local i32 @GET_MFW_FIELD(i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
