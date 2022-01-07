; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitPLL.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416InitPLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }

@AR_RTC_PLL_REFDIV_5 = common dso_local global i32 0, align 4
@AR_RTC_PLL_DIV2 = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@AR_RTC_PLL_CLKSEL = common dso_local global i32 0, align 4
@AR_RTC_PLL_DIV = common dso_local global i32 0, align 4
@AR_RTC_PLL_CONTROL = common dso_local global i32 0, align 4
@RTC_PLL_SETTLE_DELAY = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_CLK = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_DERIVED_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416InitPLL(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load i32, i32* @AR_RTC_PLL_REFDIV_5, align 4
  %7 = load i32, i32* @AR_RTC_PLL_DIV2, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %11 = icmp ne %struct.ieee80211_channel* %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %14 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* @AR_RTC_PLL_CLKSEL, align 4
  %18 = call i32 @SM(i32 1, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %31

21:                                               ; preds = %12
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %23 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @AR_RTC_PLL_CLKSEL, align 4
  %27 = call i32 @SM(i32 2, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %33 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @AR_RTC_PLL_DIV, align 4
  %37 = call i32 @SM(i32 10, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @AR_RTC_PLL_DIV, align 4
  %42 = call i32 @SM(i32 11, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %35
  br label %51

46:                                               ; preds = %2
  %47 = load i32, i32* @AR_RTC_PLL_DIV, align 4
  %48 = call i32 @SM(i32 11, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @OS_REG_WRITE(%struct.ath_hal* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @RTC_PLL_SETTLE_DELAY, align 4
  %57 = call i32 @OS_DELAY(i32 %56)
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %60 = load i32, i32* @AR_RTC_SLEEP_DERIVED_CLK, align 4
  %61 = call i32 @OS_REG_WRITE(%struct.ath_hal* %58, i32 %59, i32 %60)
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
