; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_create_srq_in_params = type { i8*, i8*, i8*, i32, i8*, i64, i32, i32, i32 }
%struct.ecore_rdma_create_srq_out_params = type { i8* }
%struct.ecore_hwfn = type { %struct.TYPE_12__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.rdma_srq_create_ramrod_data = type { i8*, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i8*, i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.ecore_sp_init_data = type { i32, i8* }
%struct.ecore_spq_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.rdma_srq_create_ramrod_data }
%struct.ecore_bmap = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to allocate xrc/srq id (is_xrc=%u)\0A\00", align 1
@ECORE_ELEM_XRC_SRQ = common dso_local global i32 0, align 4
@ECORE_ELEM_SRQ = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_CREATE_SRQ = common dso_local global i32 0, align 4
@RDMA_SRQ_CREATE_RAMROD_DATA_XRC_FLAG = common dso_local global i32 0, align 4
@RDMA_SRQ_CREATE_RAMROD_DATA_RESERVED_KEY_EN = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"XRC/SRQ created Id = %x (is_xrc=%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_create_srq(i8* %0, %struct.ecore_rdma_create_srq_in_params* %1, %struct.ecore_rdma_create_srq_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecore_rdma_create_srq_in_params*, align 8
  %7 = alloca %struct.ecore_rdma_create_srq_out_params*, align 8
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.rdma_srq_create_ramrod_data*, align 8
  %10 = alloca %struct.ecore_sp_init_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_spq_entry*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ecore_bmap*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ecore_rdma_create_srq_in_params* %1, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  store %struct.ecore_rdma_create_srq_out_params* %2, %struct.ecore_rdma_create_srq_out_params** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %19, %struct.ecore_hwfn** %8, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %21 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.ecore_bmap* @ecore_rdma_get_srq_bmap(%struct.ecore_hwfn* %20, i64 %23)
  store %struct.ecore_bmap* %24, %struct.ecore_bmap** %15, align 8
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = call i32 @OSAL_SPIN_LOCK(i32* %28)
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %31 = load %struct.ecore_bmap*, %struct.ecore_bmap** %15, align 8
  %32 = call i32 @ecore_rdma_bmap_alloc_id(%struct.ecore_hwfn* %30, %struct.ecore_bmap* %31, i64* %16)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %34 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = call i32 @OSAL_SPIN_UNLOCK(i32* %36)
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @ECORE_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %3
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %43 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %42, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %4, align 4
  br label %226

48:                                               ; preds = %3
  %49 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %50 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @ECORE_ELEM_XRC_SRQ, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @ECORE_ELEM_SRQ, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %11, align 4
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i64, i64* %16, align 8
  %62 = call i32 @ecore_cxt_dynamic_ilt_alloc(%struct.ecore_hwfn* %59, i32 %60, i64 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @ECORE_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %210

67:                                               ; preds = %57
  %68 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %10, i32 0, i32 16)
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %70 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 1
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %76 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %78 = load i32, i32* @RDMA_RAMROD_CREATE_SRQ, align 4
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %80 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %77, %struct.ecore_spq_entry** %12, i32 %78, i32 %83, %struct.ecore_sp_init_data* %10)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @ECORE_SUCCESS, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %67
  br label %210

89:                                               ; preds = %67
  %90 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %12, align 8
  %91 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store %struct.rdma_srq_create_ramrod_data* %92, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %93 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %94 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @DMA_HI_LE(i32 %95)
  %97 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %98 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  %100 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %101 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @DMA_LO_LE(i32 %102)
  %104 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %105 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  %107 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %108 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @OSAL_CPU_TO_LE16(i8* %109)
  %111 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %112 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  %113 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %114 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @OSAL_CPU_TO_LE16(i8* %115)
  %117 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %118 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = call i8* @OSAL_CPU_TO_LE16(i8* %119)
  %121 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %122 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  store i8* %120, i8** %123, align 8
  %124 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %125 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @OSAL_CPU_TO_LE16(i8* %126)
  %128 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %129 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %131 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @DMA_HI_LE(i32 %132)
  %134 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %135 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  store i8* %133, i8** %136, align 8
  %137 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %138 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @DMA_LO_LE(i32 %139)
  %141 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %142 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i8* %140, i8** %143, align 8
  %144 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %145 = load i64, i64* %16, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %148 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = call i8* @ecore_rdma_get_fw_srq_id(%struct.ecore_hwfn* %144, i8* %146, i64 %149)
  store i8* %150, i8** %14, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = call i8* @OSAL_CPU_TO_LE16(i8* %151)
  %153 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %154 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %157 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %186

