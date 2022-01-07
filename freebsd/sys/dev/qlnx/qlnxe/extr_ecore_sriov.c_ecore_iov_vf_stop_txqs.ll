; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_stop_txqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_stop_txqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { %struct.ecore_vf_queue* }
%struct.ecore_vf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_IOV_VALIDATE_Q_NA = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i64)* @ecore_iov_vf_stop_txqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_vf_stop_txqs(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_vf_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ecore_vf_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %14 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* @ECORE_IOV_VALIDATE_Q_NA, align 4
  %17 = call i32 @ecore_iov_validate_txq(%struct.ecore_hwfn* %13, %struct.ecore_vf_info* %14, i64 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %70

21:                                               ; preds = %4
  %22 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %22, i32 0, i32 0
  %24 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %24, i64 %25
  store %struct.ecore_vf_queue* %26, %struct.ecore_vf_queue** %10, align 8
  %27 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %10, align 8
  %28 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %10, align 8
  %37 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35, %21
  %45 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %70

46:                                               ; preds = %35
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %48 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %10, align 8
  %49 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ecore_eth_tx_queue_stop(%struct.ecore_hwfn* %47, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %70

61:                                               ; preds = %46
  %62 = load i64, i64* @OSAL_NULL, align 8
  %63 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %10, align 8
  %64 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 %62, i64* %68, align 8
  %69 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %61, %59, %44, %19
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ecore_iov_validate_txq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @ecore_eth_tx_queue_stop(%struct.ecore_hwfn*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
