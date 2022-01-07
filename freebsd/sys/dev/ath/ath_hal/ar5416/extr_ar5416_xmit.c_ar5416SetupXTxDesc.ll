; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416SetupXTxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416SetupXTxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5416_desc = type { i32, i32 }

@AR_XmitDataTries1 = common dso_local global i32 0, align 4
@AR_XmitRate1_S = common dso_local global i32 0, align 4
@AR_XmitDataTries2 = common dso_local global i32 0, align 4
@AR_XmitRate2_S = common dso_local global i32 0, align 4
@AR_XmitDataTries3 = common dso_local global i32 0, align 4
@AR_XmitRate3_S = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416SetupXTxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ath_hal*, align 8
  %10 = alloca %struct.ath_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ar5416_desc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %9, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.ath_desc*, %struct.ath_desc** %10, align 8
  %19 = call %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc* %18)
  store %struct.ar5416_desc* %19, %struct.ar5416_desc** %17, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @isValidTxRate(i32 %23)
  %25 = call i32 @HALASSERT(i32 %24)
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @AR_XmitDataTries1, align 4
  %28 = call i32 @SM(i32 %26, i32 %27)
  %29 = load %struct.ar5416_desc*, %struct.ar5416_desc** %17, align 8
  %30 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @AR_XmitRate1_S, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.ar5416_desc*, %struct.ar5416_desc** %17, align 8
  %37 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %22, %8
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @isValidTxRate(i32 %44)
  %46 = call i32 @HALASSERT(i32 %45)
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @AR_XmitDataTries2, align 4
  %49 = call i32 @SM(i32 %47, i32 %48)
  %50 = load %struct.ar5416_desc*, %struct.ar5416_desc** %17, align 8
  %51 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @AR_XmitRate2_S, align 4
  %56 = shl i32 %54, %55
  %57 = load %struct.ar5416_desc*, %struct.ar5416_desc** %17, align 8
  %58 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %43, %40
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @isValidTxRate(i32 %65)
  %67 = call i32 @HALASSERT(i32 %66)
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @AR_XmitDataTries3, align 4
  %70 = call i32 @SM(i32 %68, i32 %69)
  %71 = load %struct.ar5416_desc*, %struct.ar5416_desc** %17, align 8
  %72 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @AR_XmitRate3_S, align 4
  %77 = shl i32 %75, %76
  %78 = load %struct.ar5416_desc*, %struct.ar5416_desc** %17, align 8
  %79 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %64, %61
  %83 = load i32, i32* @AH_TRUE, align 4
  ret i32 %83
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @isValidTxRate(i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
