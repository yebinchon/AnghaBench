; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_destroy_srq_in_params = type { i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_srq_destroy_ramrod_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.ecore_sp_init_data = type { i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rdma_srq_destroy_ramrod_data }
%struct.ecore_bmap = type { i32 }

@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_DESTROY_SRQ = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"XRC/SRQ destroyed Id = %x, is_xrc=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_destroy_srq(i8* %0, %struct.ecore_rdma_destroy_srq_in_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_rdma_destroy_srq_in_params*, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.rdma_srq_destroy_ramrod_data*, align 8
  %8 = alloca %struct.ecore_sp_init_data, align 4
  %9 = alloca %struct.ecore_spq_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_bmap*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_rdma_destroy_srq_in_params* %1, %struct.ecore_rdma_destroy_srq_in_params** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %15, %struct.ecore_hwfn** %6, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %8, i32 0, i32 8)
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %24 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %26 = load i32, i32* @RDMA_RAMROD_DESTROY_SRQ, align 4
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %25, %struct.ecore_spq_entry** %9, i32 %26, i32 %31, %struct.ecore_sp_init_data* %8)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @ECORE_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %3, align 4
  br label %101

38:                                               ; preds = %2
  %39 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %40 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.rdma_srq_destroy_ramrod_data* %41, %struct.rdma_srq_destroy_ramrod_data** %7, align 8
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %43 = load %struct.ecore_rdma_destroy_srq_in_params*, %struct.ecore_rdma_destroy_srq_in_params** %5, align 8
  %44 = getelementptr inbounds %struct.ecore_rdma_destroy_srq_in_params, %struct.ecore_rdma_destroy_srq_in_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ecore_rdma_destroy_srq_in_params*, %struct.ecore_rdma_destroy_srq_in_params** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_rdma_destroy_srq_in_params, %struct.ecore_rdma_destroy_srq_in_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ecore_rdma_get_fw_srq_id(%struct.ecore_hwfn* %42, i32 %45, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @OSAL_CPU_TO_LE16(i32 %50)
  %52 = load %struct.rdma_srq_destroy_ramrod_data*, %struct.rdma_srq_destroy_ramrod_data** %7, align 8
  %53 = getelementptr inbounds %struct.rdma_srq_destroy_ramrod_data, %struct.rdma_srq_destroy_ramrod_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i8* @OSAL_CPU_TO_LE16(i32 %55)
  %57 = load %struct.rdma_srq_destroy_ramrod_data*, %struct.rdma_srq_destroy_ramrod_data** %7, align 8
  %58 = getelementptr inbounds %struct.rdma_srq_destroy_ramrod_data, %struct.rdma_srq_destroy_ramrod_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %61 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %62 = load i32, i32* @OSAL_NULL, align 4
  %63 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %60, %struct.ecore_spq_entry* %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @ECORE_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %38
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %3, align 4
  br label %101

69:                                               ; preds = %38
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %71 = load %struct.ecore_rdma_destroy_srq_in_params*, %struct.ecore_rdma_destroy_srq_in_params** %5, align 8
  %72 = getelementptr inbounds %struct.ecore_rdma_destroy_srq_in_params, %struct.ecore_rdma_destroy_srq_in_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.ecore_bmap* @ecore_rdma_get_srq_bmap(%struct.ecore_hwfn* %70, i32 %73)
  store %struct.ecore_bmap* %74, %struct.ecore_bmap** %12, align 8
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %76 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = call i32 @OSAL_SPIN_LOCK(i32* %78)
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %81 = load %struct.ecore_bmap*, %struct.ecore_bmap** %12, align 8
  %82 = load %struct.ecore_rdma_destroy_srq_in_params*, %struct.ecore_rdma_destroy_srq_in_params** %5, align 8
  %83 = getelementptr inbounds %struct.ecore_rdma_destroy_srq_in_params, %struct.ecore_rdma_destroy_srq_in_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ecore_bmap_release_id(%struct.ecore_hwfn* %80, %struct.ecore_bmap* %81, i32 %84)
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %87 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = call i32 @OSAL_SPIN_UNLOCK(i32* %89)
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %92 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %93 = load %struct.ecore_rdma_destroy_srq_in_params*, %struct.ecore_rdma_destroy_srq_in_params** %5, align 8
  %94 = getelementptr inbounds %struct.ecore_rdma_destroy_srq_in_params, %struct.ecore_rdma_destroy_srq_in_params* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ecore_rdma_destroy_srq_in_params*, %struct.ecore_rdma_destroy_srq_in_params** %5, align 8
  %97 = getelementptr inbounds %struct.ecore_rdma_destroy_srq_in_params, %struct.ecore_rdma_destroy_srq_in_params* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %91, i32 %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %69, %67, %36
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_rdma_get_fw_srq_id(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local %struct.ecore_bmap* @ecore_rdma_get_srq_bmap(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_bmap_release_id(%struct.ecore_hwfn*, %struct.ecore_bmap*, i32) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
