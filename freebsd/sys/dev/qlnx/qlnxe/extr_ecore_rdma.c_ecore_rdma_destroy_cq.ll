; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_destroy_cq_in_params = type { i32 }
%struct.ecore_rdma_destroy_cq_out_params = type { i32 }
%struct.ecore_hwfn = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rdma_destroy_cq_output_params = type { i32 }
%struct.rdma_destroy_cq_ramrod_data = type { i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rdma_destroy_cq_ramrod_data }

@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"ecore destroy cq failed: cannot allocate memory (ramrod)\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_DESTROY_CQ = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Destroyed CQ, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_destroy_cq(i8* %0, %struct.ecore_rdma_destroy_cq_in_params* %1, %struct.ecore_rdma_destroy_cq_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecore_rdma_destroy_cq_in_params*, align 8
  %7 = alloca %struct.ecore_rdma_destroy_cq_out_params*, align 8
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.rdma_destroy_cq_output_params*, align 8
  %10 = alloca %struct.rdma_destroy_cq_ramrod_data*, align 8
  %11 = alloca %struct.ecore_sp_init_data, align 4
  %12 = alloca %struct.ecore_spq_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ecore_rdma_destroy_cq_in_params* %1, %struct.ecore_rdma_destroy_cq_in_params** %6, align 8
  store %struct.ecore_rdma_destroy_cq_out_params* %2, %struct.ecore_rdma_destroy_cq_out_params** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %16, %struct.ecore_hwfn** %8, align 8
  %17 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %19 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %20 = load %struct.ecore_rdma_destroy_cq_in_params*, %struct.ecore_rdma_destroy_cq_in_params** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_rdma_destroy_cq_in_params, %struct.ecore_rdma_destroy_cq_in_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %18, i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @OSAL_DMA_ALLOC_COHERENT(i32 %26, i32* %13, i32 4)
  %28 = inttoptr i64 %27 to %struct.rdma_destroy_cq_output_params*
  store %struct.rdma_destroy_cq_output_params* %28, %struct.rdma_destroy_cq_output_params** %9, align 8
  %29 = load %struct.rdma_destroy_cq_output_params*, %struct.rdma_destroy_cq_output_params** %9, align 8
  %30 = icmp ne %struct.rdma_destroy_cq_output_params* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %33 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %32, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %4, align 4
  br label %130

35:                                               ; preds = %3
  %36 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %11, i32 0, i32 12)
  %37 = load %struct.ecore_rdma_destroy_cq_in_params*, %struct.ecore_rdma_destroy_cq_in_params** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_rdma_destroy_cq_in_params, %struct.ecore_rdma_destroy_cq_in_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %11, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %11, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %47 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %11, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %49 = load i32, i32* @RDMA_RAMROD_DESTROY_CQ, align 4
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %51 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %48, %struct.ecore_spq_entry** %12, i32 %49, i32 %54, %struct.ecore_sp_init_data* %11)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %35
  br label %122

60:                                               ; preds = %35
  %61 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %12, align 8
  %62 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store %struct.rdma_destroy_cq_ramrod_data* %63, %struct.rdma_destroy_cq_ramrod_data** %10, align 8
  %64 = load %struct.rdma_destroy_cq_ramrod_data*, %struct.rdma_destroy_cq_ramrod_data** %10, align 8
  %65 = getelementptr inbounds %struct.rdma_destroy_cq_ramrod_data, %struct.rdma_destroy_cq_ramrod_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @DMA_REGPAIR_LE(i32 %66, i32 %67)
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %70 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %12, align 8
  %71 = load i32, i32* @OSAL_NULL, align 4
  %72 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %69, %struct.ecore_spq_entry* %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @ECORE_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %122

77:                                               ; preds = %60
  %78 = load %struct.rdma_destroy_cq_output_params*, %struct.rdma_destroy_cq_output_params** %9, align 8
  %79 = getelementptr inbounds %struct.rdma_destroy_cq_output_params, %struct.rdma_destroy_cq_output_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @OSAL_LE16_TO_CPU(i32 %80)
  %82 = load %struct.ecore_rdma_destroy_cq_out_params*, %struct.ecore_rdma_destroy_cq_out_params** %7, align 8
  %83 = getelementptr inbounds %struct.ecore_rdma_destroy_cq_out_params, %struct.ecore_rdma_destroy_cq_out_params* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %85 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.rdma_destroy_cq_output_params*, %struct.rdma_destroy_cq_output_params** %9, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %86, %struct.rdma_destroy_cq_output_params* %87, i32 %88, i32 4)
  %90 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %91 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @OSAL_SPIN_LOCK(i32* %93)
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %96 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %97 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load %struct.ecore_rdma_destroy_cq_in_params*, %struct.ecore_rdma_destroy_cq_in_params** %6, align 8
  %101 = getelementptr inbounds %struct.ecore_rdma_destroy_cq_in_params, %struct.ecore_rdma_destroy_cq_in_params* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %104 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %105 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %103, i32 %108)
  %110 = sub nsw i32 %102, %109
  %111 = call i32 @ecore_bmap_release_id(%struct.ecore_hwfn* %95, i32* %99, i32 %110)
  %112 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %113 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = call i32 @OSAL_SPIN_UNLOCK(i32* %115)
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %118 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %117, i32 %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %4, align 4
  br label %130

122:                                              ; preds = %76, %59
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %124 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.rdma_destroy_cq_output_params*, %struct.rdma_destroy_cq_output_params** %9, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %125, %struct.rdma_destroy_cq_output_params* %126, i32 %127, i32 4)
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %122, %77, %31
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @OSAL_DMA_ALLOC_COHERENT(i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @OSAL_LE16_TO_CPU(i32) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, %struct.rdma_destroy_cq_output_params*, i32, i32) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_bmap_release_id(%struct.ecore_hwfn*, i32*, i32) #1

declare dso_local i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
