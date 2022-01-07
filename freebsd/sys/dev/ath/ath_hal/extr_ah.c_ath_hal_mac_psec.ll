; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_mac_psec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_mac_psec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }

@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@CLOCK_FAST_RATE_5GHZ_OFDM = common dso_local global i64 0, align 8
@CLOCK_RATE = common dso_local global i64* null, align 8
@WIRELESS_MODE_11b = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hal_mac_psec(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %10, %struct.ieee80211_channel** %5, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %13 = icmp ne %struct.ieee80211_channel* %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %17 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %15, %struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = mul i64 %20, 1000000
  %22 = load i64, i64* @CLOCK_FAST_RATE_5GHZ_OFDM, align 8
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %26 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %19
  br label %64

32:                                               ; preds = %14, %2
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %35 = icmp ne %struct.ieee80211_channel* %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = mul i64 %37, 1000000
  %39 = load i64*, i64** @CLOCK_RATE, align 8
  %40 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %42 = call i64 @ath_hal_chan2wmode(%struct.ath_hal* %40, %struct.ieee80211_channel* %41)
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = udiv i64 %38, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %48 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %36
  br label %63

54:                                               ; preds = %32
  %55 = load i64, i64* %4, align 8
  %56 = mul i64 %55, 1000000
  %57 = load i64*, i64** @CLOCK_RATE, align 8
  %58 = load i64, i64* @WIRELESS_MODE_11b, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = udiv i64 %56, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %54, %53
  br label %64

64:                                               ; preds = %63, %31
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @ath_hal_chan2wmode(%struct.ath_hal*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
