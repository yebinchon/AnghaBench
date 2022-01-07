; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_rdma_qp = type { i64, i32, i64, i32, %struct.ecore_iwarp_ep* }
%struct.ecore_iwarp_ep = type { i64 }
%struct.ecore_iwarp_fpdu = type { i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Pending Partial fpdu with incomplete bytes=%d\0A\00", align 1
@ECORE_IWARP_QP_STATE_ERROR = common dso_local global i64 0, align 8
@ECORE_IWARP_EP_CLOSED = common dso_local global i64 0, align 8
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Waiting for ep->state to be closed...state=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ep state close timeout state=%x\0A\00", align 1
@IWARP_SHARED_QUEUE_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iwarp_destroy_qp(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_rdma_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_iwarp_ep*, align 8
  %8 = alloca %struct.ecore_iwarp_fpdu*, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %5, align 8
  %10 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %11, i32 0, i32 4
  %13 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %12, align 8
  store %struct.ecore_iwarp_ep* %13, %struct.ecore_iwarp_ep** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.ecore_iwarp_fpdu* @ecore_iwarp_get_curr_fpdu(%struct.ecore_hwfn* %14, i32 %17)
  store %struct.ecore_iwarp_fpdu* %18, %struct.ecore_iwarp_fpdu** %8, align 8
  %19 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %20 = icmp ne %struct.ecore_iwarp_fpdu* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %23 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %29 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %27, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %26, %21, %2
  %33 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %34 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ECORE_IWARP_QP_STATE_ERROR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %40 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %41 = load i64, i64* @ECORE_IWARP_QP_STATE_ERROR, align 8
  %42 = call i32 @ecore_iwarp_modify_qp(%struct.ecore_hwfn* %39, %struct.ecore_rdma_qp* %40, i64 %41, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ECORE_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %103

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %51 = icmp ne %struct.ecore_iwarp_ep* %50, null
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %76, %52
  %54 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %55 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ECORE_IWARP_EP_CLOSED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %61 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %62 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %63 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %60, i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = call i32 @OSAL_MSLEEP(i32 100)
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = icmp sgt i32 %67, 200
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %72 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %73 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %71, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  br label %77

76:                                               ; preds = %59
  br label %53

77:                                               ; preds = %70, %53
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %79 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %80 = call i32 @ecore_iwarp_destroy_ep(%struct.ecore_hwfn* %78, %struct.ecore_iwarp_ep* %79, i32 0)
  br label %81

81:                                               ; preds = %77, %49
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %83 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %84 = call i32 @ecore_iwarp_fw_destroy(%struct.ecore_hwfn* %82, %struct.ecore_rdma_qp* %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %86 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %91 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %94 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %97 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SIZE, align 4
  %100 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %92, i64 %95, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %89, %81
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %46
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.ecore_iwarp_fpdu* @ecore_iwarp_get_curr_fpdu(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64) #1

declare dso_local i32 @ecore_iwarp_modify_qp(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @ecore_iwarp_destroy_ep(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*, i32) #1

declare dso_local i32 @ecore_iwarp_fw_destroy(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
