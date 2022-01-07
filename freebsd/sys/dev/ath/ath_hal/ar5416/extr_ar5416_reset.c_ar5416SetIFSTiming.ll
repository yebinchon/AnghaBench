; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetIFSTiming.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416SetIFSTiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_USEC = common dso_local global i32 0, align 4
@AR_USEC_USEC32 = common dso_local global i32 0, align 4
@AR5416_IFS_SLOT_HALF_RATE_44 = common dso_local global i32 0, align 4
@AR5416_RX_NON_FULL_RATE_LATENCY = common dso_local global i32 0, align 4
@AR5416_USEC_RX_LAT_S = common dso_local global i32 0, align 4
@AR5416_TX_HALF_RATE_LATENCY = common dso_local global i32 0, align 4
@AR5416_USEC_TX_LAT_S = common dso_local global i32 0, align 4
@AR5416_HALF_RATE_USEC_44 = common dso_local global i32 0, align 4
@AR5416_IFS_EIFS_HALF_RATE_44 = common dso_local global i32 0, align 4
@AR5416_INIT_USEC_44 = common dso_local global i32 0, align 4
@AR5416_IFS_SLOT_HALF_RATE_40 = common dso_local global i32 0, align 4
@AR5416_HALF_RATE_USEC_40 = common dso_local global i32 0, align 4
@AR5416_IFS_EIFS_HALF_RATE_40 = common dso_local global i32 0, align 4
@AR5416_INIT_USEC_40 = common dso_local global i32 0, align 4
@AR5416_IFS_SLOT_QUARTER_RATE_44 = common dso_local global i32 0, align 4
@AR5416_TX_QUARTER_RATE_LATENCY = common dso_local global i32 0, align 4
@AR5416_QUARTER_RATE_USEC_44 = common dso_local global i32 0, align 4
@AR5416_IFS_EIFS_QUARTER_RATE_44 = common dso_local global i32 0, align 4
@AR5416_IFS_SLOT_QUARTER_RATE_40 = common dso_local global i32 0, align 4
@AR5416_QUARTER_RATE_USEC_40 = common dso_local global i32 0, align 4
@AR5416_IFS_EIFS_QUARTER_RATE_40 = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_SLOT = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_EIFS = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_MISC = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_MISC_USEC_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar5416SetIFSTiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416SetIFSTiming(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %14 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %18 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i1 [ true, %2 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @HALASSERT(i32 %22)
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %12, align 4
  br label %39

28:                                               ; preds = %20
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %35 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %33, %struct.ieee80211_channel* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  br label %38

38:                                               ; preds = %37, %32, %28
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %41 = load i32, i32* @AR_USEC, align 4
  %42 = call i32 @OS_REG_READ(%struct.ath_hal* %40, i32 %41)
  %43 = load i32, i32* @AR_USEC_USEC32, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %46 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* @AR5416_IFS_SLOT_HALF_RATE_44, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @AR5416_RX_NON_FULL_RATE_LATENCY, align 4
  %54 = load i32, i32* @AR5416_USEC_RX_LAT_S, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @AR5416_TX_HALF_RATE_LATENCY, align 4
  %57 = load i32, i32* @AR5416_USEC_TX_LAT_S, align 4
  %58 = shl i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @AR5416_HALF_RATE_USEC_44, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @AR5416_IFS_EIFS_HALF_RATE_44, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @AR5416_INIT_USEC_44, align 4
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %75

63:                                               ; preds = %48
  %64 = load i32, i32* @AR5416_IFS_SLOT_HALF_RATE_40, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @AR5416_RX_NON_FULL_RATE_LATENCY, align 4
  %66 = load i32, i32* @AR5416_USEC_RX_LAT_S, align 4
  %67 = shl i32 %65, %66
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @AR5416_TX_HALF_RATE_LATENCY, align 4
  %69 = load i32, i32* @AR5416_USEC_TX_LAT_S, align 4
  %70 = shl i32 %68, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @AR5416_HALF_RATE_USEC_40, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @AR5416_IFS_EIFS_HALF_RATE_40, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @AR5416_INIT_USEC_40, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %63, %51
  br label %104

76:                                               ; preds = %39
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i32, i32* @AR5416_IFS_SLOT_QUARTER_RATE_44, align 4
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @AR5416_RX_NON_FULL_RATE_LATENCY, align 4
  %82 = load i32, i32* @AR5416_USEC_RX_LAT_S, align 4
  %83 = shl i32 %81, %82
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @AR5416_TX_QUARTER_RATE_LATENCY, align 4
  %85 = load i32, i32* @AR5416_USEC_TX_LAT_S, align 4
  %86 = shl i32 %84, %85
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @AR5416_QUARTER_RATE_USEC_44, align 4
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @AR5416_IFS_EIFS_QUARTER_RATE_44, align 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* @AR5416_INIT_USEC_44, align 4
  %90 = ashr i32 %89, 2
  store i32 %90, i32* %11, align 4
  br label %103

91:                                               ; preds = %76
  %92 = load i32, i32* @AR5416_IFS_SLOT_QUARTER_RATE_40, align 4
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @AR5416_RX_NON_FULL_RATE_LATENCY, align 4
  %94 = load i32, i32* @AR5416_USEC_RX_LAT_S, align 4
  %95 = shl i32 %93, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @AR5416_TX_QUARTER_RATE_LATENCY, align 4
  %97 = load i32, i32* @AR5416_USEC_TX_LAT_S, align 4
  %98 = shl i32 %96, %97
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* @AR5416_QUARTER_RATE_USEC_40, align 4
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* @AR5416_IFS_EIFS_QUARTER_RATE_40, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* @AR5416_INIT_USEC_40, align 4
  %102 = ashr i32 %101, 2
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %91, %79
  br label %104

104:                                              ; preds = %103, %75
  %105 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %106 = load i32, i32* @AR_USEC, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @OS_REG_WRITE(%struct.ath_hal* %105, i32 %106, i32 %113)
  %115 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %116 = load i32, i32* @AR_D_GBL_IFS_SLOT, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @OS_REG_WRITE(%struct.ath_hal* %115, i32 %116, i32 %117)
  %119 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %120 = load i32, i32* @AR_D_GBL_IFS_EIFS, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @OS_REG_WRITE(%struct.ath_hal* %119, i32 %120, i32 %121)
  %123 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %124 = load i32, i32* @AR_D_GBL_IFS_MISC, align 4
  %125 = load i32, i32* @AR_D_GBL_IFS_MISC_USEC_DURATION, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %123, i32 %124, i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
