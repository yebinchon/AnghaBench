; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@PLATFORM_ASIC = common dso_local global i64 0, align 8
@MISC_REG_PORT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"grc-dump\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"num-lcids\00", align 1
@DBG_GRC_PARAM_NUM_LCIDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"num-ltids\00", align 1
@DBG_GRC_PARAM_NUM_LTIDS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"num-ports\00", align 1
@DBG_GRC_PARAM_DUMP_REGS = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_NO_MCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to mask parities using MFW\0A\00", align 1
@DBG_GRC_PARAM_PARITY_SAFE = common dso_local global i32 0, align 4
@DBG_STATUS_MCP_COULD_NOT_MASK_PRTY = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_IOR = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_VFC = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i32 0, align 4
@BLOCK_MCP = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_MCP = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_CM_CTX = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_RSS = common dso_local global i32 0, align 4
@NUM_BIG_RAM_TYPES = common dso_local global i32 0, align 4
@s_big_ram_defs = common dso_local global %struct.TYPE_4__* null, align 8
@DBG_GRC_PARAM_DUMP_PHY = common dso_local global i32 0, align 4
@CHIP_K2 = common dso_local global i64 0, align 8
@DBG_GRC_PARAM_DUMP_STATIC = common dso_local global i32 0, align 4
@DBG_BUS_STATE_IDLE = common dso_local global i64 0, align 8
@DBG_GRC_PARAM_UNSTALL = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32*)* @ecore_grc_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dbg_tools_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 0
  store %struct.dbg_tools_data* %21, %struct.dbg_tools_data** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %23 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PLATFORM_ASIC, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32*, i32** %11, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %5
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %33 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %34 = load i32, i32* @MISC_REG_PORT_MODE, align 4
  %35 = call i32 @ecore_rd(%struct.ecore_hwfn* %32, %struct.ecore_ptt* %33, i32 %34)
  switch i32 %35, label %39 [
    i32 0, label %36
    i32 1, label %37
    i32 2, label %38
  ]

36:                                               ; preds = %31
  store i32 1, i32* %16, align 4
  br label %39

37:                                               ; preds = %31
  store i32 2, i32* %16, align 4
  br label %39

38:                                               ; preds = %31
  store i32 4, i32* %16, align 4
  br label %39

39:                                               ; preds = %31, %38, %37, %36
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %41 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %42 = call i32 @ecore_update_blocks_reset_state(%struct.ecore_hwfn* %40, %struct.ecore_ptt* %41)
  br label %43

