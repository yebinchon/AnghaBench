; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_hw_init_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_hw_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_cxt_hw_init_pf(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %7 = call i32 @ecore_qm_init_pf(%struct.ecore_hwfn* %5, %struct.ecore_ptt* %6, i32 1)
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = call i32 @ecore_cm_init_pf(%struct.ecore_hwfn* %8)
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = call i32 @ecore_dq_init_pf(%struct.ecore_hwfn* %10)
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = call i32 @ecore_cdu_init_pf(%struct.ecore_hwfn* %12)
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = call i32 @ecore_ilt_init_pf(%struct.ecore_hwfn* %14)
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %17 = call i32 @ecore_src_init_pf(%struct.ecore_hwfn* %16)
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %19 = call i32 @ecore_tm_init_pf(%struct.ecore_hwfn* %18)
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = call i32 @ecore_prs_init_pf(%struct.ecore_hwfn* %20)
  ret void
}

declare dso_local i32 @ecore_qm_init_pf(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_cm_init_pf(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_dq_init_pf(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_cdu_init_pf(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_ilt_init_pf(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_src_init_pf(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_tm_init_pf(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_prs_init_pf(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
