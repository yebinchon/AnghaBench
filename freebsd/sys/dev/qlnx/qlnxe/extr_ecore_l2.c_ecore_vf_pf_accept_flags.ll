; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_vf_pf_accept_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_vf_pf_accept_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_filter_accept_flags = type { i32 }
%struct.ecore_sp_vport_update_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_filter_accept_flags*)* @ecore_vf_pf_accept_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_vf_pf_accept_flags(%struct.ecore_hwfn* %0, %struct.ecore_filter_accept_flags* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_filter_accept_flags*, align 8
  %5 = alloca %struct.ecore_sp_vport_update_params, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_filter_accept_flags* %1, %struct.ecore_filter_accept_flags** %4, align 8
  %6 = call i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params* %5, i32 0, i32 4)
  %7 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %5, i32 0, i32 0
  %8 = load %struct.ecore_filter_accept_flags*, %struct.ecore_filter_accept_flags** %4, align 8
  %9 = call i32 @OSAL_MEMCPY(i32* %7, %struct.ecore_filter_accept_flags* %8, i32 4)
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = call i32 @ecore_vf_pf_vport_update(%struct.ecore_hwfn* %10, %struct.ecore_sp_vport_update_params* %5)
  ret i32 %11
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params*, i32, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i32*, %struct.ecore_filter_accept_flags*, i32) #1

declare dso_local i32 @ecore_vf_pf_vport_update(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
