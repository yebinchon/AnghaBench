; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_start_fastpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_start_fastpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_AGAIN = common dso_local global i32 0, align 4
@NIG_REG_RX_LLH_BRB_GATE_DNTFWD_PERPF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_hw_start_fastpath(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @IS_VF(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %11, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %13)
  store %struct.ecore_ptt* %14, %struct.ecore_ptt** %4, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %16 = icmp ne %struct.ecore_ptt* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %12
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ecore_wr(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %36, %31, %24, %19
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %45 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %46 = load i32, i32* @NIG_REG_RX_LLH_BRB_GATE_DNTFWD_PERPF, align 4
  %47 = call i32 @ecore_wr(%struct.ecore_hwfn* %44, %struct.ecore_ptt* %45, i32 %46, i32 0)
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %49 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %50 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %48, %struct.ecore_ptt* %49)
  %51 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %17, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
