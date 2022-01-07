; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416GetTxCompletionRates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416GetTxCompletionRates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5416_desc = type { i32, i32 }

@AR_XmitRate0 = common dso_local global i32 0, align 4
@AR_XmitRate1 = common dso_local global i32 0, align 4
@AR_XmitRate2 = common dso_local global i32 0, align 4
@AR_XmitRate3 = common dso_local global i32 0, align 4
@AR_XmitDataTries0 = common dso_local global i32 0, align 4
@AR_XmitDataTries1 = common dso_local global i32 0, align 4
@AR_XmitDataTries2 = common dso_local global i32 0, align 4
@AR_XmitDataTries3 = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416GetTxCompletionRates(%struct.ath_hal* %0, %struct.ath_desc* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ar5416_desc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %11 = call %struct.ar5416_desc* @AR5416DESC_CONST(%struct.ath_desc* %10)
  store %struct.ar5416_desc* %11, %struct.ar5416_desc** %9, align 8
  %12 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %13 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AR_XmitRate0, align 4
  %16 = call i32 @MS(i32 %14, i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %20 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AR_XmitRate1, align 4
  %23 = call i32 @MS(i32 %21, i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %27 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AR_XmitRate2, align 4
  %30 = call i32 @MS(i32 %28, i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %34 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AR_XmitRate3, align 4
  %37 = call i32 @MS(i32 %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %41 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AR_XmitDataTries0, align 4
  %44 = call i32 @MS(i32 %42, i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %48 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AR_XmitDataTries1, align 4
  %51 = call i32 @MS(i32 %49, i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %55 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AR_XmitDataTries2, align 4
  %58 = call i32 @MS(i32 %56, i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %62 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AR_XmitDataTries3, align 4
  %65 = call i32 @MS(i32 %63, i32 %64)
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @AH_TRUE, align 4
  ret i32 %68
}

declare dso_local %struct.ar5416_desc* @AR5416DESC_CONST(%struct.ath_desc*) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
