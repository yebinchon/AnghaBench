; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_mac_clks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_mac_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }

@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@CLOCK_FAST_RATE_5GHZ_OFDM = common dso_local global i32 0, align 4
@CLOCK_RATE = common dso_local global i32* null, align 8
@WIRELESS_MODE_11b = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hal_mac_clks(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %10, %struct.ieee80211_channel** %5, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %13 = icmp ne %struct.ieee80211_channel* %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %17 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %15, %struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CLOCK_FAST_RATE_5GHZ_OFDM, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %24 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %19
  br label %58

30:                                               ; preds = %14, %2
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %33 = icmp ne %struct.ieee80211_channel* %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32*, i32** @CLOCK_RATE, align 8
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %39 = call i64 @ath_hal_chan2wmode(%struct.ath_hal* %37, %struct.ieee80211_channel* %38)
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %35, %41
  store i32 %42, i32* %6, align 4
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %44 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %34
  br label %57

50:                                               ; preds = %30
  %51 = load i32, i32* %4, align 4
  %52 = load i32*, i32** @CLOCK_RATE, align 8
  %53 = load i64, i64* @WIRELESS_MODE_11b, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %51, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %49
  br label %58

58:                                               ; preds = %57, %29
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %61 = icmp ne %struct.ieee80211_channel* %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %64 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = sdiv i32 %67, 2
  store i32 %68, i32* %6, align 4
  br label %81

69:                                               ; preds = %62, %58
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %72 = icmp ne %struct.ieee80211_channel* %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %75 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = sdiv i32 %78, 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %73, %69
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @ath_hal_chan2wmode(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
