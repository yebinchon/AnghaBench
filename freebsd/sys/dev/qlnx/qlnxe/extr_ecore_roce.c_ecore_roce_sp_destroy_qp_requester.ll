; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_destroy_qp_requester.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_destroy_qp_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_rdma_qp = type { i32, i32, i32, i32, %struct.roce_destroy_qp_req_output_params*, %struct.TYPE_6__, i32 }
%struct.roce_destroy_qp_req_output_params = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.roce_destroy_qp_req_ramrod_data = type { i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.roce_destroy_qp_req_ramrod_data }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"ecore destroy requester failed: cannot allocate memory (ramrod)\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_DESTROY_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@RDMA_RING_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Destroy requester, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i32*, i32*)* @ecore_roce_sp_destroy_qp_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_roce_sp_destroy_qp_requester(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_rdma_qp*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.roce_destroy_qp_req_output_params*, align 8
  %11 = alloca %struct.roce_destroy_qp_req_ramrod_data*, align 8
  %12 = alloca %struct.ecore_sp_init_data, align 4
  %13 = alloca %struct.ecore_spq_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %17 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %23, i32* %5, align 4
  br label %138

24:                                               ; preds = %4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %26 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %27 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %25, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %24
  %36 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %37 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %41, i32* %5, align 4
  br label %138

42:                                               ; preds = %24
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @OSAL_DMA_ALLOC_COHERENT(i32 %45, i32* %14, i32 8)
  %47 = inttoptr i64 %46 to %struct.roce_destroy_qp_req_output_params*
  store %struct.roce_destroy_qp_req_output_params* %47, %struct.roce_destroy_qp_req_output_params** %10, align 8
  %48 = load %struct.roce_destroy_qp_req_output_params*, %struct.roce_destroy_qp_req_output_params** %10, align 8
  %49 = icmp ne %struct.roce_destroy_qp_req_output_params* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %52 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %51, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %53, i32* %5, align 4
  br label %138

54:                                               ; preds = %42
  %55 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %12, i32 0, i32 12)
  %56 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %57 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %67 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %69 = load i32, i32* @ROCE_RAMROD_DESTROY_QP, align 4
  %70 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %71 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %68, %struct.ecore_spq_entry** %13, i32 %69, i32 %70, %struct.ecore_sp_init_data* %12)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @ECORE_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  br label %130

76:                                               ; preds = %54
  %77 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %78 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store %struct.roce_destroy_qp_req_ramrod_data* %79, %struct.roce_destroy_qp_req_ramrod_data** %11, align 8
  %80 = load %struct.roce_destroy_qp_req_ramrod_data*, %struct.roce_destroy_qp_req_ramrod_data** %11, align 8
  %81 = getelementptr inbounds %struct.roce_destroy_qp_req_ramrod_data, %struct.roce_destroy_qp_req_ramrod_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @DMA_REGPAIR_LE(i32 %82, i32 %83)
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %86 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %87 = load i32, i32* @OSAL_NULL, align 4
  %88 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %85, %struct.ecore_spq_entry* %86, i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @ECORE_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %130

93:                                               ; preds = %76
  %94 = load %struct.roce_destroy_qp_req_output_params*, %struct.roce_destroy_qp_req_output_params** %10, align 8
  %95 = getelementptr inbounds %struct.roce_destroy_qp_req_output_params, %struct.roce_destroy_qp_req_output_params* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @OSAL_LE32_TO_CPU(i32 %96)
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.roce_destroy_qp_req_output_params*, %struct.roce_destroy_qp_req_output_params** %10, align 8
  %100 = getelementptr inbounds %struct.roce_destroy_qp_req_output_params, %struct.roce_destroy_qp_req_output_params* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @OSAL_LE32_TO_CPU(i32 %101)
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %107 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %110 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %113 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %112, i32 0, i32 4
  %114 = load %struct.roce_destroy_qp_req_output_params*, %struct.roce_destroy_qp_req_output_params** %113, align 8
  %115 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %116 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %119 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %122 = mul nsw i32 %120, %121
  %123 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %111, %struct.roce_destroy_qp_req_output_params* %114, i32 %117, i32 %122)
  %124 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %125 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %127 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %126, i32 %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %93, %92, %75
  %131 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %132 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.roce_destroy_qp_req_output_params*, %struct.roce_destroy_qp_req_output_params** %10, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %133, %struct.roce_destroy_qp_req_output_params* %134, i32 %135, i32 8)
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %130, %50, %35, %20
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @OSAL_LE32_TO_CPU(i32) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, %struct.roce_destroy_qp_req_output_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
