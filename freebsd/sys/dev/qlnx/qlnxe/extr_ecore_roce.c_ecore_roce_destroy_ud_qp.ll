; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_destroy_ud_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_destroy_ud_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"destroy ud qp failed due to NULL rdma_cxt\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_DESTROY_UD_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"freed a ud qp with cid=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed destroying a ud qp with cid=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_roce_destroy_ud_qp(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_sp_init_data, align 4
  %8 = alloca %struct.ecore_spq_entry*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %11, %struct.ecore_hwfn** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.ecore_hwfn*
  %20 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_ERR(%struct.ecore_hwfn* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  %23 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %7, i32 0, i32 12)
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %7, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %32 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %34 = load i32, i32* @ROCE_RAMROD_DESTROY_UD_QP, align 4
  %35 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %36 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %33, %struct.ecore_spq_entry** %8, i32 %34, i32 %35, %struct.ecore_sp_init_data* %7)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ECORE_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %60

41:                                               ; preds = %22
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %43 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %8, align 8
  %44 = load i32, i32* @OSAL_NULL, align 4
  %45 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %42, %struct.ecore_spq_entry* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ECORE_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %60

50:                                               ; preds = %41
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ECORE_ROCE_ICID_TO_QP(i32 %52)
  %54 = call i32 @ecore_roce_free_qp(%struct.ecore_hwfn* %51, i32 %53)
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %56 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %55, i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %49, %40
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_ERR(%struct.ecore_hwfn* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %50, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, ...) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @ecore_roce_free_qp(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ECORE_ROCE_ICID_TO_QP(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
