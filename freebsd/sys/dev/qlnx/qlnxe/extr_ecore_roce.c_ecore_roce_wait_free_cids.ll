; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_wait_free_cids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_wait_free_cids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.ecore_rdma_info* }
%struct.ecore_rdma_info = type { i32, i32 }

@ECORE_ROCE_CREATE_QP_MSLEEP = common dso_local global i32 0, align 4
@ECORE_ROCE_CREATE_QP_ATTEMPTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"responder and/or requester CIDs are still in use. resp=%d, req=%d\0A\00", align 1
@ECORE_AGAIN = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i64)* @ecore_roce_wait_free_cids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_roce_wait_free_cids(%struct.ecore_hwfn* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ecore_rdma_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 1
  %14 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %13, align 8
  store %struct.ecore_rdma_info* %14, %struct.ecore_rdma_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @ECORE_ROCE_QP_TO_ICID(i64 %15)
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %57, %2
  %18 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %18, i32 0, i32 0
  %20 = call i32 @OSAL_SPIN_LOCK(i32* %19)
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %22 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %22, i32 0, i32 1
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @ecore_bmap_test_id(%struct.ecore_hwfn* %21, i32* %23, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %27, i32 0, i32 1
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @ecore_bmap_test_id(%struct.ecore_hwfn* %26, i32* %28, i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %34, %17
  %39 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %6, align 8
  %40 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %39, i32 0, i32 0
  %41 = call i32 @OSAL_SPIN_UNLOCK(i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ECORE_ROCE_CREATE_QP_MSLEEP, align 4
  %46 = call i32 @OSAL_MSLEEP(i32 %45)
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @ECORE_ROCE_CREATE_QP_ATTEMPTS, align 8
  %56 = icmp slt i64 %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %17, label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %64 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @DP_ERR(i32 %65, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %59
  %71 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %62
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @ECORE_ROCE_QP_TO_ICID(i64) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_bmap_test_id(%struct.ecore_hwfn*, i32*, i64) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @DP_ERR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
