; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetDeltaSlope.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetDeltaSlope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_PHY_TIMING3 = common dso_local global i32 0, align 4
@AR_PHY_TIMING3_DSC_MAN = common dso_local global i32 0, align 4
@AR_PHY_TIMING3_DSC_EXP = common dso_local global i32 0, align 4
@COEF_SCALE_S = common dso_local global i64 0, align 8
@INIT_CLOCKMHZSCALED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetDeltaSlope(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %14 = call i64 @ath_hal_gethwchannel(%struct.ath_hal* %12, %struct.ieee80211_channel* %13)
  store i64 %14, i64* %5, align 8
  store i64 1677721600, i64* %11, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %16 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* %11, align 8
  %20 = mul i64 %19, 2
  store i64 %20, i64* %11, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %23 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8
  %27 = lshr i64 %26, 1
  store i64 %27, i64* %11, align 8
  br label %36

28:                                               ; preds = %21
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* %11, align 8
  %34 = lshr i64 %33, 2
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %5, align 8
  %39 = udiv i64 %37, %38
  store i64 %39, i64* %6, align 8
  store i64 31, i64* %7, align 8
  br label %40

40:                                               ; preds = %51, %36
  %41 = load i64, i64* %7, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = lshr i64 %44, %45
  %47 = and i64 %46, 1
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %54

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %7, align 8
  br label %40

54:                                               ; preds = %49, %40
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @HALASSERT(i64 %55)
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, 24
  %59 = sub i64 14, %58
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 24, %61
  %63 = sub i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = add i64 %60, %66
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 24, %69
  %71 = lshr i64 %68, %70
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, 16
  store i64 %73, i64* %9, align 8
  %74 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %75 = load i32, i32* @AR_PHY_TIMING3, align 4
  %76 = load i32, i32* @AR_PHY_TIMING3_DSC_MAN, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %74, i32 %75, i32 %76, i64 %77)
  %79 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %80 = load i32, i32* @AR_PHY_TIMING3, align 4
  %81 = load i32, i32* @AR_PHY_TIMING3_DSC_EXP, align 4
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %79, i32 %80, i32 %81, i64 %82)
  ret void
}

declare dso_local i64 @ath_hal_gethwchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i32 @HALASSERT(i64) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
