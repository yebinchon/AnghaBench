; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_mcp_trace_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_mcp_trace_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64 }
%struct.ecore_ptt = type { i32 }

@PLATFORM_ASIC = common dso_local global i64 0, align 8
@DBG_GRC_PARAM_NO_MCP = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mcp-trace\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MCP halt failed!\0A\00", align 1
@BYTES_IN_DWORD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"mcp_trace_data\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to resume MCP after halt!\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"mcp_trace_meta\00", align 1
@DBG_STATUS_NVRAM_GET_IMAGE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32*)* @ecore_mcp_trace_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mcp_trace_dump(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dbg_tools_data*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  store %struct.dbg_tools_data* %25, %struct.dbg_tools_data** %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %18, align 8
  %28 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PLATFORM_ASIC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %34 = load i32, i32* @DBG_GRC_PARAM_NO_MCP, align 4
  %35 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %5
  %39 = phi i1 [ false, %5 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %22, align 4
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %43 = call i32 @ecore_mcp_trace_get_data_info(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32* %15, i32* %16)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* @DBG_STATUS_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %21, align 4
  store i32 %48, i32* %6, align 4
  br label %210

49:                                               ; preds = %38
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %51 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @ecore_dump_common_global_params(%struct.ecore_hwfn* %50, %struct.ecore_ptt* %51, i32* %55, i32 %56, i32 1)
  %58 = load i32, i32* %20, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %20, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @ecore_dump_str_param(i32* %63, i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %49
  %71 = load i32, i32* %22, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %75 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %76 = call i32 @ecore_mcp_halt(%struct.ecore_hwfn* %74, %struct.ecore_ptt* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %23, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %84 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %83, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %73
  br label %86

86:                                               ; preds = %85, %70, %49
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @BYTES_IN_DWORD, align 4
  %92 = call i32 @DIV_ROUND_UP(i32 %90, i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @ecore_dump_section_hdr(i32* %96, i32 %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %20, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @ecore_dump_num_param(i32* %104, i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %20, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %20, align 4
  %110 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %111 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @BYTES_TO_DWORDS(i32 %117)
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn* %110, %struct.ecore_ptt* %111, i32* %115, i32 %116, i32 %118, i32 %119, i32 0)
  %121 = load i32, i32* %20, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %23, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %86
  %126 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %127 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %128 = call i64 @ecore_mcp_resume(%struct.ecore_hwfn* %126, %struct.ecore_ptt* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %132 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %131, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %125, %86
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @ecore_dump_section_hdr(i32* %137, i32 %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %20, align 4
  %142 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %143 = call i64 @OSAL_NVM_IS_ACCESS_ENABLED(%struct.ecore_hwfn* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %133
  %146 = load i32, i32* %22, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %145
  %149 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %150 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @ecore_mcp_trace_get_meta_info(%struct.ecore_hwfn* %149, %struct.ecore_ptt* %150, i32 %151, i32* %19, i32* %12, i32* %13)
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* @DBG_STATUS_OK, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @BYTES_TO_DWORDS(i32 %157)
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %156, %148
  br label %160

160:                                              ; preds = %159, %145, %133
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @ecore_dump_num_param(i32* %164, i32 %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %20, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %160
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %172
  %176 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %177 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = call i32 @ecore_mcp_trace_read_meta(%struct.ecore_hwfn* %176, %struct.ecore_ptt* %177, i32 %178, i32 %179, i32* %183)
  store i32 %184, i32* %21, align 4
  br label %185

185:                                              ; preds = %175, %172, %160
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* @DBG_STATUS_OK, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %20, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %20, align 4
  br label %193

193:                                              ; preds = %189, %185
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @ecore_dump_last_section(i32* %194, i32 %195, i32 %196)
  %198 = load i32, i32* %20, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %20, align 4
  %200 = load i32, i32* %20, align 4
  %201 = load i32*, i32** %11, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32, i32* %22, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %193
  %205 = load i32, i32* %21, align 4
  br label %208

206:                                              ; preds = %193
  %207 = load i32, i32* @DBG_STATUS_NVRAM_GET_IMAGE_FAILED, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %208, %47
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @ecore_grc_get_param(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_mcp_trace_get_data_info(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32*) #1

declare dso_local i32 @ecore_dump_common_global_params(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32) #1

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ecore_mcp_halt(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ecore_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

declare dso_local i64 @ecore_mcp_resume(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @OSAL_NVM_IS_ACCESS_ENABLED(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_trace_get_meta_info(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ecore_mcp_trace_read_meta(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*) #1

declare dso_local i32 @ecore_dump_last_section(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
