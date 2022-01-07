; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_resize_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_resize_cq_in_params = type { i32, i32, i32, i32, i32, i64 }
%struct.ecore_rdma_resize_cq_out_params = type { i8*, i8* }
%struct.ecore_spq_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.rdma_resize_cq_ramrod_data }
%struct.rdma_resize_cq_ramrod_data = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.ecore_hwfn = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_resize_cq_output_params = type { i32, i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"ecore resize cq failed: cannot allocate memory (ramrod). rc = %d\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_RESIZE_CQ = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@RDMA_RESIZE_CQ_RAMROD_DATA_TOGGLE_BIT = common dso_local global i32 0, align 4
@RDMA_RESIZE_CQ_RAMROD_DATA_IS_TWO_LEVEL_PBL = common dso_local global i32 0, align 4
@RDMA_RETURN_OK = common dso_local global i64 0, align 8
@RDMA_RETURN_RESIZE_CQ_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"fw_return_code = %d\0A\00", align 1
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_resize_cq(i8* %0, %struct.ecore_rdma_resize_cq_in_params* %1, %struct.ecore_rdma_resize_cq_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecore_rdma_resize_cq_in_params*, align 8
  %7 = alloca %struct.ecore_rdma_resize_cq_out_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_spq_entry*, align 8
  %11 = alloca %struct.rdma_resize_cq_ramrod_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ecore_hwfn*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rdma_resize_cq_output_params*, align 8
  %16 = alloca %struct.ecore_sp_init_data, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ecore_rdma_resize_cq_in_params* %1, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  store %struct.ecore_rdma_resize_cq_out_params* %2, %struct.ecore_rdma_resize_cq_out_params** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %18, %struct.ecore_hwfn** %13, align 8
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %20 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %21 = load %struct.ecore_rdma_resize_cq_in_params*, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_rdma_resize_cq_in_params, %struct.ecore_rdma_resize_cq_in_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %19, i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @OSAL_DMA_ALLOC_COHERENT(i32 %27, i32* %14, i32 8)
  %29 = inttoptr i64 %28 to %struct.rdma_resize_cq_output_params*
  store %struct.rdma_resize_cq_output_params* %29, %struct.rdma_resize_cq_output_params** %15, align 8
  %30 = load %struct.rdma_resize_cq_output_params*, %struct.rdma_resize_cq_output_params** %15, align 8
  %31 = icmp ne %struct.rdma_resize_cq_output_params* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %34, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %190

38:                                               ; preds = %3
  %39 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %16, i32 0, i32 12)
  %40 = load %struct.ecore_rdma_resize_cq_in_params*, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_rdma_resize_cq_in_params, %struct.ecore_rdma_resize_cq_in_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %16, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %45 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %16, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %50 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %16, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %52 = load i32, i32* @RDMA_RAMROD_RESIZE_CQ, align 4
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %54 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %51, %struct.ecore_spq_entry** %10, i32 %52, i32 %57, %struct.ecore_sp_init_data* %16)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ECORE_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %38
  br label %179

