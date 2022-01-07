; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_pf_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_pf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_20__*, %struct.TYPE_19__, %struct.TYPE_18__*, %struct.TYPE_30__*, %struct.TYPE_27__*, %struct.TYPE_25__ }
%struct.TYPE_20__ = type { i32, %struct.ecore_hw_sriov_info*, i32 }
%struct.ecore_hw_sriov_info = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_tunnel_info = type { i32 }
%struct.pf_start_ramrod_data = type { i64, i64, i32, i64, i64, %struct.TYPE_28__, %struct.TYPE_21__, i8*, i32, i32, i32, i32, i8*, i64, i32, i8* }
%struct.TYPE_28__ = type { i32, i32, i64*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i32*, i32* }
%struct.ecore_spq_entry = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.pf_start_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@COMMON_RAMROD_PF_START = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MF_OVLAN_CLSS = common dso_local global i32 0, align 4
@MF_OVLAN = common dso_local global i32 0, align 4
@MF_NPAR = common dso_local global i32 0, align 4
@ECORE_MF_8021Q_TAGGING = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ECORE_MF_8021AD_TAGGING = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@ECORE_MAX_PFC_PRIORITIES = common dso_local global i64 0, align 8
@ECORE_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@ECORE_UFP_PRI_OS = common dso_local global i64 0, align 8
@ECORE_MF_INTER_PF_SWITCH = common dso_local global i32 0, align 4
@PERSONALITY_ETH = common dso_local global i8* null, align 8
@PERSONALITY_FCOE = common dso_local global i8* null, align 8
@PERSONALITY_ISCSI = common dso_local global i8* null, align 8
@PERSONALITY_RDMA_AND_ETH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unknown personality %d\0A\00", align 1
@ETH_HSI_VER_MAJOR = common dso_local global i32 0, align 4
@ETH_VER_KEY = common dso_local global i64 0, align 8
@ETH_HSI_VER_MINOR = common dso_local global i32 0, align 4
@ECORE_MSG_SPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Setting event_ring_sb [id %04x index %02x], outer_tag.tpid [%d], outer_tag.tci [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_pf_start(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_tunnel_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.ecore_tunnel_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_start_ramrod_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ecore_spq_entry*, align 8
  %14 = alloca %struct.ecore_sp_init_data, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ecore_hw_sriov_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.ecore_tunnel_info* %2, %struct.ecore_tunnel_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** @OSAL_NULL, align 8
  %20 = bitcast i8* %19 to %struct.pf_start_ramrod_data*
  store %struct.pf_start_ramrod_data* %20, %struct.pf_start_ramrod_data** %10, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %22 = call i32 @ecore_int_get_sp_sb_id(%struct.ecore_hwfn* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %23, i32 0, i32 3
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i8*, i8** @OSAL_NULL, align 8
  %29 = bitcast i8* %28 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %29, %struct.ecore_spq_entry** %13, align 8
  %30 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %30, i32* %15, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 3
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 1
  %36 = call i32 @ecore_chain_get_prod_idx(%struct.TYPE_22__* %35)
  %37 = call i32 @ecore_eq_prod_update(%struct.ecore_hwfn* %31, i32 %36)
  %38 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %14, i32 0, i32 12)
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %40 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %39)
  %41 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %14, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %14, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %48 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %14, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %50 = load i32, i32* @COMMON_RAMROD_PF_START, align 4
  %51 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %52 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %49, %struct.ecore_spq_entry** %13, i32 %50, i32 %51, %struct.ecore_sp_init_data* %14)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @ECORE_SUCCESS, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %4
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %5, align 4
  br label %332

