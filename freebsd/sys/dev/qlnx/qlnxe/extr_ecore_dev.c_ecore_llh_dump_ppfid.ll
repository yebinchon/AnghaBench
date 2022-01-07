; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_dump_ppfid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_dump_ppfid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }
%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_ptt* null, align 8
@ECORE_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_llh_dump_ppfid(%struct.ecore_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %10 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %9)
  store %struct.ecore_hwfn* %10, %struct.ecore_hwfn** %6, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %12 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %11)
  store %struct.ecore_ptt* %12, %struct.ecore_ptt** %7, align 8
  %13 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %14 = load %struct.ecore_ptt*, %struct.ecore_ptt** @OSAL_NULL, align 8
  %15 = icmp eq %struct.ecore_ptt* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %20 = call i64 @ECORE_IS_E4(%struct.ecore_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ecore_llh_dump_ppfid_e4(%struct.ecore_hwfn* %23, %struct.ecore_ptt* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ecore_llh_dump_ppfid_e5(%struct.ecore_hwfn* %28, %struct.ecore_ptt* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %35 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i64 @ECORE_IS_E4(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_llh_dump_ppfid_e4(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_llh_dump_ppfid_e5(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
