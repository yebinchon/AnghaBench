; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_modify_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_modify_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_rdma_qp = type { i64, i32 }
%struct.iwarp_modify_qp_ramrod_data = type { i32, i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.iwarp_modify_qp_ramrod_data }

@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@IWARP_RAMROD_CMD_ID_MODIFY_QP = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@IWARP_MODIFY_QP_RAMROD_DATA_STATE_TRANS_EN = common dso_local global i32 0, align 4
@ECORE_IWARP_QP_STATE_CLOSING = common dso_local global i64 0, align 8
@IWARP_MODIFY_QP_STATE_CLOSING = common dso_local global i32 0, align 4
@IWARP_MODIFY_QP_STATE_ERROR = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"QP(0x%x)rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_rdma_qp*)* @ecore_iwarp_modify_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_modify_fw(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_rdma_qp*, align 8
  %6 = alloca %struct.iwarp_modify_qp_ramrod_data*, align 8
  %7 = alloca %struct.ecore_sp_init_data, align 4
  %8 = alloca %struct.ecore_spq_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %5, align 8
  %10 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %7, i32 0, i32 12)
  %11 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %21 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %23 = load i32, i32* @IWARP_RAMROD_CMD_ID_MODIFY_QP, align 4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %22, %struct.ecore_spq_entry** %8, i32 %23, i32 %28, %struct.ecore_sp_init_data* %7)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ECORE_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %70

35:                                               ; preds = %2
  %36 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %8, align 8
  %37 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.iwarp_modify_qp_ramrod_data* %38, %struct.iwarp_modify_qp_ramrod_data** %6, align 8
  %39 = load %struct.iwarp_modify_qp_ramrod_data*, %struct.iwarp_modify_qp_ramrod_data** %6, align 8
  %40 = getelementptr inbounds %struct.iwarp_modify_qp_ramrod_data, %struct.iwarp_modify_qp_ramrod_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IWARP_MODIFY_QP_RAMROD_DATA_STATE_TRANS_EN, align 4
  %43 = call i32 @SET_FIELD(i32 %41, i32 %42, i32 1)
  %44 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %45 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ECORE_IWARP_QP_STATE_CLOSING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* @IWARP_MODIFY_QP_STATE_CLOSING, align 4
  %51 = load %struct.iwarp_modify_qp_ramrod_data*, %struct.iwarp_modify_qp_ramrod_data** %6, align 8
  %52 = getelementptr inbounds %struct.iwarp_modify_qp_ramrod_data, %struct.iwarp_modify_qp_ramrod_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %57

53:                                               ; preds = %35
  %54 = load i32, i32* @IWARP_MODIFY_QP_STATE_ERROR, align 4
  %55 = load %struct.iwarp_modify_qp_ramrod_data*, %struct.iwarp_modify_qp_ramrod_data** %6, align 8
  %56 = getelementptr inbounds %struct.iwarp_modify_qp_ramrod_data, %struct.iwarp_modify_qp_ramrod_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %59 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %8, align 8
  %60 = load i32, i32* @OSAL_NULL, align 4
  %61 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %58, %struct.ecore_spq_entry* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %63 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %64 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %65 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %62, i32 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %57, %33
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
