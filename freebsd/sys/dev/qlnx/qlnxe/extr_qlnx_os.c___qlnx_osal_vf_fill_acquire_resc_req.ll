; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c___qlnx_osal_vf_fill_acquire_resc_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c___qlnx_osal_vf_fill_acquire_resc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_acquire_sw_info = type { i32, i32 }

@QLNX_VERSION_MAJOR = common dso_local global i32 0, align 4
@QLNX_VERSION_MINOR = common dso_local global i32 0, align 4
@QLNX_VERSION_BUILD = common dso_local global i32 0, align 4
@VFPF_ACQUIRE_OS_FREEBSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_vf_acquire_sw_info*)* @__qlnx_osal_vf_fill_acquire_resc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qlnx_osal_vf_fill_acquire_resc_req(%struct.ecore_hwfn* %0, %struct.ecore_vf_acquire_sw_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_vf_acquire_sw_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_vf_acquire_sw_info* %1, %struct.ecore_vf_acquire_sw_info** %4, align 8
  %5 = load i32, i32* @QLNX_VERSION_MAJOR, align 4
  %6 = shl i32 %5, 24
  %7 = load i32, i32* @QLNX_VERSION_MINOR, align 4
  %8 = shl i32 %7, 16
  %9 = or i32 %6, %8
  %10 = load i32, i32* @QLNX_VERSION_BUILD, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ecore_vf_acquire_sw_info*, %struct.ecore_vf_acquire_sw_info** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_vf_acquire_sw_info, %struct.ecore_vf_acquire_sw_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @VFPF_ACQUIRE_OS_FREEBSD, align 4
  %15 = load %struct.ecore_vf_acquire_sw_info*, %struct.ecore_vf_acquire_sw_info** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_vf_acquire_sw_info, %struct.ecore_vf_acquire_sw_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
