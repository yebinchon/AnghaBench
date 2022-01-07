; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_alloc_qp_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_alloc_qp_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_rdma_info* }
%struct.ecore_rdma_info = type { i32, i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to allocate qp\0A\00", align 1
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@ECORE_ELEM_CXT = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_roce_alloc_qp_idx(%struct.ecore_hwfn* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ecore_rdma_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %13, align 8
  store %struct.ecore_rdma_info* %14, %struct.ecore_rdma_info** %6, align 8
  %15 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %15, i32 0, i32 1
  %17 = call i32 @OSAL_SPIN_LOCK(i32* %16)
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %19, i32 0, i32 2
  %21 = call i32 @ecore_rdma_bmap_alloc_id(%struct.ecore_hwfn* %18, i32* %20, i64* %10)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @ECORE_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %26, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %28, i32 0, i32 1
  %30 = call i32 @OSAL_SPIN_UNLOCK(i32* %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %85

32:                                               ; preds = %2
  %33 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %6, align 8
  %34 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %33, i32 0, i32 1
  %35 = call i32 @OSAL_SPIN_UNLOCK(i32* %34)
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @ecore_roce_wait_free_cids(%struct.ecore_hwfn* %36, i64 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %42, i32* %11, align 4
  br label %76

43:                                               ; preds = %32
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @ECORE_ROCE_QP_TO_ICID(i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %47 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %6, align 8
  %48 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %46, i32 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %51, %52
  store i64 %53, i64* %9, align 8
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %55 = load i32, i32* @ECORE_ELEM_CXT, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @ecore_cxt_dynamic_ilt_alloc(%struct.ecore_hwfn* %54, i32 %55, i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ECORE_SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %76

62:                                               ; preds = %43
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %64 = load i32, i32* @ECORE_ELEM_CXT, align 4
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @ecore_cxt_dynamic_ilt_alloc(%struct.ecore_hwfn* %63, i32 %64, i64 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @ECORE_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %76

72:                                               ; preds = %62
  %73 = load i64, i64* %10, align 8
  %74 = load i64*, i64** %5, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %75, i32* %3, align 4
  br label %85

76:                                               ; preds = %71, %61, %41
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @ecore_roce_free_qp(%struct.ecore_hwfn* %77, i64 %78)
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %81 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %80, i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %76, %72, %25
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_rdma_bmap_alloc_id(%struct.ecore_hwfn*, i32*, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @ecore_roce_wait_free_cids(%struct.ecore_hwfn*, i64) #1

declare dso_local i64 @ECORE_ROCE_QP_TO_ICID(i64) #1

declare dso_local i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_cxt_dynamic_ilt_alloc(%struct.ecore_hwfn*, i32, i64) #1

declare dso_local i32 @ecore_roce_free_qp(%struct.ecore_hwfn*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
