; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_6__, i64, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.ecore_mcp_function_info }
%struct.ecore_mcp_function_info = type { i64 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_hw_init_params = type { i64, i32, i32, i32, i64, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@MODE_MF_SD = common dso_local global i32 0, align 4
@ECORE_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Configuring LLH_FUNC_TAG\0A\00", align 1
@NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Configuring LLH_FUNC_FILTER_HDR_SEL\0A\00", align 1
@NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET = common dso_local global i32 0, align 4
@MODE_MF_SI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Configuring TAGMAC_CLS_TYPE\0A\00", align 1
@NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET = common dso_local global i32 0, align 4
@PRS_REG_SEARCH_TCP_RT_OFFSET = common dso_local global i32 0, align 4
@ECORE_PCI_ISCSI = common dso_local global i64 0, align 8
@PRS_REG_SEARCH_FCOE_RT_OFFSET = common dso_local global i32 0, align 4
@ECORE_PCI_FCOE = common dso_local global i64 0, align 8
@PRS_REG_SEARCH_ROCE_RT_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"pf_phase\00", align 1
@PHASE_PF = common dso_local global i32 0, align 4
@PHASE_QM_PF = common dso_local global i32 0, align 4
@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [77 x i8] c"Failed to find the PCI Express Capability structure in the PCI config space\0A\00", align 1
@ECORE_IO = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i64 0, align 8
@ECORE_ENABLE_RLX_ODR = common dso_local global i64 0, align 8
@PCI_EXP_DEVCTL_RELAX_EN = common dso_local global i32 0, align 4
@ECORE_DISABLE_RLX_ODR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"PCI relax ordering configured by MFW\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Function start ramrod failed\0A\00", align 1
@PRS_REG_SEARCH_TAG1 = common dso_local global i32 0, align 4
@ECORE_MSG_STORAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"PRS_REG_SEARCH_TAG1: %x\0A\00", align 1
@PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"PRS_REG_SEARCH registers after start PFn\0A\00", align 1
@PRS_REG_SEARCH_TCP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"PRS_REG_SEARCH_TCP: %x\0A\00", align 1
@PRS_REG_SEARCH_UDP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"PRS_REG_SEARCH_UDP: %x\0A\00", align 1
@PRS_REG_SEARCH_FCOE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"PRS_REG_SEARCH_FCOE: %x\0A\00", align 1
@PRS_REG_SEARCH_ROCE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"PRS_REG_SEARCH_ROCE: %x\0A\00", align 1
@PRS_REG_SEARCH_TCP_FIRST_FRAG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"PRS_REG_SEARCH_TCP_FIRST_FRAG: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, %struct.ecore_hw_init_params*)* @ecore_hw_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_hw_init_pf(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, %struct.ecore_hw_init_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hw_init_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ecore_mcp_function_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ecore_hw_init_params* %3, %struct.ecore_hw_init_params** %9, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.ecore_mcp_function_info* %28, %struct.ecore_mcp_function_info** %15, align 8
  %29 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %15, align 8
  %30 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %15, align 8
  %35 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  br label %40

40:                                               ; preds = %33, %24
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 100000, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %4
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %46 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %47 = call i32 @ecore_cxt_hw_init_pf(%struct.ecore_hwfn* %45, %struct.ecore_ptt* %46)
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %49 = call i32 @ecore_int_igu_init_rt(%struct.ecore_hwfn* %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @MODE_MF_SD, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %44
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %57 = load i32, i32* @ECORE_MSG_HW, align 4
  %58 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %56, i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %60 = load i32, i32* @NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET, align 4
  %61 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %59, i32 %60, i32 1)
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %63 = load i32, i32* @NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET, align 4
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %65 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %62, i32 %63, i32 %67)
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %70 = load i32, i32* @ECORE_MSG_HW, align 4
  %71 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %69, i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %73 = load i32, i32* @NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET, align 4
  %74 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %55, %44
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MODE_MF_SI, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %83 = load i32, i32* @ECORE_MSG_HW, align 4
  %84 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %82, i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %86 = load i32, i32* @NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET, align 4
  %87 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %85, i32 %86, i32 1)
  br label %88

