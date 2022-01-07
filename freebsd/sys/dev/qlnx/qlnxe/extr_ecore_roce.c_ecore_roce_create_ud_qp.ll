; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_create_ud_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_create_ud_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_create_qp_out_params = type { i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"ecore roce create ud qp failed due to NULL entry (rdma_cxt=%p, out=%p)\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_CREATE_UD_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"created a ud qp with icid=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed creating a ud qp\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_roce_create_ud_qp(i8* %0, %struct.ecore_rdma_create_qp_out_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_rdma_create_qp_out_params*, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_sp_init_data, align 4
  %8 = alloca %struct.ecore_spq_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_rdma_create_qp_out_params* %1, %struct.ecore_rdma_create_qp_out_params** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %13, %struct.ecore_hwfn** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %5, align 8
  %18 = icmp ne %struct.ecore_rdma_create_qp_out_params* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %5, align 8
  %25 = call i32 @DP_ERR(i32 %22, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %23, %struct.ecore_rdma_create_qp_out_params* %24)
  %26 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %86

27:                                               ; preds = %16
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %29 = call i32 @ecore_roce_alloc_qp_idx(%struct.ecore_hwfn* %28, i32* %11)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ECORE_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %81

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @ECORE_ROCE_QP_TO_ICID(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %7, i32 0, i32 12)
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %7, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %7, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %46 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %7, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %48 = load i32, i32* @ROCE_RAMROD_CREATE_UD_QP, align 4
  %49 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %50 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %47, %struct.ecore_spq_entry** %8, i32 %48, i32 %49, %struct.ecore_sp_init_data* %7)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ECORE_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %77

55:                                               ; preds = %34
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %57 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %8, align 8
  %58 = load i32, i32* @OSAL_NULL, align 4
  %59 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %56, %struct.ecore_spq_entry* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ECORE_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %77

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %5, align 8
  %67 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 16711680, %68
  %70 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %5, align 8
  %71 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %73 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %72, i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %76, i32* %3, align 4
  br label %86

77:                                               ; preds = %63, %54
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @ecore_roce_free_qp(%struct.ecore_hwfn* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %33
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %83 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %84 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %82, i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %64, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @DP_ERR(i32, i8*, i8*, %struct.ecore_rdma_create_qp_out_params*) #1

declare dso_local i32 @ecore_roce_alloc_qp_idx(%struct.ecore_hwfn*, i32*) #1

declare dso_local i32 @ECORE_ROCE_QP_TO_ICID(i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_roce_free_qp(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
