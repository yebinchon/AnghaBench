; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_is_vf_started.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_is_vf_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i64 }

@VF_FREE = common dso_local global i64 0, align 8
@VF_STOPPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_is_vf_started(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %7, i32 %8, i32 1)
  store %struct.ecore_vf_info* %9, %struct.ecore_vf_info** %6, align 8
  %10 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %11 = icmp ne %struct.ecore_vf_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VF_FREE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VF_STOPPED, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi i1 [ false, %13 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
