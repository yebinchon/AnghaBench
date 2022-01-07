; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_qp = type { i32 }
%struct.ecore_rdma_destroy_qp_out_params = type { i32 }
%struct.ecore_hwfn = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"ecore rdma destroy qp failed: invalid NULL input. rdma_cxt=%p, qp=%p\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"QP(0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_destroy_qp(i8* %0, %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_destroy_qp_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecore_rdma_qp*, align 8
  %7 = alloca %struct.ecore_rdma_destroy_qp_out_params*, align 8
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %6, align 8
  store %struct.ecore_rdma_destroy_qp_out_params* %2, %struct.ecore_rdma_destroy_qp_out_params** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %11, %struct.ecore_hwfn** %8, align 8
  %12 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %17 = icmp ne %struct.ecore_rdma_qp* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %22 = call i32 @DP_ERR(%struct.ecore_hwfn* %19, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %20, %struct.ecore_rdma_qp* %21)
  %23 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %26 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %27 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %25, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %32 = call i64 @IS_IWARP(%struct.ecore_hwfn* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %36 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %37 = call i32 @ecore_iwarp_destroy_qp(%struct.ecore_hwfn* %35, %struct.ecore_rdma_qp* %36)
  store i32 %37, i32* %9, align 4
  br label %43

38:                                               ; preds = %24
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %40 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %41 = load %struct.ecore_rdma_destroy_qp_out_params*, %struct.ecore_rdma_destroy_qp_out_params** %7, align 8
  %42 = call i32 @ecore_roce_destroy_qp(%struct.ecore_hwfn* %39, %struct.ecore_rdma_qp* %40, %struct.ecore_rdma_destroy_qp_out_params* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %45 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %48 = call i32 @OSAL_FREE(i32 %46, %struct.ecore_rdma_qp* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i8*, %struct.ecore_rdma_qp*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @IS_IWARP(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iwarp_destroy_qp(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*) #1

declare dso_local i32 @ecore_roce_destroy_qp(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, %struct.ecore_rdma_destroy_qp_out_params*) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_rdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
