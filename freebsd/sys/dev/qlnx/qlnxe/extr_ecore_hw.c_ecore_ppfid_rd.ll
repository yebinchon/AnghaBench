; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_ppfid_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_ppfid_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@PXP_PRETEND_CONCRETE_FID_PFID_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_ppfid_rd(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ECORE_PFID_BY_PPFID(%struct.ecore_hwfn* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @PXP_PRETEND_CONCRETE_FID_PFID_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, i32 %18)
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ecore_rd(%struct.ecore_hwfn* %20, %struct.ecore_ptt* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PXP_PRETEND_CONCRETE_FID_PFID_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %24, %struct.ecore_ptt* %25, i32 %30)
  %32 = load i32, i32* %10, align 4
  ret i32 %32
}

declare dso_local i32 @ECORE_PFID_BY_PPFID(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_fid_pretend(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
