; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }

@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_iov_free(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %3 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %4 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %5 = call i32 @ecore_spq_unregister_async_cb(%struct.ecore_hwfn* %3, i32 %4)
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %7 = call i64 @IS_PF_SRIOV_ALLOC(%struct.ecore_hwfn* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %11 = call i32 @ecore_iov_free_vfdb(%struct.ecore_hwfn* %10)
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @OSAL_FREE(i32 %14, i32 %17)
  %19 = load i32, i32* @OSAL_NULL, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @ecore_spq_unregister_async_cb(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @IS_PF_SRIOV_ALLOC(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iov_free_vfdb(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_FREE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
