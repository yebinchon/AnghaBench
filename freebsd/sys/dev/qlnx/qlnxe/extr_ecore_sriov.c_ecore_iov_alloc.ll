; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_pf_iov*, i32 }
%struct.ecore_pf_iov = type { i32 }

@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No SR-IOV - no need for IOV db\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to allocate `struct ecore_sriov'\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@ecore_sriov_eqe_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_pf_iov*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = call i32 @IS_PF_SRIOV(%struct.ecore_hwfn* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = load i32, i32* @ECORE_MSG_IOV, align 4
  %11 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %9, i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ecore_pf_iov* @OSAL_ZALLOC(i32 %16, i32 %17, i32 4)
  store %struct.ecore_pf_iov* %18, %struct.ecore_pf_iov** %4, align 8
  %19 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %20 = icmp ne %struct.ecore_pf_iov* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %23 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %22, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %13
  %26 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 0
  store %struct.ecore_pf_iov* %26, %struct.ecore_pf_iov** %28, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %30 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %31 = load i32, i32* @ecore_sriov_eqe_event, align 4
  %32 = call i32 @ecore_spq_register_async_cb(%struct.ecore_hwfn* %29, i32 %30, i32 %31)
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %34 = call i32 @ecore_iov_allocate_vfdb(%struct.ecore_hwfn* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %25, %21, %8
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @IS_PF_SRIOV(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local %struct.ecore_pf_iov* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_spq_register_async_cb(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_iov_allocate_vfdb(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
