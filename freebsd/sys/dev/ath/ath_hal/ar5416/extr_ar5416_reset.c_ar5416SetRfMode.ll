; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetRfMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetRfMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }

@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@AR_PHY_MODE_DYNAMIC = common dso_local global i32 0, align 4
@AR_PHY_MODE_OFDM = common dso_local global i32 0, align 4
@AR_PHY_MODE_DYN_CCK_DISABLE = common dso_local global i32 0, align 4
@AR_PHY_MODE_RF5GHZ = common dso_local global i32 0, align 4
@AR_PHY_MODE_RF2GHZ = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar5416SetRfMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416SetRfMode(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %8 = icmp eq %struct.ieee80211_channel* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %56

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %12 = call i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  br label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @AR_PHY_MODE_OFDM, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %21 = call i64 @AR_SREV_MERLIN_20(%struct.ath_hal* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %26 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %24, %struct.ieee80211_channel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  %30 = load i32, i32* @AR_PHY_MODE_DYN_CCK_DISABLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %51

34:                                               ; preds = %23, %18
  %35 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %36 = call i32 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %40 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @AR_PHY_MODE_RF5GHZ, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @AR_PHY_MODE_RF2GHZ, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %34
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = load i32, i32* @AR_PHY_MODE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @OS_REG_WRITE(%struct.ath_hal* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %9
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel*) #1

declare dso_local i64 @AR_SREV_MERLIN_20(%struct.ath_hal*) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
