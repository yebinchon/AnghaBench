; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_remove_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_remove_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32)* @ecore_llh_remove_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_remove_filter(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ECORE_IS_E4(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ecore_llh_remove_filter_e4(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %23 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ecore_llh_remove_filter_e5(%struct.ecore_hwfn* %22, %struct.ecore_ptt* %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @ECORE_IS_E4(i32) #1

declare dso_local i32 @ecore_llh_remove_filter_e4(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_llh_remove_filter_e5(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
