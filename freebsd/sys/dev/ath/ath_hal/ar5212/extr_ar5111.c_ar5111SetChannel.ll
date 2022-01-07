; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5111.c_ar5111SetChannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5111.c_ar5111SetChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHAN_INFO_2GHZ = type { i32, i32, i32 }
%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i64 }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }

@ar5111SetChannel.chan2GHzData = internal constant [46 x %struct.CHAN_INFO_2GHZ] [%struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 96 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 97 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 98 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 99 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 100 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 101 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 102 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 103 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 104 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 105 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 106 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 107 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 108 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 116 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 116 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 116 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 116 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 116 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 116 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 116 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 116 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 117 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 118 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 119 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 120 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 121 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 122 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 123 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 124 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 125 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 126 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 127 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 128 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 68, i32 124 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 136 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 140 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 144 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 148 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 152 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 156 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 160 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 164 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 168 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 172 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 176 }, %struct.CHAN_INFO_2GHZ { i32 1, i32 70, i32 180 }], align 16
@AH_MARK_SETCHANNEL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL_JAPAN = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@CI_2GHZ_INDEX_CORRECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar5111SetChannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5111SetChannel(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.CHAN_INFO_2GHZ*, align 8
  %12 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %15 = call i32 @ath_hal_gethwchannel(%struct.ath_hal* %13, %struct.ieee80211_channel* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = load i32, i32* @AH_MARK_SETCHANNEL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @OS_MARK(%struct.ath_hal* %16, i32 %17, i32 %18)
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %24 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %2
  %27 = load i64, i64* %10, align 8
  %28 = add i64 %27, 19
  %29 = getelementptr inbounds [46 x %struct.CHAN_INFO_2GHZ], [46 x %struct.CHAN_INFO_2GHZ]* @ar5111SetChannel.chan2GHzData, i64 0, i64 %28
  store %struct.CHAN_INFO_2GHZ* %29, %struct.CHAN_INFO_2GHZ** %11, align 8
  %30 = load %struct.CHAN_INFO_2GHZ*, %struct.CHAN_INFO_2GHZ** %11, align 8
  %31 = getelementptr inbounds %struct.CHAN_INFO_2GHZ, %struct.CHAN_INFO_2GHZ* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @ath_hal_reverseBits(i64 %33, i32 8)
  %35 = and i32 %34, 255
  %36 = shl i32 %35, 5
  %37 = load %struct.CHAN_INFO_2GHZ*, %struct.CHAN_INFO_2GHZ** %11, align 8
  %38 = getelementptr inbounds %struct.CHAN_INFO_2GHZ, %struct.CHAN_INFO_2GHZ* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 4
  %41 = or i32 %36, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.CHAN_INFO_2GHZ*, %struct.CHAN_INFO_2GHZ** %11, align 8
  %43 = getelementptr inbounds %struct.CHAN_INFO_2GHZ, %struct.CHAN_INFO_2GHZ* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %9, align 8
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %48 = call i32 @OS_REG_READ(%struct.ath_hal* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 2484
  br i1 %50, label %51, label %58

51:                                               ; preds = %26
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @OS_REG_WRITE(%struct.ath_hal* %52, i32 %53, i32 %56)
  br label %66

58:                                               ; preds = %26
  %59 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %60 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @OS_REG_WRITE(%struct.ath_hal* %59, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %58, %51
  br label %69

67:                                               ; preds = %2
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = load i64, i64* %9, align 8
  %71 = icmp uge i64 %70, 145
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %9, align 8
  %74 = and i64 %73, 1
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72, %69
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 %77, 24
  %79 = call i32 @ath_hal_reverseBits(i64 %78, i32 8)
  %80 = and i32 %79, 255
  store i32 %80, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %87

81:                                               ; preds = %72
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %82, 24
  %84 = udiv i64 %83, 2
  %85 = call i32 @ath_hal_reverseBits(i64 %84, i32 8)
  %86 = and i32 %85, 255
  store i32 %86, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 2
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %90, 1
  %92 = or i32 %89, %91
  %93 = or i32 %92, 1024
  %94 = or i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %96 = call i32 @AR_PHY(i32 39)
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 255
  %99 = shl i32 %98, 8
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, 255
  %102 = or i32 %99, %101
  %103 = call i32 @OS_REG_WRITE(%struct.ath_hal* %95, i32 %96, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = ashr i32 %104, 8
  store i32 %105, i32* %7, align 4
  %106 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %107 = call i32 @AR_PHY(i32 52)
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, 65280
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, 255
  %112 = or i32 %109, %111
  %113 = call i32 @OS_REG_WRITE(%struct.ath_hal* %106, i32 %107, i32 %112)
  %114 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %115 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %116 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %115)
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store %struct.ieee80211_channel* %114, %struct.ieee80211_channel** %117, align 8
  %118 = load i32, i32* @AH_TRUE, align 4
  ret i32 %118
}

declare dso_local i32 @ath_hal_gethwchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @OS_MARK(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @ath_hal_reverseBits(i64, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
