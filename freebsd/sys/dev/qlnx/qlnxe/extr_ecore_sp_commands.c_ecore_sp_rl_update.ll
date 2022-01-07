; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_rl_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_rl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rl_update_ramrod_data }
%struct.rl_update_ramrod_data = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_rl_update_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global %struct.ecore_spq_entry* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@COMMON_RAMROD_RL_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_SPQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [284 x i8] c"rl_params: qcn_update_param_flg %x, dcqcn_update_param_flg %x, rl_init_flg %x, rl_start_flg %x, rl_stop_flg %x, rl_id_first %x, rl_id_last %x, rl_dc_qcn_flg %x, rl_bc_rate %x, rl_max_rate %x, rl_r_ai %x, rl_r_hai %x, dcqcn_g %x, dcqcn_k_us %x, dcqcn_timeuot_us %x, qcn_timeuot_us %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_rl_update(%struct.ecore_hwfn* %0, %struct.ecore_rl_update_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_rl_update_params*, align 8
  %6 = alloca %struct.ecore_spq_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rl_update_ramrod_data*, align 8
  %9 = alloca %struct.ecore_sp_init_data, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_rl_update_params* %1, %struct.ecore_rl_update_params** %5, align 8
  %10 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  store %struct.ecore_spq_entry* %10, %struct.ecore_spq_entry** %6, align 8
  %11 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %9, i32 0, i32 12)
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %13)
  %15 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %22 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %24 = load i32, i32* @COMMON_RAMROD_RL_UPDATE, align 4
  %25 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %26 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %23, %struct.ecore_spq_entry** %6, i32 %24, i32 %25, %struct.ecore_sp_init_data* %9)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ECORE_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %183

32:                                               ; preds = %2
  %33 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %34 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.rl_update_ramrod_data* %35, %struct.rl_update_ramrod_data** %8, align 8
  %36 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %37 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %40 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %39, i32 0, i32 15
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %42 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %45 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %44, i32 0, i32 14
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %50 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %52 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %55 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %54, i32 0, i32 12
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %57 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %56, i32 0, i32 11
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %60 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %62 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %65 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %67 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %70 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %72 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %75 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %77 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @OSAL_CPU_TO_LE32(i32 %78)
  %80 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %81 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %80, i32 0, i32 7
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %83 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ecore_sp_rl_mb_to_qm(i32 %84)
  %86 = call i8* @OSAL_CPU_TO_LE16(i32 %85)
  %87 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %88 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %90 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ecore_sp_rl_mb_to_qm(i32 %91)
  %93 = call i8* @OSAL_CPU_TO_LE16(i32 %92)
  %94 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %95 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %97 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ecore_sp_rl_mb_to_qm(i32 %98)
  %100 = call i8* @OSAL_CPU_TO_LE16(i32 %99)
  %101 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %102 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %104 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ecore_sp_rl_gd_denom(i32 %105)
  %107 = call i8* @OSAL_CPU_TO_LE16(i32 %106)
  %108 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %109 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %111 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @OSAL_CPU_TO_LE32(i32 %112)
  %114 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %115 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %117 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @OSAL_CPU_TO_LE32(i32 %118)
  %120 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %121 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.ecore_rl_update_params*, %struct.ecore_rl_update_params** %5, align 8
  %123 = getelementptr inbounds %struct.ecore_rl_update_params, %struct.ecore_rl_update_params* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @OSAL_CPU_TO_LE32(i32 %124)
  %126 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %127 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %129 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %130 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %131 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %130, i32 0, i32 15
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %134 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %137 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %140 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %143 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %142, i32 0, i32 11
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %146 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %149 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %152 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %155 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %154, i32 0, i32 7
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %158 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %157, i32 0, i32 6
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %161 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %160, i32 0, i32 5
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %164 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %167 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %170 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %173 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.rl_update_ramrod_data*, %struct.rl_update_ramrod_data** %8, align 8
  %176 = getelementptr inbounds %struct.rl_update_ramrod_data, %struct.rl_update_ramrod_data* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %128, i32 %129, i8* getelementptr inbounds ([284 x i8], [284 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %135, i32 %138, i32 %141, i32 %144, i32 %147, i32 %150, i32 %153, i8* %156, i8* %159, i8* %162, i8* %165, i8* %168, i8* %171, i8* %174, i8* %177)
  %179 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %180 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %6, align 8
  %181 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  %182 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %179, %struct.ecore_spq_entry* %180, %struct.ecore_spq_entry* %181)
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %32, %30
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i8* @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @ecore_sp_rl_mb_to_qm(i32) #1

declare dso_local i32 @ecore_sp_rl_gd_denom(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, %struct.ecore_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