88:                                               ; preds = %81, %75
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %90 = load i32, i32* @PRS_REG_SEARCH_TCP_RT_OFFSET, align 4
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %92 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ECORE_PCI_ISCSI, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %89, i32 %90, i32 %98)
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %101 = load i32, i32* @PRS_REG_SEARCH_FCOE_RT_OFFSET, align 4
  %102 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %103 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ECORE_PCI_FCOE, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 1, i32 0
  %110 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %100, i32 %101, i32 %109)
  %111 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %112 = load i32, i32* @PRS_REG_SEARCH_ROCE_RT_OFFSET, align 4
  %113 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %111, i32 %112, i32 0)
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %115 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %119 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @OSAL_BEFORE_PF_START(i8* %117, i32 %120)
  %122 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %123 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %124 = call i32 @ecore_dmae_sanity(%struct.ecore_hwfn* %122, %struct.ecore_ptt* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %88
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %5, align 4
  br label %373

129:                                              ; preds = %88
  %130 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %131 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %132 = load i32, i32* @PHASE_PF, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @ecore_init_run(%struct.ecore_hwfn* %130, %struct.ecore_ptt* %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %5, align 4
  br label %373

140:                                              ; preds = %129
  %141 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %142 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %143 = load i32, i32* @PHASE_QM_PF, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @ecore_init_run(%struct.ecore_hwfn* %141, %struct.ecore_ptt* %142, i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %5, align 4
  br label %373

151:                                              ; preds = %140
  %152 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %153 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %154 = call i32 @ecore_int_igu_init_pure_rt(%struct.ecore_hwfn* %152, %struct.ecore_ptt* %153, i32 1, i32 1)
  %155 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %156 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %159 = call i32 @OSAL_PCI_FIND_CAPABILITY(i64 %157, i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %151
  %163 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %164 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %163, i32 1, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  %165 = load i32, i32* @ECORE_IO, align 4
  store i32 %165, i32* %5, align 4
  br label %373

166:                                              ; preds = %151
  %167 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %168 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @OSAL_PCI_READ_CONFIG_WORD(i64 %169, i64 %173, i32* %13)
  %175 = load %struct.ecore_hw_init_params*, %struct.ecore_hw_init_params** %9, align 8
  %176 = getelementptr inbounds %struct.ecore_hw_init_params, %struct.ecore_hw_init_params* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @ECORE_ENABLE_RLX_ODR, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %166
  %181 = load i32, i32* @PCI_EXP_DEVCTL_RELAX_EN, align 4
  %182 = load i32, i32* %13, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %13, align 4
  %184 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %185 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %190 = add nsw i64 %188, %189
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @OSAL_PCI_WRITE_CONFIG_WORD(i64 %186, i64 %190, i32 %191)
  br label %236

193:                                              ; preds = %166
  %194 = load %struct.ecore_hw_init_params*, %struct.ecore_hw_init_params** %9, align 8
  %195 = getelementptr inbounds %struct.ecore_hw_init_params, %struct.ecore_hw_init_params* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @ECORE_DISABLE_RLX_ODR, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %193
  %200 = load i32, i32* @PCI_EXP_DEVCTL_RELAX_EN, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %13, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %13, align 4
  %204 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %205 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @OSAL_PCI_WRITE_CONFIG_WORD(i64 %206, i64 %210, i32 %211)
  br label %235

213:                                              ; preds = %193
  %214 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %215 = call i64 @ecore_mcp_rlx_odr_supported(%struct.ecore_hwfn* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %219 = call i32 @DP_INFO(%struct.ecore_hwfn* %218, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %234

220:                                              ; preds = %213
  %221 = load i32, i32* @PCI_EXP_DEVCTL_RELAX_EN, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %13, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %13, align 4
  %225 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %226 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %231 = add nsw i64 %229, %230
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @OSAL_PCI_WRITE_CONFIG_WORD(i64 %227, i64 %231, i32 %232)
  br label %234

234:                                              ; preds = %220, %217
  br label %235

235:                                              ; preds = %234, %199
  br label %236

236:                                              ; preds = %235, %180
  %237 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %238 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %239 = call i32 @ecore_hw_init_pf_doorbell_bar(%struct.ecore_hwfn* %237, %struct.ecore_ptt* %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @ECORE_SUCCESS, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %236
  %244 = load i32, i32* %12, align 4
  store i32 %244, i32* %5, align 4
  br label %373

245:                                              ; preds = %236
  %246 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %247 = call i64 @IS_LEAD_HWFN(%struct.ecore_hwfn* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %245
  %250 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %251 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %252 = load %struct.ecore_hw_init_params*, %struct.ecore_hw_init_params** %9, align 8
  %253 = getelementptr inbounds %struct.ecore_hw_init_params, %struct.ecore_hw_init_params* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @ecore_llh_hw_init_pf(%struct.ecore_hwfn* %250, %struct.ecore_ptt* %251, i32 %254)
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %12, align 4
  %257 = load i32, i32* @ECORE_SUCCESS, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %249
  %260 = load i32, i32* %12, align 4
  store i32 %260, i32* %5, align 4
  br label %373

261:                                              ; preds = %249
  br label %262

262:                                              ; preds = %261, %245
  %263 = load %struct.ecore_hw_init_params*, %struct.ecore_hw_init_params** %9, align 8
  %264 = getelementptr inbounds %struct.ecore_hw_init_params, %struct.ecore_hw_init_params* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %371

267:                                              ; preds = %262
  %268 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %269 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %270 = load %struct.ecore_hw_init_params*, %struct.ecore_hw_init_params** %9, align 8
  %271 = getelementptr inbounds %struct.ecore_hw_init_params, %struct.ecore_hw_init_params* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @ecore_int_igu_enable(%struct.ecore_hwfn* %268, %struct.ecore_ptt* %269, i32 %272)
  store i32 %273, i32* %12, align 4
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* @ECORE_SUCCESS, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %267
  %278 = load i32, i32* %12, align 4
  store i32 %278, i32* %5, align 4
  br label %373

279:                                              ; preds = %267
  %280 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %281 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %282 = load %struct.ecore_hw_init_params*, %struct.ecore_hw_init_params** %9, align 8
  %283 = getelementptr inbounds %struct.ecore_hw_init_params, %struct.ecore_hw_init_params* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.ecore_hw_init_params*, %struct.ecore_hw_init_params** %9, align 8
  %286 = getelementptr inbounds %struct.ecore_hw_init_params, %struct.ecore_hw_init_params* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @ecore_sp_pf_start(%struct.ecore_hwfn* %280, %struct.ecore_ptt* %281, i32 %284, i32 %287)
  store i32 %288, i32* %12, align 4
  %289 = load i32, i32* %12, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %279
  %292 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %293 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %292, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %294 = load i32, i32* %12, align 4
  store i32 %294, i32* %5, align 4
  br label %373

295:                                              ; preds = %279
  %296 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %297 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %298 = load i32, i32* @PRS_REG_SEARCH_TAG1, align 4
  %299 = call i32 @ecore_rd(%struct.ecore_hwfn* %296, %struct.ecore_ptt* %297, i32 %298)
  store i32 %299, i32* %11, align 4
  %300 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %301 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %302 = load i32, i32* %11, align 4
  %303 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %300, i32 %301, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %302)
  %304 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %305 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @ECORE_PCI_FCOE, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %319

310:                                              ; preds = %295
  %311 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %312 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %313 = load i32, i32* @PRS_REG_SEARCH_TAG1, align 4
  %314 = call i32 @ecore_wr(%struct.ecore_hwfn* %311, %struct.ecore_ptt* %312, i32 %313, i32 4)
  %315 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %316 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %317 = load i32, i32* @PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST, align 4
  %318 = call i32 @ecore_wr(%struct.ecore_hwfn* %315, %struct.ecore_ptt* %316, i32 %317, i32 256)
  br label %319

319:                                              ; preds = %310, %295
  %320 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %321 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %322 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %320, i32 %321, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %323 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %324 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %325 = load i32, i32* @PRS_REG_SEARCH_TCP, align 4
  %326 = call i32 @ecore_rd(%struct.ecore_hwfn* %323, %struct.ecore_ptt* %324, i32 %325)
  store i32 %326, i32* %11, align 4
  %327 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %328 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %329 = load i32, i32* %11, align 4
  %330 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %327, i32 %328, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %329)
  %331 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %332 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %333 = load i32, i32* @PRS_REG_SEARCH_UDP, align 4
  %334 = call i32 @ecore_rd(%struct.ecore_hwfn* %331, %struct.ecore_ptt* %332, i32 %333)
  store i32 %334, i32* %11, align 4
  %335 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %336 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %337 = load i32, i32* %11, align 4
  %338 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %335, i32 %336, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %337)
  %339 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %340 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %341 = load i32, i32* @PRS_REG_SEARCH_FCOE, align 4
  %342 = call i32 @ecore_rd(%struct.ecore_hwfn* %339, %struct.ecore_ptt* %340, i32 %341)
  store i32 %342, i32* %11, align 4
  %343 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %344 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %345 = load i32, i32* %11, align 4
  %346 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %343, i32 %344, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %345)
  %347 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %348 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %349 = load i32, i32* @PRS_REG_SEARCH_ROCE, align 4
  %350 = call i32 @ecore_rd(%struct.ecore_hwfn* %347, %struct.ecore_ptt* %348, i32 %349)
  store i32 %350, i32* %11, align 4
  %351 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %352 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %353 = load i32, i32* %11, align 4
  %354 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %351, i32 %352, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %353)
  %355 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %356 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %357 = load i32, i32* @PRS_REG_SEARCH_TCP_FIRST_FRAG, align 4
  %358 = call i32 @ecore_rd(%struct.ecore_hwfn* %355, %struct.ecore_ptt* %356, i32 %357)
  store i32 %358, i32* %11, align 4
  %359 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %360 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %361 = load i32, i32* %11, align 4
  %362 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %359, i32 %360, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %361)
  %363 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %364 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %365 = load i32, i32* @PRS_REG_SEARCH_TAG1, align 4
  %366 = call i32 @ecore_rd(%struct.ecore_hwfn* %363, %struct.ecore_ptt* %364, i32 %365)
  store i32 %366, i32* %11, align 4
  %367 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %368 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %369 = load i32, i32* %11, align 4
  %370 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %367, i32 %368, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %369)
  br label %371

371:                                              ; preds = %319, %262
  %372 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %372, i32* %5, align 4
  br label %373

373:                                              ; preds = %371, %291, %277, %259, %243, %162, %149, %138, %127
  %374 = load i32, i32* %5, align 4
  ret i32 %374
}

declare dso_local i32 @ecore_cxt_hw_init_pf(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_int_igu_init_rt(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @OSAL_BEFORE_PF_START(i8*, i32) #1

declare dso_local i32 @ecore_dmae_sanity(%struct.ecore_hwfn*, %struct.ecore_ptt*, i8*) #1

declare dso_local i32 @ecore_init_run(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32) #1

declare dso_local i32 @ecore_int_igu_init_pure_rt(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @OSAL_PCI_FIND_CAPABILITY(i64, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @OSAL_PCI_READ_CONFIG_WORD(i64, i64, i32*) #1

declare dso_local i32 @OSAL_PCI_WRITE_CONFIG_WORD(i64, i64, i32) #1

declare dso_local i64 @ecore_mcp_rlx_odr_supported(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @ecore_hw_init_pf_doorbell_bar(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @IS_LEAD_HWFN(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_llh_hw_init_pf(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_int_igu_enable(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_sp_pf_start(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
