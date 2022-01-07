; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { i32 }

@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CHANNEL_TLV_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_vf_mbx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_mbx_close(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %6, align 8
  store i32 4, i32* %7, align 4
  %9 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %12 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %13 = call i32 @ecore_iov_vf_igu_set_int(%struct.ecore_hwfn* %10, %struct.ecore_ptt* %11, %struct.ecore_vf_info* %12, i32 0)
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %16 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %17 = call i32 @ecore_iov_config_perm_table(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, %struct.ecore_vf_info* %16, i32 0)
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %20 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %21 = load i32, i32* @CHANNEL_TLV_CLOSE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn* %18, %struct.ecore_ptt* %19, %struct.ecore_vf_info* %20, i32 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @ecore_iov_vf_igu_set_int(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32) #1

declare dso_local i32 @ecore_iov_config_perm_table(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32) #1

declare dso_local i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
