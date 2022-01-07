; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_fw_rss_eng.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_fw_rss_eng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }

@ECORE_RSS_ENG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"rss_eng id [%d] is not valid, available indices [%d - %d]\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_fw_rss_eng(%struct.ecore_hwfn* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = load i32, i32* @ECORE_RSS_ENG, align 4
  %13 = call i64 @RESC_NUM(%struct.ecore_hwfn* %11, i32 %12)
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %17 = load i32, i32* @ECORE_RSS_ENG, align 4
  %18 = call i64 @RESC_START(%struct.ecore_hwfn* %16, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %21 = load i32, i32* @ECORE_RSS_ENG, align 4
  %22 = call i64 @RESC_NUM(%struct.ecore_hwfn* %20, i32 %21)
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %24, i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26, i64 %27)
  %29 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %32 = load i32, i32* @ECORE_RSS_ENG, align 4
  %33 = call i64 @RESC_START(%struct.ecore_hwfn* %31, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @RESC_NUM(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @RESC_START(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
