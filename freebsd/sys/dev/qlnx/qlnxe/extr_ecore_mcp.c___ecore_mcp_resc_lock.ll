; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c___ecore_mcp_resc_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c___ecore_mcp_resc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_resc_lock_params = type { i32, i32, i32, i8* }

@RESOURCE_OPCODE_REQ = common dso_local global i32 0, align 4
@RESOURCE_OPCODE_REQ_WO_AGING = common dso_local global i32 0, align 4
@RESOURCE_OPCODE_REQ_W_AGING = common dso_local global i32 0, align 4
@RESOURCE_CMD_REQ_RESC = common dso_local global i32 0, align 4
@RESOURCE_CMD_REQ_OPCODE = common dso_local global i32 0, align 4
@RESOURCE_CMD_REQ_AGE = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Resource lock request: param 0x%08x [age %d, opcode %d, resource %d]\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@RESOURCE_CMD_RSP_OWNER = common dso_local global i32 0, align 4
@RESOURCE_CMD_RSP_OPCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Resource lock response: mcp_param 0x%08x [opcode %d, owner %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Unexpected opcode in resource lock response [mcp_param 0x%08x, opcode %d]\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_resc_lock_params*)* @__ecore_mcp_resc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ecore_mcp_resc_lock(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_resc_lock_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_resc_lock_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_resc_lock_params* %2, %struct.ecore_resc_lock_params** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %21 [
    i32 131, label %17
    i32 130, label %19
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @RESOURCE_OPCODE_REQ, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @RESOURCE_OPCODE_REQ_WO_AGING, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @RESOURCE_OPCODE_REQ_W_AGING, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %24 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %21, %19, %17
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RESOURCE_CMD_REQ_RESC, align 4
  %29 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %30 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SET_MFW_FIELD(i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RESOURCE_CMD_REQ_OPCODE, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @SET_MFW_FIELD(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RESOURCE_CMD_REQ_AGE, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @SET_MFW_FIELD(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %42 = load i32, i32* @ECORE_MSG_SP, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %47 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %41, i32 %42, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %48)
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %51 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ecore_mcp_resource_cmd(%struct.ecore_hwfn* %50, %struct.ecore_ptt* %51, i32 %52, i32* %9, i32* %10)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @ECORE_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %26
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %4, align 4
  br label %93

59:                                               ; preds = %26
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @RESOURCE_CMD_RSP_OWNER, align 4
  %62 = call i8* @GET_MFW_FIELD(i32 %60, i32 %61)
  %63 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %64 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @RESOURCE_CMD_RSP_OPCODE, align 4
  %67 = call i8* @GET_MFW_FIELD(i32 %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %70 = load i32, i32* @ECORE_MSG_SP, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %74 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %69, i32 %70, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %76)
  %78 = load i32, i32* %11, align 4
  switch i32 %78, label %85 [
    i32 128, label %79
    i32 129, label %82
  ]

79:                                               ; preds = %59
  %80 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %81 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  br label %91

82:                                               ; preds = %59
  %83 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %84 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  br label %91

85:                                               ; preds = %59
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %86, i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %90, i32* %4, align 4
  br label %93

91:                                               ; preds = %82, %79
  %92 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %85, %57
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @SET_MFW_FIELD(i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ecore_mcp_resource_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32*, i32*) #1

declare dso_local i8* @GET_MFW_FIELD(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
