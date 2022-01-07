; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_vport_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_vport_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_sp_vport_update_params = type { i32, i32, i32, i8*, i32, i64, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.ecore_rss_params* }
%struct.ecore_rss_params = type { i32 }
%struct.ecore_spq_comp_cb = type { i32 }
%struct.vport_update_ramrod_data_cmn = type { i32, i8*, i32, i64, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i8* }
%struct.ecore_sp_init_data = type { i32, %struct.ecore_spq_comp_cb*, i32, i32 }
%struct.vport_update_ramrod_data = type { %struct.vport_update_ramrod_data_cmn }
%struct.ecore_spq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vport_update_ramrod_data }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ETH_RAMROD_VPORT_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"FPGA - why are we seeing tx-switching? Overriding it\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_vport_update(%struct.ecore_hwfn* %0, %struct.ecore_sp_vport_update_params* %1, i32 %2, %struct.ecore_spq_comp_cb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_sp_vport_update_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_spq_comp_cb*, align 8
  %10 = alloca %struct.ecore_rss_params*, align 8
  %11 = alloca %struct.vport_update_ramrod_data_cmn*, align 8
  %12 = alloca %struct.ecore_sp_init_data, align 8
  %13 = alloca %struct.vport_update_ramrod_data*, align 8
  %14 = alloca %struct.ecore_spq_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_sp_vport_update_params* %1, %struct.ecore_sp_vport_update_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ecore_spq_comp_cb* %3, %struct.ecore_spq_comp_cb** %9, align 8
  %18 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %19 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %18, i32 0, i32 21
  %20 = load %struct.ecore_rss_params*, %struct.ecore_rss_params** %19, align 8
  store %struct.ecore_rss_params* %20, %struct.ecore_rss_params** %10, align 8
  %21 = load i8*, i8** @OSAL_NULL, align 8
  %22 = bitcast i8* %21 to %struct.vport_update_ramrod_data*
  store %struct.vport_update_ramrod_data* %22, %struct.vport_update_ramrod_data** %13, align 8
  %23 = load i8*, i8** @OSAL_NULL, align 8
  %24 = bitcast i8* %23 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %24, %struct.ecore_spq_entry** %14, align 8
  store i8* null, i8** %15, align 8
  %25 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %25, i32* %17, align 4
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_VF(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %33 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %34 = call i32 @ecore_vf_pf_vport_update(%struct.ecore_hwfn* %32, %struct.ecore_sp_vport_update_params* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* %5, align 4
  br label %229

36:                                               ; preds = %4
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %38 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %39 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %38, i32 0, i32 20
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ecore_fw_vport(%struct.ecore_hwfn* %37, i32 %40, i8** %15)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* @ECORE_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %5, align 4
  br label %229

47:                                               ; preds = %36
  %48 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %12, i32 0, i32 24)
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %50 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %49)
  %51 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %53 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %52, i32 0, i32 19
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.ecore_spq_comp_cb*, %struct.ecore_spq_comp_cb** %9, align 8
  %59 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 1
  store %struct.ecore_spq_comp_cb* %58, %struct.ecore_spq_comp_cb** %59, align 8
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %61 = load i32, i32* @ETH_RAMROD_VPORT_UPDATE, align 4
  %62 = load i32, i32* @PROTOCOLID_ETH, align 4
  %63 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %60, %struct.ecore_spq_entry** %14, i32 %61, i32 %62, %struct.ecore_sp_init_data* %12)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @ECORE_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %47
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %5, align 4
  br label %229

