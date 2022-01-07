; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetDeltaSlope.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetDeltaSlope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AR_PHY_TIMING3 = common dso_local global i32 0, align 4
@AR_PHY_TIMING3_DSC_MAN = common dso_local global i32 0, align 4
@AR_PHY_TIMING3_DSC_EXP = common dso_local global i32 0, align 4
@AR_PHY_HALFGI = common dso_local global i32 0, align 4
@AR_PHY_HALFGI_DSC_MAN = common dso_local global i32 0, align 4
@AR_PHY_HALFGI_DSC_EXP = common dso_local global i32 0, align 4
@INIT_CLOCKMHZSCALED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416SetDeltaSlope(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 1677721600, i32* %8, align 4
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %11 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 1
  store i32 %15, i32* %8, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %18 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %31

23:                                               ; preds = %16
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 2
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %20
  br label %32

32:                                               ; preds = %31, %13
  %33 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %35 = call i32 @ar5416GetChannelCenters(%struct.ath_hal* %33, %struct.ieee80211_channel* %34, %struct.TYPE_3__* %9)
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %36, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ar5416GetDeltaSlopeValues(%struct.ath_hal* %40, i32 %41, i32* %7, i32* %6)
  %43 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %44 = load i32, i32* @AR_PHY_TIMING3, align 4
  %45 = load i32, i32* @AR_PHY_TIMING3_DSC_MAN, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %49 = load i32, i32* @AR_PHY_TIMING3, align 4
  %50 = load i32, i32* @AR_PHY_TIMING3_DSC_EXP, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 9, %53
  %55 = sdiv i32 %54, 10
  store i32 %55, i32* %5, align 4
  %56 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ar5416GetDeltaSlopeValues(%struct.ath_hal* %56, i32 %57, i32* %7, i32* %6)
  %59 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %60 = load i32, i32* @AR_PHY_HALFGI, align 4
  %61 = load i32, i32* @AR_PHY_HALFGI_DSC_MAN, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %65 = load i32, i32* @AR_PHY_HALFGI, align 4
  %66 = load i32, i32* @AR_PHY_HALFGI_DSC_EXP, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %64, i32 %65, i32 %66, i32 %67)
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar5416GetChannelCenters(%struct.ath_hal*, %struct.ieee80211_channel*, %struct.TYPE_3__*) #1

declare dso_local i32 @ar5416GetDeltaSlopeValues(%struct.ath_hal*, i32, i32*, i32*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