63:                                               ; preds = %38
  %64 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %10, align 8
  %65 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store %struct.rdma_resize_cq_ramrod_data* %66, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %67 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %68 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %70 = load %struct.ecore_rdma_resize_cq_in_params*, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  %71 = getelementptr inbounds %struct.ecore_rdma_resize_cq_in_params, %struct.ecore_rdma_resize_cq_in_params* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ecore_rdma_toggle_bit_create_resize_cq(%struct.ecore_hwfn* %69, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %75 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @RDMA_RESIZE_CQ_RAMROD_DATA_TOGGLE_BIT, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @SET_FIELD(i64 %76, i32 %77, i32 %78)
  %80 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %81 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @RDMA_RESIZE_CQ_RAMROD_DATA_IS_TWO_LEVEL_PBL, align 4
  %84 = load %struct.ecore_rdma_resize_cq_in_params*, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  %85 = getelementptr inbounds %struct.ecore_rdma_resize_cq_in_params, %struct.ecore_rdma_resize_cq_in_params* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SET_FIELD(i64 %82, i32 %83, i32 %86)
  %88 = load %struct.ecore_rdma_resize_cq_in_params*, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  %89 = getelementptr inbounds %struct.ecore_rdma_resize_cq_in_params, %struct.ecore_rdma_resize_cq_in_params* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, 12
  %92 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %93 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  %94 = load %struct.ecore_rdma_resize_cq_in_params*, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_rdma_resize_cq_in_params, %struct.ecore_rdma_resize_cq_in_params* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @OSAL_CPU_TO_LE16(i32 %96)
  %98 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %99 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ecore_rdma_resize_cq_in_params*, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  %101 = getelementptr inbounds %struct.ecore_rdma_resize_cq_in_params, %struct.ecore_rdma_resize_cq_in_params* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @OSAL_CPU_TO_LE32(i32 %102)
  %104 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %105 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ecore_rdma_resize_cq_in_params*, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  %107 = getelementptr inbounds %struct.ecore_rdma_resize_cq_in_params, %struct.ecore_rdma_resize_cq_in_params* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @DMA_HI_LE(i32 %108)
  %110 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %111 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  %113 = load %struct.ecore_rdma_resize_cq_in_params*, %struct.ecore_rdma_resize_cq_in_params** %6, align 8
  %114 = getelementptr inbounds %struct.ecore_rdma_resize_cq_in_params, %struct.ecore_rdma_resize_cq_in_params* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @DMA_LO_LE(i32 %115)
  %117 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %118 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i8* %116, i8** %119, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i8* @DMA_HI_LE(i32 %120)
  %122 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %123 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i8* @DMA_LO_LE(i32 %125)
  %127 = load %struct.rdma_resize_cq_ramrod_data*, %struct.rdma_resize_cq_ramrod_data** %11, align 8
  %128 = getelementptr inbounds %struct.rdma_resize_cq_ramrod_data, %struct.rdma_resize_cq_ramrod_data* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  %130 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %131 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %10, align 8
  %132 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %130, %struct.ecore_spq_entry* %131, i64* %12)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @ECORE_SUCCESS, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %63
  br label %179

137:                                              ; preds = %63
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* @RDMA_RETURN_OK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %137
  %142 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* @RDMA_RETURN_RESIZE_CQ_ERR, align 8
  %145 = icmp ne i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %12, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %142, i32 %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %151 = load i64, i64* %12, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %150, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %154, i32* %8, align 4
  br label %179

155:                                              ; preds = %137
  %156 = load %struct.rdma_resize_cq_output_params*, %struct.rdma_resize_cq_output_params** %15, align 8
  %157 = getelementptr inbounds %struct.rdma_resize_cq_output_params, %struct.rdma_resize_cq_output_params* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @OSAL_LE32_TO_CPU(i32 %158)
  %160 = load %struct.ecore_rdma_resize_cq_out_params*, %struct.ecore_rdma_resize_cq_out_params** %7, align 8
  %161 = getelementptr inbounds %struct.ecore_rdma_resize_cq_out_params, %struct.ecore_rdma_resize_cq_out_params* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.rdma_resize_cq_output_params*, %struct.rdma_resize_cq_output_params** %15, align 8
  %163 = getelementptr inbounds %struct.rdma_resize_cq_output_params, %struct.rdma_resize_cq_output_params* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @OSAL_LE32_TO_CPU(i32 %164)
  %166 = load %struct.ecore_rdma_resize_cq_out_params*, %struct.ecore_rdma_resize_cq_out_params** %7, align 8
  %167 = getelementptr inbounds %struct.ecore_rdma_resize_cq_out_params, %struct.ecore_rdma_resize_cq_out_params* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %169 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.rdma_resize_cq_output_params*, %struct.rdma_resize_cq_output_params** %15, align 8
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %170, %struct.rdma_resize_cq_output_params* %171, i32 %172, i32 8)
  %174 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %175 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %174, i32 %175, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %4, align 4
  br label %190

179:                                              ; preds = %141, %136, %62
  %180 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %181 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.rdma_resize_cq_output_params*, %struct.rdma_resize_cq_output_params** %15, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %182, %struct.rdma_resize_cq_output_params* %183, i32 %184, i32 8)
  %186 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %13, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %186, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %179, %155, %32
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_rdma_toggle_bit_create_resize_cq(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i8* @DMA_HI_LE(i32) #1

declare dso_local i8* @DMA_LO_LE(i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i64*) #1

declare dso_local i8* @OSAL_LE32_TO_CPU(i32) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, %struct.rdma_resize_cq_output_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
