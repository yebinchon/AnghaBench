; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_update_unicast_shadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_update_unicast_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i32 }
%struct.ecore_filter_ucast = type { i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_FILTER_MAC = common dso_local global i64 0, align 8
@ECORE_FILTER_VLAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_filter_ucast*)* @ecore_iov_vf_update_unicast_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_vf_update_unicast_shadow(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, %struct.ecore_filter_ucast* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_filter_ucast*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %6, align 8
  store %struct.ecore_filter_ucast* %2, %struct.ecore_filter_ucast** %7, align 8
  %9 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %11 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ECORE_FILTER_MAC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %17 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %18 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %19 = call i32 @ecore_iov_vf_update_mac_shadow(%struct.ecore_hwfn* %16, %struct.ecore_vf_info* %17, %struct.ecore_filter_ucast* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %28 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ECORE_FILTER_VLAN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %34 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %35 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %7, align 8
  %36 = call i32 @ecore_iov_vf_update_vlan_shadow(%struct.ecore_hwfn* %33, %struct.ecore_vf_info* %34, %struct.ecore_filter_ucast* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %32, %26
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %23
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @ecore_iov_vf_update_mac_shadow(%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_filter_ucast*) #1

declare dso_local i32 @ecore_iov_vf_update_vlan_shadow(%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_filter_ucast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
