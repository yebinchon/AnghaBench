; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_vf_req_virt_mbx_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_vf_req_virt_mbx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_iov_get_vf_req_virt_mbx_params(%struct.ecore_hwfn* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %10, i32 %11, i32 1)
  store %struct.ecore_vf_info* %12, %struct.ecore_vf_info** %9, align 8
  %13 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %14 = icmp ne %struct.ecore_vf_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %30

16:                                               ; preds = %4
  %17 = load i8**, i8*** %7, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %21 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %7, align 8
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %15, %28, %25
  ret void
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