160:                                              ; preds = %89
  %161 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %162 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @RDMA_SRQ_CREATE_RAMROD_DATA_XRC_FLAG, align 4
  %165 = call i32 @SET_FIELD(i32 %163, i32 %164, i32 1)
  %166 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %167 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @RDMA_SRQ_CREATE_RAMROD_DATA_RESERVED_KEY_EN, align 4
  %170 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %171 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @SET_FIELD(i32 %168, i32 %169, i32 %172)
  %174 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %175 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @OSAL_CPU_TO_LE32(i32 %176)
  %178 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %179 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %181 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %180, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = call i8* @OSAL_CPU_TO_LE16(i8* %182)
  %184 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %9, align 8
  %185 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %160, %89
  %187 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %188 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %12, align 8
  %189 = load i32, i32* @OSAL_NULL, align 4
  %190 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %187, %struct.ecore_spq_entry* %188, i32 %189)
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* @ECORE_SUCCESS, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %210

195:                                              ; preds = %186
  %196 = load i64, i64* %16, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.ecore_rdma_create_srq_out_params*, %struct.ecore_rdma_create_srq_out_params** %7, align 8
  %199 = getelementptr inbounds %struct.ecore_rdma_create_srq_out_params, %struct.ecore_rdma_create_srq_out_params* %198, i32 0, i32 0
  store i8* %197, i8** %199, align 8
  %200 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %201 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %202 = load %struct.ecore_rdma_create_srq_out_params*, %struct.ecore_rdma_create_srq_out_params** %7, align 8
  %203 = getelementptr inbounds %struct.ecore_rdma_create_srq_out_params, %struct.ecore_rdma_create_srq_out_params* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.ecore_rdma_create_srq_in_params*, %struct.ecore_rdma_create_srq_in_params** %6, align 8
  %206 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %200, i32 %201, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %204, i64 %207)
  %209 = load i32, i32* %17, align 4
  store i32 %209, i32* %4, align 4
  br label %226

210:                                              ; preds = %194, %88, %66
  %211 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %212 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %211, i32 0, i32 0
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = call i32 @OSAL_SPIN_LOCK(i32* %214)
  %216 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %217 = load %struct.ecore_bmap*, %struct.ecore_bmap** %15, align 8
  %218 = load i64, i64* %16, align 8
  %219 = call i32 @ecore_bmap_release_id(%struct.ecore_hwfn* %216, %struct.ecore_bmap* %217, i64 %218)
  %220 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %221 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %220, i32 0, i32 0
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = call i32 @OSAL_SPIN_UNLOCK(i32* %223)
  %225 = load i32, i32* %17, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %210, %195, %41
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local %struct.ecore_bmap* @ecore_rdma_get_srq_bmap(%struct.ecore_hwfn*, i64) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_rdma_bmap_alloc_id(%struct.ecore_hwfn*, %struct.ecore_bmap*, i64*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64) #1

declare dso_local i32 @ecore_cxt_dynamic_ilt_alloc(%struct.ecore_hwfn*, i32, i64) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i8* @DMA_HI_LE(i32) #1

declare dso_local i8* @DMA_LO_LE(i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i8*) #1

declare dso_local i8* @ecore_rdma_get_fw_srq_id(%struct.ecore_hwfn*, i8*, i64) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, i64) #1

declare dso_local i32 @ecore_bmap_release_id(%struct.ecore_hwfn*, %struct.ecore_bmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
