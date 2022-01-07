; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_modify_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_modify_srq_in_params = type { i32, i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_srq_modify_ramrod_data = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.ecore_sp_init_data = type { i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rdma_srq_modify_ramrod_data }

@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_MODIFY_SRQ = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"modified SRQ id = %x, is_xrc=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_modify_srq(i8* %0, %struct.ecore_rdma_modify_srq_in_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_rdma_modify_srq_in_params*, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.rdma_srq_modify_ramrod_data*, align 8
  %8 = alloca %struct.ecore_sp_init_data, align 4
  %9 = alloca %struct.ecore_spq_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_rdma_modify_srq_in_params* %1, %struct.ecore_rdma_modify_srq_in_params** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %14, %struct.ecore_hwfn** %6, align 8
  %15 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %8, i32 0, i32 8)
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %22 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = load i32, i32* @RDMA_RAMROD_MODIFY_SRQ, align 4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %23, %struct.ecore_spq_entry** %9, i32 %24, i32 %29, %struct.ecore_sp_init_data* %8)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @ECORE_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %3, align 4
  br label %88

36:                                               ; preds = %2
  %37 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %38 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.rdma_srq_modify_ramrod_data* %39, %struct.rdma_srq_modify_ramrod_data** %7, align 8
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %41 = load %struct.ecore_rdma_modify_srq_in_params*, %struct.ecore_rdma_modify_srq_in_params** %5, align 8
  %42 = getelementptr inbounds %struct.ecore_rdma_modify_srq_in_params, %struct.ecore_rdma_modify_srq_in_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ecore_rdma_modify_srq_in_params*, %struct.ecore_rdma_modify_srq_in_params** %5, align 8
  %45 = getelementptr inbounds %struct.ecore_rdma_modify_srq_in_params, %struct.ecore_rdma_modify_srq_in_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ecore_rdma_get_fw_srq_id(%struct.ecore_hwfn* %40, i32 %43, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i8* @OSAL_CPU_TO_LE16(i32 %48)
  %50 = load %struct.rdma_srq_modify_ramrod_data*, %struct.rdma_srq_modify_ramrod_data** %7, align 8
  %51 = getelementptr inbounds %struct.rdma_srq_modify_ramrod_data, %struct.rdma_srq_modify_ramrod_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i8* @OSAL_CPU_TO_LE16(i32 %57)
  %59 = load %struct.rdma_srq_modify_ramrod_data*, %struct.rdma_srq_modify_ramrod_data** %7, align 8
  %60 = getelementptr inbounds %struct.rdma_srq_modify_ramrod_data, %struct.rdma_srq_modify_ramrod_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %struct.ecore_rdma_modify_srq_in_params*, %struct.ecore_rdma_modify_srq_in_params** %5, align 8
  %63 = getelementptr inbounds %struct.ecore_rdma_modify_srq_in_params, %struct.ecore_rdma_modify_srq_in_params* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @OSAL_CPU_TO_LE16(i32 %64)
  %66 = load %struct.rdma_srq_modify_ramrod_data*, %struct.rdma_srq_modify_ramrod_data** %7, align 8
  %67 = getelementptr inbounds %struct.rdma_srq_modify_ramrod_data, %struct.rdma_srq_modify_ramrod_data* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %69 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %70 = load i32, i32* @OSAL_NULL, align 4
  %71 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %68, %struct.ecore_spq_entry* %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @ECORE_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %36
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %3, align 4
  br label %88

77:                                               ; preds = %36
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %79 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %80 = load %struct.ecore_rdma_modify_srq_in_params*, %struct.ecore_rdma_modify_srq_in_params** %5, align 8
  %81 = getelementptr inbounds %struct.ecore_rdma_modify_srq_in_params, %struct.ecore_rdma_modify_srq_in_params* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ecore_rdma_modify_srq_in_params*, %struct.ecore_rdma_modify_srq_in_params** %5, align 8
  %84 = getelementptr inbounds %struct.ecore_rdma_modify_srq_in_params, %struct.ecore_rdma_modify_srq_in_params* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %78, i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %77, %75, %34
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_rdma_get_fw_srq_id(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
