; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_destroy_qp_responder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_sp_destroy_qp_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_rdma_qp = type { i32, i32, i32, i32, %struct.roce_destroy_qp_resp_output_params*, %struct.TYPE_6__, i32 }
%struct.roce_destroy_qp_resp_output_params = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.roce_destroy_qp_resp_ramrod_data = type { i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.roce_destroy_qp_resp_ramrod_data }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_DESTROY_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"ecore destroy responder failed: cannot allocate memory (ramrod). rc = %d\0A\00", align 1
@OSAL_NULL = common dso_local global i32 0, align 4
@RDMA_RING_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Destroy responder, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i32*, i32*)* @ecore_roce_sp_destroy_qp_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_roce_sp_destroy_qp_responder(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_rdma_qp*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.roce_destroy_qp_resp_output_params*, align 8
  %11 = alloca %struct.roce_destroy_qp_resp_ramrod_data*, align 8
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
  br label %141

24:                                               ; preds = %4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %26 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %27 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %25, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %8, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %33 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %24
  %37 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %38 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %42, i32* %5, align 4
  br label %141

43:                                               ; preds = %24
  %44 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %12, i32 0, i32 12)
  %45 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %46 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %50 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %55 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %57 = load i32, i32* @ROCE_RAMROD_DESTROY_QP, align 4
  %58 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %59 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %56, %struct.ecore_spq_entry** %13, i32 %57, i32 %58, %struct.ecore_sp_init_data* %12)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @ECORE_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %5, align 4
  br label %141

65:                                               ; preds = %43
  %66 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %67 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store %struct.roce_destroy_qp_resp_ramrod_data* %68, %struct.roce_destroy_qp_resp_ramrod_data** %11, align 8
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %70 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @OSAL_DMA_ALLOC_COHERENT(i32 %71, i32* %14, i32 8)
  %73 = inttoptr i64 %72 to %struct.roce_destroy_qp_resp_output_params*
  store %struct.roce_destroy_qp_resp_output_params* %73, %struct.roce_destroy_qp_resp_output_params** %10, align 8
  %74 = load %struct.roce_destroy_qp_resp_output_params*, %struct.roce_destroy_qp_resp_output_params** %10, align 8
  %75 = icmp ne %struct.roce_destroy_qp_resp_output_params* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %77, i32* %15, align 4
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %78, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %5, align 4
  br label %141

82:                                               ; preds = %65
  %83 = load %struct.roce_destroy_qp_resp_ramrod_data*, %struct.roce_destroy_qp_resp_ramrod_data** %11, align 8
  %84 = getelementptr inbounds %struct.roce_destroy_qp_resp_ramrod_data, %struct.roce_destroy_qp_resp_ramrod_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @DMA_REGPAIR_LE(i32 %85, i32 %86)
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %89 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %90 = load i32, i32* @OSAL_NULL, align 4
  %91 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %88, %struct.ecore_spq_entry* %89, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @ECORE_SUCCESS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %133

96:                                               ; preds = %82
  %97 = load %struct.roce_destroy_qp_resp_output_params*, %struct.roce_destroy_qp_resp_output_params** %10, align 8
  %98 = getelementptr inbounds %struct.roce_destroy_qp_resp_output_params, %struct.roce_destroy_qp_resp_output_params* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @OSAL_LE32_TO_CPU(i32 %99)
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.roce_destroy_qp_resp_output_params*, %struct.roce_destroy_qp_resp_output_params** %10, align 8
  %103 = getelementptr inbounds %struct.roce_destroy_qp_resp_output_params, %struct.roce_destroy_qp_resp_output_params* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @OSAL_LE32_TO_CPU(i32 %104)
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %110 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %113 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %116 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %115, i32 0, i32 4
  %117 = load %struct.roce_destroy_qp_resp_output_params*, %struct.roce_destroy_qp_resp_output_params** %116, align 8
  %118 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %119 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %122 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %125 = mul nsw i32 %123, %124
  %126 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %114, %struct.roce_destroy_qp_resp_output_params* %117, i32 %120, i32 %125)
  %127 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %128 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %130 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %129, i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %96, %95
  %134 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %135 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.roce_destroy_qp_resp_output_params*, %struct.roce_destroy_qp_resp_output_params** %10, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %136, %struct.roce_destroy_qp_resp_output_params* %137, i32 %138, i32 8)
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %133, %76, %63, %36, %20
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i64 @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @OSAL_LE32_TO_CPU(i32) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, %struct.roce_destroy_qp_resp_output_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
