; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_rdma_qp = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ecore_rdma_destroy_qp_out_params = type { i64, i64 }

@ECORE_ROCE_QP_STATE_RESET = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_ERR = common dso_local global i64 0, align 8
@ECORE_ROCE_QP_STATE_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"QP must be in error, reset or init state before destroying it\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"number of invalidate memory windows is different from bounded ones\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_roce_destroy_qp(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_destroy_qp_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_rdma_qp*, align 8
  %7 = alloca %struct.ecore_rdma_destroy_qp_out_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %6, align 8
  store %struct.ecore_rdma_destroy_qp_out_params* %2, %struct.ecore_rdma_destroy_qp_out_params** %7, align 8
  %13 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ECORE_ROCE_QP_STATE_RESET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ECORE_ROCE_QP_STATE_ERR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %34 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ECORE_ROCE_QP_STATE_INIT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %39, i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %88

42:                                               ; preds = %32, %26, %3
  %43 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ECORE_ROCE_QP_STATE_RESET, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %50 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %51 = call i32 @ecore_roce_sp_destroy_qp_responder(%struct.ecore_hwfn* %49, %struct.ecore_rdma_qp* %50, i64* %10, i64* %8)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @ECORE_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %88

57:                                               ; preds = %48
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %59 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %60 = call i32 @ecore_roce_sp_destroy_qp_requester(%struct.ecore_hwfn* %58, %struct.ecore_rdma_qp* %59, i64* %11, i64* %9)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @ECORE_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %88

66:                                               ; preds = %57
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %72 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %71, i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %73, i32* %4, align 4
  br label %88

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %42
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %77 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %78 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ecore_roce_free_qp(%struct.ecore_hwfn* %76, i32 %79)
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.ecore_rdma_destroy_qp_out_params*, %struct.ecore_rdma_destroy_qp_out_params** %7, align 8
  %83 = getelementptr inbounds %struct.ecore_rdma_destroy_qp_out_params, %struct.ecore_rdma_destroy_qp_out_params* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.ecore_rdma_destroy_qp_out_params*, %struct.ecore_rdma_destroy_qp_out_params** %7, align 8
  %86 = getelementptr inbounds %struct.ecore_rdma_destroy_qp_out_params, %struct.ecore_rdma_destroy_qp_out_params* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %75, %70, %64, %55, %38
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_roce_sp_destroy_qp_responder(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i64*, i64*) #1

declare dso_local i32 @ecore_roce_sp_destroy_qp_requester(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i64*, i64*) #1

declare dso_local i32 @ecore_roce_free_qp(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