69:                                               ; preds = %47
  %70 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %14, align 8
  %71 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.vport_update_ramrod_data* %72, %struct.vport_update_ramrod_data** %13, align 8
  %73 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %74 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %73, i32 0, i32 0
  store %struct.vport_update_ramrod_data_cmn* %74, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %77 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %76, i32 0, i32 17
  store i8* %75, i8** %77, align 8
  %78 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %79 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %78, i32 0, i32 18
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %82 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %81, i32 0, i32 16
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %84 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %83, i32 0, i32 17
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %87 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %86, i32 0, i32 15
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %89 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %88, i32 0, i32 16
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %92 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %91, i32 0, i32 14
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %94 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %93, i32 0, i32 15
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %97 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %96, i32 0, i32 13
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %99 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %98, i32 0, i32 14
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %102 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %101, i32 0, i32 12
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %104 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %103, i32 0, i32 13
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %16, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %108 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %107, i32 0, i32 11
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %110 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %109, i32 0, i32 12
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %113 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %115 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %114, i32 0, i32 11
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %16, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %119 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %118, i32 0, i32 9
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %121 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %124 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %123, i32 0, i32 8
  store i32 %122, i32* %124, align 8
  %125 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %126 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %125, i32 0, i32 9
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %16, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %130 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %132 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @OSAL_CPU_TO_LE16(i32 %133)
  %135 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %136 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %138 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %141 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %143 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %146 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %148 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %151 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %151, i32 0, i32 3
  store i64 %149, i64* %152, align 8
  %153 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %154 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @CHIP_REV_IS_FPGA(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %69
  %159 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %160 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %158
  %165 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %166 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %164, %158
  %171 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %172 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %171, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %173 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %174 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %174, i32 0, i32 3
  store i64 0, i64* %175, align 8
  %176 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %177 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  br label %179

179:                                              ; preds = %170, %164
  br label %180

180:                                              ; preds = %179, %69
  %181 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %182 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %185 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %187 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %190 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %192 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %16, align 8
  %194 = load i8*, i8** %16, align 8
  %195 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %196 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %196, i32 0, i32 1
  store i8* %194, i8** %197, align 8
  %198 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %199 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %200 = load %struct.ecore_rss_params*, %struct.ecore_rss_params** %10, align 8
  %201 = call i32 @ecore_sp_vport_update_rss(%struct.ecore_hwfn* %198, %struct.vport_update_ramrod_data* %199, %struct.ecore_rss_params* %200)
  store i32 %201, i32* %17, align 4
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* @ECORE_SUCCESS, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %180
  %206 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %207 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %14, align 8
  %208 = call i32 @ecore_spq_return_entry(%struct.ecore_hwfn* %206, %struct.ecore_spq_entry* %207)
  %209 = load i32, i32* %17, align 4
  store i32 %209, i32* %5, align 4
  br label %229

210:                                              ; preds = %180
  %211 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %212 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %213 = call i32 @ecore_sp_update_mcast_bin(%struct.vport_update_ramrod_data* %211, %struct.ecore_sp_vport_update_params* %212)
  %214 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %215 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %216 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %217 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @ecore_sp_update_accept_mode(%struct.ecore_hwfn* %214, %struct.vport_update_ramrod_data* %215, i32 %218)
  %220 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %221 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %222 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @ecore_sp_vport_update_sge_tpa(%struct.vport_update_ramrod_data* %220, i32 %223)
  %225 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %226 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %14, align 8
  %227 = load i8*, i8** @OSAL_NULL, align 8
  %228 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %225, %struct.ecore_spq_entry* %226, i8* %227)
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %210, %205, %67, %45, %31
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @ecore_vf_pf_vport_update(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*) #1

declare dso_local i32 @ecore_fw_vport(%struct.ecore_hwfn*, i32, i8**) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_sp_vport_update_rss(%struct.ecore_hwfn*, %struct.vport_update_ramrod_data*, %struct.ecore_rss_params*) #1

declare dso_local i32 @ecore_spq_return_entry(%struct.ecore_hwfn*, %struct.ecore_spq_entry*) #1

declare dso_local i32 @ecore_sp_update_mcast_bin(%struct.vport_update_ramrod_data*, %struct.ecore_sp_vport_update_params*) #1

declare dso_local i32 @ecore_sp_update_accept_mode(%struct.ecore_hwfn*, %struct.vport_update_ramrod_data*, i32) #1

declare dso_local i32 @ecore_sp_vport_update_sge_tpa(%struct.vport_update_ramrod_data*, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