43:                                               ; preds = %39, %5
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %45 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ecore_dump_common_global_params(%struct.ecore_hwfn* %44, %struct.ecore_ptt* %45, i32* %49, i32 %50, i32 4)
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %17, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @ecore_dump_str_param(i32* %57, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %17, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %68 = load i32, i32* @DBG_GRC_PARAM_NUM_LCIDS, align 4
  %69 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %67, i32 %68)
  %70 = call i32 @ecore_dump_num_param(i32* %65, i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %17, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %79 = load i32, i32* @DBG_GRC_PARAM_NUM_LTIDS, align 4
  %80 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %78, i32 %79)
  %81 = call i32 @ecore_dump_num_param(i32* %76, i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %17, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @ecore_dump_num_param(i32* %87, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %17, align 4
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %94 = load i32, i32* @DBG_GRC_PARAM_DUMP_REGS, align 4
  %95 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %43
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %99 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @ecore_grc_dump_reset_regs(%struct.ecore_hwfn* %98, %struct.ecore_ptt* %99, i32* %103, i32 %104)
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %97, %43
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %113 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %114 = call i32 @ecore_grc_unreset_blocks(%struct.ecore_hwfn* %112, %struct.ecore_ptt* %113)
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %116 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %117 = call i32 @ecore_update_blocks_reset_state(%struct.ecore_hwfn* %115, %struct.ecore_ptt* %116)
  br label %118

118:                                              ; preds = %111, %108
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %121
  %125 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %126 = load i32, i32* @DBG_GRC_PARAM_NO_MCP, align 4
  %127 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %149, label %129

129:                                              ; preds = %124
  %130 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %131 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %132 = call i32 @ecore_mcp_mask_parities(%struct.ecore_hwfn* %130, %struct.ecore_ptt* %131, i32 1)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %129
  %139 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %140 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %139, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %141 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %142 = load i32, i32* @DBG_GRC_PARAM_PARITY_SAFE, align 4
  %143 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @DBG_STATUS_MCP_COULD_NOT_MASK_PRTY, align 4
  store i32 %146, i32* %6, align 4
  br label %438

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147, %129
  br label %149

149:                                              ; preds = %148, %124, %121, %118
  %150 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %151 = load i32, i32* @DBG_GRC_PARAM_DUMP_REGS, align 4
  %152 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %156 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @ecore_grc_dump_modified_regs(%struct.ecore_hwfn* %155, %struct.ecore_ptt* %156, i32* %160, i32 %161)
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %17, align 4
  br label %165

165:                                              ; preds = %154, %149
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %165
  %169 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %170 = load i32, i32* @DBG_GRC_PARAM_DUMP_IOR, align 4
  %171 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %175 = load i32, i32* @DBG_GRC_PARAM_DUMP_VFC, align 4
  %176 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173, %168
  %179 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %180 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %181 = call i32 @ecore_grc_stall_storms(%struct.ecore_hwfn* %179, %struct.ecore_ptt* %180, i32 1)
  br label %182

182:                                              ; preds = %178, %173, %165
  %183 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %184 = load i32, i32* @DBG_GRC_PARAM_DUMP_REGS, align 4
  %185 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %229

187:                                              ; preds = %182
  %188 = load i32, i32* @MAX_BLOCK_ID, align 4
  %189 = zext i32 %188 to i64
  %190 = call i8* @llvm.stacksave()
  store i8* %190, i8** %18, align 8
  %191 = alloca i32, i64 %189, align 16
  store i64 %189, i64* %19, align 8
  store i32 0, i32* %15, align 4
  br label %192

192:                                              ; preds = %200, %187
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* @MAX_BLOCK_ID, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %191, i64 %198
  store i32 1, i32* %199, align 4
  br label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %192

203:                                              ; preds = %192
  %204 = load i64, i64* @BLOCK_MCP, align 8
  %205 = getelementptr inbounds i32, i32* %191, i64 %204
  store i32 0, i32* %205, align 4
  %206 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %207 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @OSAL_NULL, align 4
  %214 = load i32, i32* @OSAL_NULL, align 4
  %215 = call i32 @ecore_grc_dump_registers(%struct.ecore_hwfn* %206, %struct.ecore_ptt* %207, i32* %211, i32 %212, i32* %191, i32 %213, i32 %214)
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %17, align 4
  %218 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %219 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @ecore_grc_dump_special_regs(%struct.ecore_hwfn* %218, %struct.ecore_ptt* %219, i32* %223, i32 %224)
  %226 = load i32, i32* %17, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %17, align 4
  %228 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %228)
  br label %229

229:                                              ; preds = %203, %182
  %230 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %231 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %232 = load i32*, i32** %9, align 8
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @ecore_grc_dump_memories(%struct.ecore_hwfn* %230, %struct.ecore_ptt* %231, i32* %235, i32 %236)
  %238 = load i32, i32* %17, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %17, align 4
  %240 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %241 = load i32, i32* @DBG_GRC_PARAM_DUMP_MCP, align 4
  %242 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %229
  %245 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %246 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* %17, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @ecore_grc_dump_mcp(%struct.ecore_hwfn* %245, %struct.ecore_ptt* %246, i32* %250, i32 %251)
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %17, align 4
  br label %255

255:                                              ; preds = %244, %229
  %256 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %257 = load i32, i32* @DBG_GRC_PARAM_DUMP_CM_CTX, align 4
  %258 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %255
  %261 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %262 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %263 = load i32*, i32** %9, align 8
  %264 = load i32, i32* %17, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %10, align 4
  %268 = call i32 @ecore_grc_dump_ctx(%struct.ecore_hwfn* %261, %struct.ecore_ptt* %262, i32* %266, i32 %267)
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %17, align 4
  br label %271

271:                                              ; preds = %260, %255
  %272 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %273 = load i32, i32* @DBG_GRC_PARAM_DUMP_RSS, align 4
  %274 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %272, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %271
  %277 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %278 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %279 = load i32*, i32** %9, align 8
  %280 = load i32, i32* %17, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %10, align 4
  %284 = call i32 @ecore_grc_dump_rss(%struct.ecore_hwfn* %277, %struct.ecore_ptt* %278, i32* %282, i32 %283)
  %285 = load i32, i32* %17, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %17, align 4
  br label %287

287:                                              ; preds = %276, %271
  store i32 0, i32* %15, align 4
  br label %288

288:                                              ; preds = %315, %287
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* @NUM_BIG_RAM_TYPES, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %318

292:                                              ; preds = %288
  %293 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_big_ram_defs, align 8
  %295 = load i32, i32* %15, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %293, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %292
  %303 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %304 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %305 = load i32*, i32** %9, align 8
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* %15, align 4
  %311 = call i32 @ecore_grc_dump_big_ram(%struct.ecore_hwfn* %303, %struct.ecore_ptt* %304, i32* %308, i32 %309, i32 %310)
  %312 = load i32, i32* %17, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %17, align 4
  br label %314

314:                                              ; preds = %302, %292
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %15, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %15, align 4
  br label %288

318:                                              ; preds = %288
  %319 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %320 = load i32, i32* @DBG_GRC_PARAM_DUMP_IOR, align 4
  %321 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %319, i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %334

323:                                              ; preds = %318
  %324 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %325 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %326 = load i32*, i32** %9, align 8
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %10, align 4
  %331 = call i32 @ecore_grc_dump_iors(%struct.ecore_hwfn* %324, %struct.ecore_ptt* %325, i32* %329, i32 %330)
  %332 = load i32, i32* %17, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %17, align 4
  br label %334

334:                                              ; preds = %323, %318
  %335 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %336 = load i32, i32* @DBG_GRC_PARAM_DUMP_VFC, align 4
  %337 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %335, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %350

339:                                              ; preds = %334
  %340 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %341 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %342 = load i32*, i32** %9, align 8
  %343 = load i32, i32* %17, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %10, align 4
  %347 = call i32 @ecore_grc_dump_vfc(%struct.ecore_hwfn* %340, %struct.ecore_ptt* %341, i32* %345, i32 %346)
  %348 = load i32, i32* %17, align 4
  %349 = add nsw i32 %348, %347
  store i32 %349, i32* %17, align 4
  br label %350

350:                                              ; preds = %339, %334
  %351 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %352 = load i32, i32* @DBG_GRC_PARAM_DUMP_PHY, align 4
  %353 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %351, i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %378

355:                                              ; preds = %350
  %356 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %357 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @CHIP_K2, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %378

361:                                              ; preds = %355
  %362 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %363 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @PLATFORM_ASIC, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %378

367:                                              ; preds = %361
  %368 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %369 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %370 = load i32*, i32** %9, align 8
  %371 = load i32, i32* %17, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %10, align 4
  %375 = call i32 @ecore_grc_dump_phy(%struct.ecore_hwfn* %368, %struct.ecore_ptt* %369, i32* %373, i32 %374)
  %376 = load i32, i32* %17, align 4
  %377 = add nsw i32 %376, %375
  store i32 %377, i32* %17, align 4
  br label %378

378:                                              ; preds = %367, %361, %355, %350
  %379 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %380 = load i32, i32* @DBG_GRC_PARAM_DUMP_STATIC, align 4
  %381 = call i64 @ecore_grc_is_included(%struct.ecore_hwfn* %379, i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %401

383:                                              ; preds = %378
  %384 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %385 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @DBG_BUS_STATE_IDLE, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %401

390:                                              ; preds = %383
  %391 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %392 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %393 = load i32*, i32** %9, align 8
  %394 = load i32, i32* %17, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %10, align 4
  %398 = call i32 @ecore_grc_dump_static_debug(%struct.ecore_hwfn* %391, %struct.ecore_ptt* %392, i32* %396, i32 %397)
  %399 = load i32, i32* %17, align 4
  %400 = add nsw i32 %399, %398
  store i32 %400, i32* %17, align 4
  br label %401

401:                                              ; preds = %390, %383, %378
  %402 = load i32*, i32** %9, align 8
  %403 = load i32, i32* %17, align 4
  %404 = load i32, i32* %10, align 4
  %405 = call i32 @ecore_dump_last_section(i32* %402, i32 %403, i32 %404)
  %406 = load i32, i32* %17, align 4
  %407 = add nsw i32 %406, %405
  store i32 %407, i32* %17, align 4
  %408 = load i32, i32* %10, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %434

410:                                              ; preds = %401
  %411 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %412 = load i32, i32* @DBG_GRC_PARAM_UNSTALL, align 4
  %413 = call i32 @ecore_grc_get_param(%struct.ecore_hwfn* %411, i32 %412)
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %410
  %416 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %417 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %418 = call i32 @ecore_grc_stall_storms(%struct.ecore_hwfn* %416, %struct.ecore_ptt* %417, i32 0)
  br label %419

419:                                              ; preds = %415, %410
  %420 = load i32, i32* %13, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %419
  %423 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %424 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %425 = call i32 @ecore_grc_clear_all_prty(%struct.ecore_hwfn* %423, %struct.ecore_ptt* %424)
  br label %426

426:                                              ; preds = %422, %419
  %427 = load i32, i32* %14, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %426
  %430 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %431 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %432 = call i32 @ecore_mcp_mask_parities(%struct.ecore_hwfn* %430, %struct.ecore_ptt* %431, i32 0)
  br label %433

433:                                              ; preds = %429, %426
  br label %434

434:                                              ; preds = %433, %401
  %435 = load i32, i32* %17, align 4
  %436 = load i32*, i32** %11, align 8
  store i32 %435, i32* %436, align 4
  %437 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %437, i32* %6, align 4
  br label %438

438:                                              ; preds = %434, %145
  %439 = load i32, i32* %6, align 4
  ret i32 %439
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_update_blocks_reset_state(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_dump_common_global_params(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32) #1

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i32 @ecore_grc_get_param(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @ecore_grc_is_included(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_grc_dump_reset_regs(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_grc_unreset_blocks(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_mcp_mask_parities(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_grc_dump_modified_regs(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_grc_stall_storms(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ecore_grc_dump_registers(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ecore_grc_dump_special_regs(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ecore_grc_dump_memories(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_grc_dump_mcp(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_grc_dump_ctx(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_grc_dump_rss(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_grc_dump_big_ram(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32) #1

declare dso_local i32 @ecore_grc_dump_iors(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_grc_dump_vfc(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_grc_dump_phy(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_grc_dump_static_debug(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32) #1

declare dso_local i32 @ecore_dump_last_section(i32*, i32, i32) #1

declare dso_local i32 @ecore_grc_clear_all_prty(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
