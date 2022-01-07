; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ecore_rdma_qp = type { i32, i32, i32, i64, i64, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ecore_rdma_create_qp_out_params = type { i32, i32, i32*, i32* }
%struct.iwarp_create_qp_ramrod_data = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.ecore_sp_init_data = type { i32, i32, i64 }
%struct.ecore_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.iwarp_create_qp_ramrod_data }

@IWARP_SHARED_QUEUE_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"ecore iwarp create qp failed: cannot allocate memory (shared queue).\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@IWARP_SHARED_QUEUE_PAGE_SQ_PBL_OFFSET = common dso_local global i32 0, align 4
@IWARP_SHARED_QUEUE_PAGE_RQ_PBL_OFFSET = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@IWARP_RAMROD_CMD_ID_CREATE_QP = common dso_local global i32 0, align 4
@PROTOCOLID_IWARP = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_FMR_AND_RESERVED_EN = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_SIGNALED_COMP = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_RDMA_RD_EN = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_RDMA_WR_EN = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_ATOMIC_EN = common dso_local global i32 0, align 4
@IWARP_CREATE_QP_RAMROD_DATA_SRQ_FLG = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PQ_FLAGS_ACK = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iwarp_create_qp(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_create_qp_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_rdma_qp*, align 8
  %7 = alloca %struct.ecore_rdma_create_qp_out_params*, align 8
  %8 = alloca %struct.iwarp_create_qp_ramrod_data*, align 8
  %9 = alloca %struct.ecore_sp_init_data, align 8
  %10 = alloca %struct.ecore_spq_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %6, align 8
  store %struct.ecore_rdma_create_qp_out_params* %2, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %17, i32 0, i32 0
  %19 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SIZE, align 4
  %20 = call i64 @OSAL_DMA_ALLOC_COHERENT(i32 %16, i32* %18, i32 %19)
  %21 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %28, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %30, i32* %4, align 4
  br label %246

31:                                               ; preds = %3
  %32 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SQ_PBL_OFFSET, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %40 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %42 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SQ_PBL_OFFSET, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %47 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %49 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_RQ_PBL_OFFSET, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %56 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %58 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_RQ_PBL_OFFSET, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %7, align 8
  %63 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %31
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %66 = call i32 @ecore_iwarp_alloc_cid(%struct.ecore_hwfn* %65, i64* %13)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @ECORE_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %233

71:                                               ; preds = %64
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %74 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %73, i32 0, i32 15
  store i64 %72, i64* %74, align 8
  %75 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %9, i32 0, i32 16)
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %77 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %82 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %81, i32 0, i32 15
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 2
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %86 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %88 = load i32, i32* @IWARP_RAMROD_CMD_ID_CREATE_QP, align 4
  %89 = load i32, i32* @PROTOCOLID_IWARP, align 4
  %90 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %87, %struct.ecore_spq_entry** %10, i32 %88, i32 %89, %struct.ecore_sp_init_data* %9)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @ECORE_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %71
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %246

96:                                               ; preds = %71
  %97 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %10, align 8
  %98 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store %struct.iwarp_create_qp_ramrod_data* %99, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %100 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %101 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_FMR_AND_RESERVED_EN, align 4
  %104 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %105 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %104, i32 0, i32 14
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @SET_FIELD(i32 %102, i32 %103, i32 %106)
  %108 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %109 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_SIGNALED_COMP, align 4
  %112 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %113 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %112, i32 0, i32 13
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @SET_FIELD(i32 %110, i32 %111, i32 %114)
  %116 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %117 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_RDMA_RD_EN, align 4
  %120 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %121 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %120, i32 0, i32 12
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @SET_FIELD(i32 %118, i32 %119, i32 %122)
  %124 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %125 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_RDMA_WR_EN, align 4
  %128 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %129 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @SET_FIELD(i32 %126, i32 %127, i32 %130)
  %132 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %133 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_ATOMIC_EN, align 4
  %136 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %137 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @SET_FIELD(i32 %134, i32 %135, i32 %138)
  %140 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %141 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IWARP_CREATE_QP_RAMROD_DATA_SRQ_FLG, align 4
  %144 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %145 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @SET_FIELD(i32 %142, i32 %143, i32 %146)
  %148 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %149 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %152 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %154 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %157 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %159 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %162 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %164 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @OSAL_CPU_TO_LE32(i32 %166)
  %168 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %169 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  store i8* %167, i8** %170, align 8
  %171 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %172 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @OSAL_CPU_TO_LE32(i32 %174)
  %176 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %177 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i8* %175, i8** %178, align 8
  %179 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %180 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 16
  %184 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %185 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %183, %186
  %188 = call i8* @OSAL_CPU_TO_LE32(i32 %187)
  %189 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %190 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %189, i32 0, i32 4
  store i8* %188, i8** %190, align 8
  %191 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %192 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %194, 16
  %196 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %197 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %195, %198
  %200 = call i8* @OSAL_CPU_TO_LE32(i32 %199)
  %201 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %202 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %201, i32 0, i32 3
  store i8* %200, i8** %202, align 8
  %203 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %204 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = call i8* @OSAL_CPU_TO_LE16(i64 %205)
  %207 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %208 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  %209 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %210 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %211 = call i64 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %209, i32 %210)
  store i64 %211, i64* %12, align 8
  %212 = load i64, i64* %12, align 8
  %213 = call i8* @OSAL_CPU_TO_LE16(i64 %212)
  %214 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %215 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  %216 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %217 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %218 = call i64 @ecore_get_cm_pq_idx(%struct.ecore_hwfn* %216, i32 %217)
  store i64 %218, i64* %12, align 8
  %219 = load i64, i64* %12, align 8
  %220 = call i8* @OSAL_CPU_TO_LE16(i64 %219)
  %221 = load %struct.iwarp_create_qp_ramrod_data*, %struct.iwarp_create_qp_ramrod_data** %8, align 8
  %222 = getelementptr inbounds %struct.iwarp_create_qp_ramrod_data, %struct.iwarp_create_qp_ramrod_data* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  %223 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %224 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %10, align 8
  %225 = load i32, i32* @OSAL_NULL, align 4
  %226 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %223, %struct.ecore_spq_entry* %224, i32 %225)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* @ECORE_SUCCESS, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %96
  br label %233

231:                                              ; preds = %96
  %232 = load i32, i32* %11, align 4
  store i32 %232, i32* %4, align 4
  br label %246

233:                                              ; preds = %230, %70
  %234 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %235 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %238 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %241 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SIZE, align 4
  %244 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %236, i64 %239, i32 %242, i32 %243)
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %233, %231, %94, %27
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i64 @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_iwarp_alloc_cid(%struct.ecore_hwfn*, i64*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i64) #1

declare dso_local i64 @ecore_get_cm_pq_idx(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
