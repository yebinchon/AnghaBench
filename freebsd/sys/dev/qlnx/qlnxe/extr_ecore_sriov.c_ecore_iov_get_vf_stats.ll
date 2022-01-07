; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_vf_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_vf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_eth_stats = type { i32 }
%struct.ecore_vf_info = type { i64, i64 }

@ECORE_INVAL = common dso_local global i32 0, align 4
@VF_ENABLED = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_get_vf_stats(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, %struct.ecore_eth_stats* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_eth_stats*, align 8
  %10 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ecore_eth_stats* %3, %struct.ecore_eth_stats** %9, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %11, i32 %12, i32 1)
  store %struct.ecore_vf_info* %13, %struct.ecore_vf_info** %10, align 8
  %14 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %15 = icmp ne %struct.ecore_vf_info* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %20 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VF_ENABLED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %25, i32* %5, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %29 = load %struct.ecore_eth_stats*, %struct.ecore_eth_stats** %9, align 8
  %30 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %10, align 8
  %31 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 16
  %34 = call i32 @__ecore_get_vport_stats(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, %struct.ecore_eth_stats* %29, i64 %33, i32 0)
  %35 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %26, %24, %16
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @__ecore_get_vport_stats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_eth_stats*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
