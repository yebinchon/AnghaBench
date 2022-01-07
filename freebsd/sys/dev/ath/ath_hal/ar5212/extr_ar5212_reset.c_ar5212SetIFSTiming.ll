; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetIFSTiming.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212SetIFSTiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_USEC = common dso_local global i32 0, align 4
@AR_USEC_USEC32 = common dso_local global i32 0, align 4
@IFS_SLOT_HALF_RATE = common dso_local global i32 0, align 4
@RX_NON_FULL_RATE_LATENCY = common dso_local global i32 0, align 4
@AR5212_USEC_RX_LAT_S = common dso_local global i32 0, align 4
@TX_HALF_RATE_LATENCY = common dso_local global i32 0, align 4
@AR5212_USEC_TX_LAT_S = common dso_local global i32 0, align 4
@HALF_RATE_USEC = common dso_local global i32 0, align 4
@IFS_EIFS_HALF_RATE = common dso_local global i32 0, align 4
@INIT_USEC = common dso_local global i32 0, align 4
@IFS_SLOT_QUARTER_RATE = common dso_local global i32 0, align 4
@TX_QUARTER_RATE_LATENCY = common dso_local global i32 0, align 4
@QUARTER_RATE_USEC = common dso_local global i32 0, align 4
@IFS_EIFS_QUARTER_RATE = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_SLOT = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_EIFS = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_MISC = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_MISC_USEC_DURATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetIFSTiming(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ true, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @HALASSERT(i32 %21)
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load i32, i32* @AR_USEC, align 4
  %25 = call i32 @OS_REG_READ(%struct.ath_hal* %23, i32 %24)
  %26 = load i32, i32* @AR_USEC_USEC32, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %29 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %19
  %32 = load i32, i32* @IFS_SLOT_HALF_RATE, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @RX_NON_FULL_RATE_LATENCY, align 4
  %34 = load i32, i32* @AR5212_USEC_RX_LAT_S, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @TX_HALF_RATE_LATENCY, align 4
  %37 = load i32, i32* @AR5212_USEC_TX_LAT_S, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @HALF_RATE_USEC, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @IFS_EIFS_HALF_RATE, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @INIT_USEC, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %55

43:                                               ; preds = %19
  %44 = load i32, i32* @IFS_SLOT_QUARTER_RATE, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @RX_NON_FULL_RATE_LATENCY, align 4
  %46 = load i32, i32* @AR5212_USEC_RX_LAT_S, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @TX_QUARTER_RATE_LATENCY, align 4
  %49 = load i32, i32* @AR5212_USEC_TX_LAT_S, align 4
  %50 = shl i32 %48, %49
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @QUARTER_RATE_USEC, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @IFS_EIFS_QUARTER_RATE, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @INIT_USEC, align 4
  %54 = ashr i32 %53, 2
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %43, %31
  %56 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %57 = load i32, i32* @AR_USEC, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @OS_REG_WRITE(%struct.ath_hal* %56, i32 %57, i32 %64)
  %66 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %67 = load i32, i32* @AR_D_GBL_IFS_SLOT, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @OS_REG_WRITE(%struct.ath_hal* %66, i32 %67, i32 %68)
  %70 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %71 = load i32, i32* @AR_D_GBL_IFS_EIFS, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @OS_REG_WRITE(%struct.ath_hal* %70, i32 %71, i32 %72)
  %74 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %75 = load i32, i32* @AR_D_GBL_IFS_MISC, align 4
  %76 = load i32, i32* @AR_D_GBL_IFS_MISC_USEC_DURATION, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %74, i32 %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
