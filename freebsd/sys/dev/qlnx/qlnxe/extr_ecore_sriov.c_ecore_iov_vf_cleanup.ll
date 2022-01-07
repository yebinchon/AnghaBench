; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i32, i32, i32, %struct.ecore_vf_queue*, i64, i32, i32, i32, i64, i64, i64 }
%struct.ecore_vf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ECORE_MAX_VF_CHAINS_PER_PF = common dso_local global i64 0, align 8
@MAX_QUEUES_PER_QZONE = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_vf_info*)* @ecore_iov_vf_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_cleanup(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_vf_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ecore_vf_queue*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %4, align 8
  %8 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %9 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %8, i32 0, i32 10
  store i64 0, i64* %9, align 8
  %10 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %10, i32 0, i32 9
  store i64 0, i64* %11, align 8
  %12 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %18 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %23 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %25 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %71, %2
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @ECORE_MAX_VF_CHAINS_PER_PF, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %32 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %31, i32 0, i32 3
  %33 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %33, i64 %34
  store %struct.ecore_vf_queue* %35, %struct.ecore_vf_queue** %7, align 8
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %67, %30
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @MAX_QUEUES_PER_QZONE, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %36
  %41 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %7, align 8
  %42 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %67

50:                                               ; preds = %40
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %52 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %7, align 8
  %53 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn* %51, i64 %58)
  %60 = load i64, i64* @OSAL_NULL, align 8
  %61 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %7, align 8
  %62 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i64 %60, i64* %66, align 8
  br label %67

67:                                               ; preds = %50, %49
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %36

70:                                               ; preds = %36
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %26

74:                                               ; preds = %26
  %75 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %76 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %75, i32 0, i32 2
  %77 = call i32 @OSAL_MEMSET(i32* %76, i32 0, i32 4)
  %78 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %79 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %78, i32 0, i32 1
  %80 = call i32 @OSAL_MEMSET(i32* %79, i32 0, i32 4)
  %81 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %82 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %83 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @OSAL_IOV_VF_CLEANUP(%struct.ecore_hwfn* %81, i32 %84)
  ret void
}

declare dso_local i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn*, i64) #1

declare dso_local i32 @OSAL_MEMSET(i32*, i32, i32) #1

declare dso_local i32 @OSAL_IOV_VF_CLEANUP(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
