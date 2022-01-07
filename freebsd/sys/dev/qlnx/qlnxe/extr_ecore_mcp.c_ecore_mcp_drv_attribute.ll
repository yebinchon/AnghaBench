; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_drv_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_drv_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_drv_attr = type { i32, i32, i32, i32, i32 }
%struct.attribute_cmd_write_stc = type { i32, i64, i32, %struct.attribute_cmd_write_stc*, i32, i32, i32, i32, i32 }
%struct.ecore_mcp_mb_params = type { i32, i64, i32, %struct.ecore_mcp_mb_params*, i32, i32, i32, i32, i32 }

@ATTRIBUTE_CMD_READ = common dso_local global i32 0, align 4
@ATTRIBUTE_CMD_WRITE = common dso_local global i32 0, align 4
@ATTRIBUTE_CMD_READ_CLEAR = common dso_local global i32 0, align 4
@ATTRIBUTE_CMD_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown attribute command %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@DRV_MSG_CODE_ATTRIBUTE = common dso_local global i32 0, align 4
@DRV_MB_PARAM_ATTRIBUTE_KEY = common dso_local global i32 0, align 4
@DRV_MB_PARAM_ATTRIBUTE_CMD = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@FW_MSG_CODE_UNSUPPORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"The attribute command is not supported by the MFW\0A\00", align 1
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@FW_MSG_CODE_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [79 x i8] c"Failed to send an attribute command [mcp_resp 0x%x, attr_cmd %d, attr_num %d]\0A\00", align 1
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [111 x i8] c"Attribute Command: cmd %d [mfw_cmd %d], num %d, in={val 0x%08x, mask 0x%08x, offset 0x%08x}, out={val 0x%08x}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_drv_attribute(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_mcp_drv_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_mcp_drv_attr*, align 8
  %8 = alloca %struct.attribute_cmd_write_stc, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_mcp_mb_params, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_mcp_drv_attr* %2, %struct.ecore_mcp_drv_attr** %7, align 8
  %12 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 130, label %15
    i32 128, label %17
    i32 129, label %19
    i32 131, label %21
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @ATTRIBUTE_CMD_READ, align 4
  store i32 %16, i32* %9, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load i32, i32* @ATTRIBUTE_CMD_WRITE, align 4
  store i32 %18, i32* %9, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load i32, i32* @ATTRIBUTE_CMD_READ_CLEAR, align 4
  store i32 %20, i32* %9, align 4
  br label %30

21:                                               ; preds = %3
  %22 = load i32, i32* @ATTRIBUTE_CMD_CLEAR, align 4
  store i32 %22, i32* %9, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %25 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %26 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %24, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %142

30:                                               ; preds = %21, %19, %17, %15
  %31 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %10, i32 56)
  %32 = load i32, i32* @DRV_MSG_CODE_ATTRIBUTE, align 4
  %33 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 8
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DRV_MB_PARAM_ATTRIBUTE_KEY, align 4
  %37 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %38 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SET_MFW_FIELD(i32 %35, i32 %36, i32 %39)
  %41 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DRV_MB_PARAM_ATTRIBUTE_CMD, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @SET_MFW_FIELD(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %47 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %50, label %68

50:                                               ; preds = %30
  %51 = bitcast %struct.attribute_cmd_write_stc* %8 to %struct.ecore_mcp_mb_params*
  %52 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %51, i32 56)
  %53 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.attribute_cmd_write_stc, %struct.attribute_cmd_write_stc* %8, i32 0, i32 6
  store i32 %55, i32* %56, align 8
  %57 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %58 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.attribute_cmd_write_stc, %struct.attribute_cmd_write_stc* %8, i32 0, i32 5
  store i32 %59, i32* %60, align 4
  %61 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %62 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.attribute_cmd_write_stc, %struct.attribute_cmd_write_stc* %8, i32 0, i32 4
  store i32 %63, i32* %64, align 8
  %65 = bitcast %struct.attribute_cmd_write_stc* %8 to %struct.ecore_mcp_mb_params*
  %66 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 3
  store %struct.ecore_mcp_mb_params* %65, %struct.ecore_mcp_mb_params** %66, align 8
  %67 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 0
  store i32 56, i32* %67, align 8
  br label %68

68:                                               ; preds = %50, %30
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %70 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %71 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %69, %struct.ecore_ptt* %70, %struct.ecore_mcp_mb_params* %10)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @ECORE_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %142

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FW_MSG_CODE_UNSUPPORTED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %84 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %83, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %85, i32* %4, align 4
  br label %142

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FW_MSG_CODE_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %93 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %96 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %99 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %92, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %94, i32 %97, i32 %100)
  %102 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %102, i32* %4, align 4
  br label %142

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %106 = load i32, i32* @ECORE_MSG_SP, align 4
  %107 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %108 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %112 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %115 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %118 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %121 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %105, i32 %106, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110, i32 %113, i32 %116, i32 %119, i32 %122, i32 %124)
  %126 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %127 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 130
  br i1 %129, label %135, label %130

130:                                              ; preds = %104
  %131 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %132 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 129
  br i1 %134, label %135, label %140

135:                                              ; preds = %130, %104
  %136 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %10, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ecore_mcp_drv_attr*, %struct.ecore_mcp_drv_attr** %7, align 8
  %139 = getelementptr inbounds %struct.ecore_mcp_drv_attr, %struct.ecore_mcp_drv_attr* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %91, %82, %75, %23
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params*, i32) #1

declare dso_local i32 @SET_MFW_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, ...) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
