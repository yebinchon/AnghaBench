; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9280_attach.c_ar9280InitPLL.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9280_attach.c_ar9280InitPLL.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9280InitPLL(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load i32, i32* @AR_RTC_SOWL_PLL_REFDIV, align 4
  %7 = call i32 @SM(i32 5, i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = call i64 @AR_SREV_MERLIN_20(%struct.ath_hal* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %14 = icmp ne %struct.ieee80211_channel* %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %22 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %20, %struct.ieee80211_channel* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 5164, i32 10320
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %27 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @AR_RTC_SOWL_PLL_CLKSEL, align 4
  %31 = call i32 @SM(i32 1, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %44

34:                                               ; preds = %19
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %36 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @AR_RTC_SOWL_PLL_CLKSEL, align 4
  %40 = call i32 @SM(i32 2, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %29
  br label %96

45:                                               ; preds = %15, %11, %2
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = call i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %45
  %50 = load i32, i32* @AR_RTC_SOWL_PLL_REFDIV, align 4
  %51 = call i32 @SM(i32 5, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %54 = icmp ne %struct.ieee80211_channel* %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %49
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %57 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @AR_RTC_SOWL_PLL_CLKSEL, align 4
  %61 = call i32 @SM(i32 1, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %74

64:                                               ; preds = %55
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %66 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @AR_RTC_SOWL_PLL_CLKSEL, align 4
  %70 = call i32 @SM(i32 2, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %64
  br label %74

74:                                               ; preds = %73, %59
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %76 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* @AR_RTC_SOWL_PLL_DIV, align 4
  %80 = call i32 @SM(i32 40, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %88

83:                                               ; preds = %74
  %84 = load i32, i32* @AR_RTC_SOWL_PLL_DIV, align 4
  %85 = call i32 @SM(i32 44, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %78
  br label %94

89:                                               ; preds = %49
  %90 = load i32, i32* @AR_RTC_SOWL_PLL_DIV, align 4
  %91 = call i32 @SM(i32 44, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %88
  br label %95

95:                                               ; preds = %94, %45
  br label %96

96:                                               ; preds = %95, %44
  %97 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %98 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @OS_REG_WRITE(%struct.ath_hal* %97, i32 %98, i32 %99)
  %101 = load i32, i32* @RTC_PLL_SETTLE_DELAY, align 4
  %102 = call i32 @OS_DELAY(i32 %101)
  %103 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %104 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %105 = load i32, i32* @AR_RTC_SLEEP_DERIVED_CLK, align 4
  %106 = call i32 @OS_REG_WRITE(%struct.ath_hal* %103, i32 %104, i32 %105)
  ret void
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @AR_SREV_MERLIN_20(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
