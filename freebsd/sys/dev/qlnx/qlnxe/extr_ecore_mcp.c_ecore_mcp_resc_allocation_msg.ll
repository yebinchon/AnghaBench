; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resc_allocation_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resc_allocation_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_resc_alloc_in_params = type { i32, i32, i32 }
%struct.ecore_resc_alloc_out_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_mcp_mb_params = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params* }
%struct.resource_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.resource_info*, %struct.resource_info* }

@RESOURCE_NUM_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Failed to match resource %d [%s] with the MFW resources\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unexpected resource alloc command [0x%08x]\0A\00", align 1
@ECORE_RESC_ALLOC_VERSION = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"Resource message request: cmd 0x%08x, res_id %d [%s], hsi_version %d.%d, val 0x%x\0A\00", align 1
@DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR = common dso_local global i32 0, align 4
@DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [114 x i8] c"Resource message response: mfw_hsi_version %d.%d, num 0x%x, start 0x%x, vf_num 0x%x, vf_start 0x%x, flags 0x%08x\0A\00", align 1
@FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR = common dso_local global i32 0, align 4
@FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_out_params*)* @ecore_mcp_resc_allocation_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mcp_resc_allocation_msg(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_resc_alloc_in_params* %2, %struct.ecore_resc_alloc_out_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.ecore_resc_alloc_in_params*, align 8
  %9 = alloca %struct.ecore_resc_alloc_out_params*, align 8
  %10 = alloca %struct.ecore_mcp_mb_params, align 8
  %11 = alloca %struct.resource_info, align 8
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.ecore_resc_alloc_in_params* %2, %struct.ecore_resc_alloc_in_params** %8, align 8
  store %struct.ecore_resc_alloc_out_params* %3, %struct.ecore_resc_alloc_out_params** %9, align 8
  %13 = call i32 @OSAL_MEM_ZERO(%struct.resource_info* %11, i32 72)
  %14 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %15 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ecore_mcp_get_mfw_res_id(i32 %16)
  %18 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RESOURCE_NUM_INVALID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %25 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %29 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ecore_hw_get_resc_name(i32 %30)
  %32 = call i32 (%struct.ecore_hwfn*, i8*, i32, ...) @DP_ERR(%struct.ecore_hwfn* %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %160

34:                                               ; preds = %4
  %35 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %36 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %44 [
    i32 128, label %38
    i32 129, label %43
  ]

38:                                               ; preds = %34
  %39 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %40 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %34, %38
  br label %51

44:                                               ; preds = %34
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %46 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %47 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.ecore_hwfn*, i8*, i32, ...) @DP_ERR(%struct.ecore_hwfn* %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %50, i32* %5, align 4
  br label %160

51:                                               ; preds = %43
  %52 = bitcast %struct.ecore_mcp_mb_params* %10 to %struct.resource_info*
  %53 = call i32 @OSAL_MEM_ZERO(%struct.resource_info* %52, i32 72)
  %54 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %55 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* @ECORE_RESC_ALLOC_VERSION, align 4
  %59 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 11
  store i32 %58, i32* %59, align 8
  %60 = bitcast %struct.resource_info* %11 to %struct.ecore_mcp_mb_params*
  %61 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 12
  store %struct.ecore_mcp_mb_params* %60, %struct.ecore_mcp_mb_params** %61, align 8
  %62 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 2
  store i32 72, i32* %62, align 4
  %63 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 12
  %64 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %63, align 8
  %65 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 13
  store %struct.ecore_mcp_mb_params* %64, %struct.ecore_mcp_mb_params** %65, align 8
  %66 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %70 = load i32, i32* @ECORE_MSG_SP, align 4
  %71 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %72 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %75 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %78 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ecore_hw_get_resc_name(i32 %79)
  %81 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 11
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR, align 4
  %84 = call i32 @GET_MFW_FIELD(i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 11
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR, align 4
  %88 = call i32 @GET_MFW_FIELD(i32 %86, i32 %87)
  %89 = load %struct.ecore_resc_alloc_in_params*, %struct.ecore_resc_alloc_in_params** %8, align 8
  %90 = getelementptr inbounds %struct.ecore_resc_alloc_in_params, %struct.ecore_resc_alloc_in_params* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %69, i32 %70, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76, i32 %80, i32 %84, i32 %88, i32 %91)
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %94 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %95 = bitcast %struct.ecore_mcp_mb_params* %10 to %struct.resource_info*
  %96 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %93, %struct.ecore_ptt* %94, %struct.resource_info* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @ECORE_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %51
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %160

102:                                              ; preds = %51
  %103 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 10
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %106 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 9
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %110 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %114 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %118 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %122 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %126 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %130 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %132 = load i32, i32* @ECORE_MSG_SP, align 4
  %133 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %134 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR, align 4
  %137 = call i32 @GET_MFW_FIELD(i32 %135, i32 %136)
  %138 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %139 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR, align 4
  %142 = call i32 @GET_MFW_FIELD(i32 %140, i32 %141)
  %143 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %144 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %147 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %150 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %153 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ecore_resc_alloc_out_params*, %struct.ecore_resc_alloc_out_params** %9, align 8
  %156 = getelementptr inbounds %struct.ecore_resc_alloc_out_params, %struct.ecore_resc_alloc_out_params* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %131, i32 %132, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %142, i32 %145, i32 %148, i32 %151, i32 %154, i32 %157)
  %159 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %102, %100, %44, %23
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.resource_info*, i32) #1

declare dso_local i64 @ecore_mcp_get_mfw_res_id(i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32, ...) #1

declare dso_local i32 @ecore_hw_get_resc_name(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @GET_MFW_FIELD(i32, i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.resource_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
