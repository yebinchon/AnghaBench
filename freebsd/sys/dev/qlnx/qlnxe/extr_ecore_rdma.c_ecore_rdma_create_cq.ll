; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_create_cq_in_params = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_4__, %struct.ecore_rdma_info* }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_rdma_info = type { i32, i32, i32 }
%struct.rdma_create_cq_ramrod_data = type { i32, i32, i64, i8*, i32, i8*, i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.ecore_sp_init_data = type { i32, i32, i64 }
%struct.ecore_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rdma_create_cq_ramrod_data }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cq_handle = %08x%08x\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't create CQ, rc = %d\0A\00", align 1
@ECORE_ELEM_CXT = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_CREATE_CQ = common dso_local global i32 0, align 4
@ECORE_RDMA_CNQ_RAM = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Created CQ, rc = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Create CQ failed, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_create_cq(i8* %0, %struct.ecore_rdma_create_cq_in_params* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecore_rdma_create_cq_in_params*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_rdma_info*, align 8
  %10 = alloca %struct.rdma_create_cq_ramrod_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_sp_init_data, align 8
  %13 = alloca %struct.ecore_spq_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ecore_rdma_create_cq_in_params* %1, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %17, %struct.ecore_hwfn** %8, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 1
  %20 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %19, align 8
  store %struct.ecore_rdma_info* %20, %struct.ecore_rdma_info** %9, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %22 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %23 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  %31 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %30, i32 0, i32 0
  %32 = call i32 @OSAL_SPIN_LOCK(i32* %31)
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %34 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  %35 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %34, i32 0, i32 1
  %36 = call i32 @ecore_rdma_bmap_alloc_id(%struct.ecore_hwfn* %33, i32* %35, i64* %15)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  %38 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %37, i32 0, i32 0
  %39 = call i32 @OSAL_SPIN_UNLOCK(i32* %38)
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @ECORE_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %44, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %4, align 4
  br label %191

48:                                               ; preds = %3
  %49 = load i64, i64* %15, align 8
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %51 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  %52 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %50, i32 %53)
  %55 = add nsw i64 %49, %54
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %58 = load i32, i32* @ECORE_ELEM_CXT, align 4
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ecore_cxt_dynamic_ilt_alloc(%struct.ecore_hwfn* %57, i32 %58, i64 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @ECORE_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %175

66:                                               ; preds = %48
  %67 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %12, i32 0, i32 16)
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %72 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %77 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %79 = load i32, i32* @RDMA_RAMROD_CREATE_CQ, align 4
  %80 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  %81 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %78, %struct.ecore_spq_entry** %13, i32 %79, i32 %82, %struct.ecore_sp_init_data* %12)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @ECORE_SUCCESS, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %66
  br label %175

88:                                               ; preds = %66
  %89 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %90 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store %struct.rdma_create_cq_ramrod_data* %91, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %92 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %93 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @OSAL_CPU_TO_LE32(i32 %94)
  %96 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %97 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  %99 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %100 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @OSAL_CPU_TO_LE32(i32 %101)
  %103 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %104 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  %106 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %107 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @OSAL_CPU_TO_LE16(i32 %108)
  %110 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %111 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %110, i32 0, i32 7
  store i8* %109, i8** %111, align 8
  %112 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %113 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %116 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %118 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @OSAL_CPU_TO_LE32(i32 %119)
  %121 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %122 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  %123 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %124 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %127 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @DMA_REGPAIR_LE(i32 %125, i32 %128)
  %130 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %131 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @OSAL_CPU_TO_LE16(i32 %132)
  %134 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %135 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %137 = load i32, i32* @ECORE_RDMA_CNQ_RAM, align 4
  %138 = call i64 @RESC_START(%struct.ecore_hwfn* %136, i32 %137)
  %139 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %140 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %144 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.ecore_rdma_create_cq_in_params*, %struct.ecore_rdma_create_cq_in_params** %6, align 8
  %146 = getelementptr inbounds %struct.ecore_rdma_create_cq_in_params, %struct.ecore_rdma_create_cq_in_params* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %149 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %151 = load i64*, i64** %7, align 8
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @ecore_rdma_toggle_bit_create_resize_cq(%struct.ecore_hwfn* %150, i64 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.rdma_create_cq_ramrod_data*, %struct.rdma_create_cq_ramrod_data** %10, align 8
  %156 = getelementptr inbounds %struct.rdma_create_cq_ramrod_data, %struct.rdma_create_cq_ramrod_data* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %158 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %159 = load i32, i32* @OSAL_NULL, align 4
  %160 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %157, %struct.ecore_spq_entry* %158, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @ECORE_SUCCESS, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %88
  %165 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %166 = load i64*, i64** %7, align 8
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @ecore_rdma_toggle_bit_create_resize_cq(%struct.ecore_hwfn* %165, i64 %167)
  br label %175

169:                                              ; preds = %88
  %170 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %171 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %170, i32 %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %4, align 4
  br label %191

175:                                              ; preds = %164, %87, %65
  %176 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  %177 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %176, i32 0, i32 0
  %178 = call i32 @OSAL_SPIN_LOCK(i32* %177)
  %179 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %180 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  %181 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %180, i32 0, i32 1
  %182 = load i64, i64* %15, align 8
  %183 = call i32 @ecore_bmap_release_id(%struct.ecore_hwfn* %179, i32* %181, i64 %182)
  %184 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  %185 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %184, i32 0, i32 0
  %186 = call i32 @OSAL_SPIN_UNLOCK(i32* %185)
  %187 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %187, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %175, %169, %43
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_rdma_bmap_alloc_id(%struct.ecore_hwfn*, i32*, i64*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_cxt_dynamic_ilt_alloc(%struct.ecore_hwfn*, i32, i64) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i8* @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i64 @RESC_START(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_rdma_toggle_bit_create_resize_cq(%struct.ecore_hwfn*, i64) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @ecore_bmap_release_id(%struct.ecore_hwfn*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
