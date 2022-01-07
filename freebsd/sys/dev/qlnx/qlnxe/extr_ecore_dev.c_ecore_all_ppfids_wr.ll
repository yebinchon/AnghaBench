; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_all_ppfids_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_all_ppfids_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_all_ppfids_wr(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load %struct.ecore_dev*, %struct.ecore_dev** %15, align 8
  store %struct.ecore_dev* %16, %struct.ecore_dev** %10, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %41, %4
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %20 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %17
  %26 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @ecore_abs_ppfid(%struct.ecore_dev* %26, i64 %27, i64* %12)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @ECORE_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %46

34:                                               ; preds = %25
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %36 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ecore_ppfid_wr(%struct.ecore_hwfn* %35, %struct.ecore_ptt* %36, i64 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %11, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %11, align 8
  br label %17

44:                                               ; preds = %17
  %45 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %32
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @ecore_abs_ppfid(%struct.ecore_dev*, i64, i64*) #1

declare dso_local i32 @ecore_ppfid_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
