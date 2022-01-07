; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_set_ptt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_set_ptt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64 }
%struct.ecore_ptt = type { i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"ptt[%d] of hwfn[%02x] is used by hwfn[%02x]!\0A\00", align 1
@PXP_EXTERNAL_BAR_PF_WINDOW_SINGLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64)* @ecore_set_ptt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecore_set_ptt(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %10 = call i64 @ecore_ptt_get_hw_addr(%struct.ecore_ptt* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = sub nsw i64 %11, %12
  store i64 %13, i64* %8, align 8
  %14 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_ptt, %struct.ecore_ptt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %23 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_ptt, %struct.ecore_ptt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %27 = getelementptr inbounds %struct.ecore_ptt, %struct.ecore_ptt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %22, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %28, i64 %31)
  br label %33

33:                                               ; preds = %21, %3
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @PXP_EXTERNAL_BAR_PF_WINDOW_SINGLE_SIZE, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %33
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %43 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @ecore_ptt_set_win(%struct.ecore_hwfn* %42, %struct.ecore_ptt* %43, i64 %44)
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %48 = call i64 @ecore_ptt_get_bar_addr(%struct.ecore_ptt* %47)
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %48, %49
  ret i64 %50
}

declare dso_local i64 @ecore_ptt_get_hw_addr(%struct.ecore_ptt*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @ecore_ptt_set_win(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i64 @ecore_ptt_get_bar_addr(%struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
