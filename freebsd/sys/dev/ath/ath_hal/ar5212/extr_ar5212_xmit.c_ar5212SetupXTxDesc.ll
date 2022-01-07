; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_xmit.c_ar5212SetupXTxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_xmit.c_ar5212SetupXTxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5212_desc = type { i32, i32 }

@AR_XmitDataTries1 = common dso_local global i32 0, align 4
@AR_DurUpdateEna = common dso_local global i32 0, align 4
@AR_XmitRate1_S = common dso_local global i32 0, align 4
@AR_XmitDataTries2 = common dso_local global i32 0, align 4
@AR_XmitRate2_S = common dso_local global i32 0, align 4
@AR_XmitDataTries3 = common dso_local global i32 0, align 4
@AR_XmitRate3_S = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212SetupXTxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ath_hal*, align 8
  %10 = alloca %struct.ath_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ar5212_desc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %9, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.ath_desc*, %struct.ath_desc** %10, align 8
  %19 = call %struct.ar5212_desc* @AR5212DESC(%struct.ath_desc* %18)
  store %struct.ar5212_desc* %19, %struct.ar5212_desc** %17, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @isValidTxRate(i32 %23)
  %25 = call i32 @HALASSERT(i32 %24)
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @AR_XmitDataTries1, align 4
  %28 = call i32 @SM(i32 %26, i32 %27)
  %29 = load i32, i32* @AR_DurUpdateEna, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.ar5212_desc*, %struct.ar5212_desc** %17, align 8
  %32 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @AR_XmitRate1_S, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.ar5212_desc*, %struct.ar5212_desc** %17, align 8
  %39 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %22, %8
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @isValidTxRate(i32 %46)
  %48 = call i32 @HALASSERT(i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @AR_XmitDataTries2, align 4
  %51 = call i32 @SM(i32 %49, i32 %50)
  %52 = load i32, i32* @AR_DurUpdateEna, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ar5212_desc*, %struct.ar5212_desc** %17, align 8
  %55 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @AR_XmitRate2_S, align 4
  %60 = shl i32 %58, %59
  %61 = load %struct.ar5212_desc*, %struct.ar5212_desc** %17, align 8
  %62 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %45, %42
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @isValidTxRate(i32 %69)
  %71 = call i32 @HALASSERT(i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @AR_XmitDataTries3, align 4
  %74 = call i32 @SM(i32 %72, i32 %73)
  %75 = load i32, i32* @AR_DurUpdateEna, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.ar5212_desc*, %struct.ar5212_desc** %17, align 8
  %78 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @AR_XmitRate3_S, align 4
  %83 = shl i32 %81, %82
  %84 = load %struct.ar5212_desc*, %struct.ar5212_desc** %17, align 8
  %85 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %68, %65
  %89 = load i32, i32* @AH_TRUE, align 4
  ret i32 %89
}

declare dso_local %struct.ar5212_desc* @AR5212DESC(%struct.ath_desc*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @isValidTxRate(i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