58:                                               ; preds = %4
  %59 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %60 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  store %struct.pf_start_ramrod_data* %61, %struct.pf_start_ramrod_data** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i8* @OSAL_CPU_TO_LE16(i32 %62)
  %64 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %65 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %64, i32 0, i32 15
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %68 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %70 = call i32 @ECORE_PATH_ID(%struct.ecore_hwfn* %69)
  %71 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %72 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %71, i32 0, i32 14
  store i32 %70, i32* %72, align 8
  %73 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %74 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %73, i32 0, i32 13
  store i64 0, i64* %74, align 8
  %75 = call i8* @OSAL_CPU_TO_LE16(i32 143)
  %76 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %77 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %76, i32 0, i32 12
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @ECORE_MF_OVLAN_CLSS, align 4
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %80 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %79, i32 0, i32 0
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = call i64 @OSAL_TEST_BIT(i32 %78, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %58
  %86 = load i32, i32* @MF_OVLAN, align 4
  %87 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %88 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 4
  br label %93

89:                                               ; preds = %58
  %90 = load i32, i32* @MF_NPAR, align 4
  %91 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %92 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @OSAL_CPU_TO_LE16(i32 %97)
  %99 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %100 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  store i8* %98, i8** %102, align 8
  %103 = load i32, i32* @ECORE_MF_8021Q_TAGGING, align 4
  %104 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %105 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %104, i32 0, i32 0
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = call i64 @OSAL_TEST_BIT(i32 %103, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %93
  %111 = load i32, i32* @ETH_P_8021Q, align 4
  %112 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %113 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 8
  br label %134

116:                                              ; preds = %93
  %117 = load i32, i32* @ECORE_MF_8021AD_TAGGING, align 4
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %119 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %118, i32 0, i32 0
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = call i64 @OSAL_TEST_BIT(i32 %117, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %116
  %125 = load i32, i32* @ETH_P_8021AD, align 4
  %126 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %127 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 8
  %130 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %131 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %124, %116
  br label %134

134:                                              ; preds = %133, %110
  %135 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %136 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  store i64 0, i64* %17, align 8
  br label %138

138:                                              ; preds = %150, %134
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* @ECORE_MAX_PFC_PRIORITIES, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %138
  %143 = load i64, i64* %17, align 8
  %144 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %145 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %17, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64 %143, i64* %149, align 8
  br label %150

150:                                              ; preds = %142
  %151 = load i64, i64* %17, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %17, align 8
  br label %138

153:                                              ; preds = %138
  %154 = load i32, i32* @ECORE_MF_UFP_SPECIFIC, align 4
  %155 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %156 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %155, i32 0, i32 0
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 2
  %159 = call i64 @OSAL_TEST_BIT(i32 %154, i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %185

161:                                              ; preds = %153
  %162 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %163 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @ECORE_UFP_PRI_OS, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %161
  %169 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %170 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %169, i32 0, i32 4
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %168, %161
  %177 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %178 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  br label %184

180:                                              ; preds = %168
  %181 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %182 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  br label %184

184:                                              ; preds = %180, %176
  br label %185

185:                                              ; preds = %184, %153
  %186 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %187 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %190 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %189, i32 0, i32 3
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @DMA_REGPAIR_LE(i32 %188, i32 %195)
  %197 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %198 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %197, i32 0, i32 3
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 1
  %201 = call i64 @ecore_chain_get_page_cnt(%struct.TYPE_22__* %200)
  store i64 %201, i64* %16, align 8
  %202 = load i64, i64* %16, align 8
  %203 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %204 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  %205 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %206 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %209 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %208, i32 0, i32 2
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @DMA_REGPAIR_LE(i32 %207, i32 %214)
  %216 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %217 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %8, align 8
  %218 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %219 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %218, i32 0, i32 8
  %220 = call i32 @ecore_tunn_set_pf_start_params(%struct.ecore_hwfn* %216, %struct.ecore_tunnel_info* %217, i32* %219)
  %221 = load i32, i32* @ECORE_MF_INTER_PF_SWITCH, align 4
  %222 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %223 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %222, i32 0, i32 0
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 2
  %226 = call i64 @OSAL_TEST_BIT(i32 %221, i32* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %185
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %231 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %228, %185
  %233 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %234 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  switch i32 %236, label %253 [
    i32 133, label %237
    i32 129, label %241
    i32 128, label %245
    i32 132, label %249
    i32 130, label %249
    i32 131, label %249
  ]

237:                                              ; preds = %232
  %238 = load i8*, i8** @PERSONALITY_ETH, align 8
  %239 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %240 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %239, i32 0, i32 7
  store i8* %238, i8** %240, align 8
  br label %263

241:                                              ; preds = %232
  %242 = load i8*, i8** @PERSONALITY_FCOE, align 8
  %243 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %244 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %243, i32 0, i32 7
  store i8* %242, i8** %244, align 8
  br label %263

245:                                              ; preds = %232
  %246 = load i8*, i8** @PERSONALITY_ISCSI, align 8
  %247 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %248 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %247, i32 0, i32 7
  store i8* %246, i8** %248, align 8
  br label %263

249:                                              ; preds = %232, %232, %232
  %250 = load i8*, i8** @PERSONALITY_RDMA_AND_ETH, align 8
  %251 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %252 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %251, i32 0, i32 7
  store i8* %250, i8** %252, align 8
  br label %263

253:                                              ; preds = %232
  %254 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %255 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %256 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %254, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %258)
  %260 = load i8*, i8** @PERSONALITY_ETH, align 8
  %261 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %262 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %261, i32 0, i32 7
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %253, %249, %245, %241, %237
  %264 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %265 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %264, i32 0, i32 0
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 1
  %268 = load %struct.ecore_hw_sriov_info*, %struct.ecore_hw_sriov_info** %267, align 8
  %269 = icmp ne %struct.ecore_hw_sriov_info* %268, null
  br i1 %269, label %270, label %286

270:                                              ; preds = %263
  %271 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %272 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %271, i32 0, i32 0
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 1
  %275 = load %struct.ecore_hw_sriov_info*, %struct.ecore_hw_sriov_info** %274, align 8
  store %struct.ecore_hw_sriov_info* %275, %struct.ecore_hw_sriov_info** %18, align 8
  %276 = load %struct.ecore_hw_sriov_info*, %struct.ecore_hw_sriov_info** %18, align 8
  %277 = getelementptr inbounds %struct.ecore_hw_sriov_info, %struct.ecore_hw_sriov_info* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %280 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %279, i32 0, i32 3
  store i64 %278, i64* %280, align 8
  %281 = load %struct.ecore_hw_sriov_info*, %struct.ecore_hw_sriov_info** %18, align 8
  %282 = getelementptr inbounds %struct.ecore_hw_sriov_info, %struct.ecore_hw_sriov_info* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %285 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %284, i32 0, i32 4
  store i64 %283, i64* %285, align 8
  br label %286

286:                                              ; preds = %270, %263
  %287 = load i32, i32* @ETH_HSI_VER_MAJOR, align 4
  %288 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %289 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %288, i32 0, i32 6
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i64, i64* @ETH_VER_KEY, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32 %287, i32* %293, align 4
  %294 = load i32, i32* @ETH_HSI_VER_MINOR, align 4
  %295 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %296 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %295, i32 0, i32 6
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* @ETH_VER_KEY, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32 %294, i32* %300, align 4
  %301 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %302 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load i64, i64* %12, align 8
  %305 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %306 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.pf_start_ramrod_data*, %struct.pf_start_ramrod_data** %10, align 8
  %311 = getelementptr inbounds %struct.pf_start_ramrod_data, %struct.pf_start_ramrod_data* %310, i32 0, i32 5
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %301, i32 %302, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %303, i64 %304, i32 %309, i8* %314)
  %316 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %317 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %318 = load i8*, i8** @OSAL_NULL, align 8
  %319 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %316, %struct.ecore_spq_entry* %317, i8* %318)
  store i32 %319, i32* %15, align 4
  %320 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %8, align 8
  %321 = icmp ne %struct.ecore_tunnel_info* %320, null
  br i1 %321, label %322, label %330

322:                                              ; preds = %286
  %323 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %324 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %325 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %326 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %325, i32 0, i32 0
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 0
  %329 = call i32 @ecore_set_hw_tunn_mode_port(%struct.ecore_hwfn* %323, %struct.ecore_ptt* %324, i32* %328)
  br label %330

330:                                              ; preds = %322, %286
  %331 = load i32, i32* %15, align 4
  store i32 %331, i32* %5, align 4
  br label %332

332:                                              ; preds = %330, %56
  %333 = load i32, i32* %5, align 4
  ret i32 %333
}

declare dso_local i32 @ecore_int_get_sp_sb_id(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_eq_prod_update(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_chain_get_prod_idx(%struct.TYPE_22__*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @ECORE_PATH_ID(%struct.ecore_hwfn*) #1

declare dso_local i64 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i64 @ecore_chain_get_page_cnt(%struct.TYPE_22__*) #1

declare dso_local i32 @ecore_tunn_set_pf_start_params(%struct.ecore_hwfn*, %struct.ecore_tunnel_info*, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i32, i8*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

declare dso_local i32 @ecore_set_hw_tunn_mode_port(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
