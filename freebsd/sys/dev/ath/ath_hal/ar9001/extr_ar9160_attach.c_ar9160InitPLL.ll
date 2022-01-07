; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9001/extr_ar9160_attach.c_ar9160InitPLL.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9001/extr_ar9160_attach.c_ar9160InitPLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }

@AR_RTC_SOWL_PLL_REFDIV = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@AR_RTC_SOWL_PLL_CLKSEL = common dso_local global i32 0, align 4
@AR_RTC_SOWL_PLL_DIV = common dso_local global i32 0, align 4
@AR_RTC_PLL_CONTROL = common dso_local global i32 0, align 4
@RTC_PLL_SETTLE_DELAY = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_CLK = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_DERIVED_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9160InitPLL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9160InitPLL(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load i32, i32* @AR_RTC_SOWL_PLL_REFDIV, align 4
  %7 = call i32 @SM(i32 5, i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %10 = icmp ne %struct.ieee80211_channel* %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @AR_RTC_SOWL_PLL_CLKSEL, align 4
  %17 = call i32 @SM(i32 1, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %11
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %22 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @AR_RTC_SOWL_PLL_CLKSEL, align 4
  %26 = call i32 @SM(i32 2, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %20
  br label %30

30:                                               ; preds = %29, %15
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %32 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @AR_RTC_SOWL_PLL_DIV, align 4
  %36 = call i32 @SM(i32 80, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %44

39:                                               ; preds = %30
  %40 = load i32, i32* @AR_RTC_SOWL_PLL_DIV, align 4
  %41 = call i32 @SM(i32 88, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %34
  br label %50

45:                                               ; preds = %2
  %46 = load i32, i32* @AR_RTC_SOWL_PLL_DIV, align 4
  %47 = call i32 @SM(i32 88, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %44
  %51 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %52 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @OS_REG_WRITE(%struct.ath_hal* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @RTC_PLL_SETTLE_DELAY, align 4
  %56 = call i32 @OS_DELAY(i32 %55)
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %59 = load i32, i32* @AR_RTC_SLEEP_DERIVED_CLK, align 4
  %60 = call i32 @OS_REG_WRITE(%struct.ath_hal* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

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
