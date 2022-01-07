; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex_mci.c_ath_btcoex_mci_update_wlan_channels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex_mci.c_ath_btcoex_mci_update_wlan_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@__const.ath_btcoex_mci_update_wlan_channels.channel_info = private unnamed_addr constant [4 x i32] [i32 0, i32 -1, i32 -1, i32 2147483647], align 16
@MCI_NUM_BT_CHANNELS = common dso_local global i64 0, align 8
@ATH_DEBUG_BTCOEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"(MCI) WLAN use channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"(MCI) mask BT channel %d - %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"(MCI) WLAN not use any 2G channel, unmask all for BT\0A\00", align 1
@HAL_MCI_STATE_SEND_WLAN_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_btcoex_mci_update_wlan_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_btcoex_mci_update_wlan_channels(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  store %struct.ieee80211com* %11, %struct.ieee80211com** %3, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  store %struct.ieee80211_channel* %14, %struct.ieee80211_channel** %4, align 8
  %15 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i32]* @__const.ath_btcoex_mci_update_wlan_channels.channel_info to i8*), i64 16, i1 false)
  store i64 0, i64* %8, align 8
  store i64 79, i64* %9, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %1
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, 2402
  store i64 %23, i64* %6, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = call i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %28, 10
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, 30
  store i64 %31, i64* %9, align 8
  br label %47

32:                                               ; preds = %19
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %34 = call i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %37, 30
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 10
  store i64 %40, i64* %9, align 8
  br label %46

41:                                               ; preds = %32
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %42, 10
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %44, 10
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i64, i64* %8, align 8
  %49 = sub nsw i64 %48, 7
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, 7
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i64 0, i64* %8, align 8
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @MCI_NUM_BT_CHANNELS, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* @MCI_NUM_BT_CHANNELS, align 8
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %59, %55
  %62 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %63 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %62, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %69 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %68, i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %71)
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %82, %61
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @MCI_GPM_CLR_CHANNEL_BIT(i32* %79, i64 %80)
  br label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %74

85:                                               ; preds = %74
  br label %90

86:                                               ; preds = %1
  %87 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %88 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %89 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %87, i32 %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %85
  %91 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @HAL_MCI_STATE_SEND_WLAN_CHANNELS, align 4
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %96 = call i32 @ath_hal_btcoex_mci_state(i32 %93, i32 %94, i32* %95)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #2

declare dso_local i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel*) #2

declare dso_local i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel*) #2

declare dso_local i32 @DPRINTF(%struct.ath_softc*, i32, i8*, ...) #2

declare dso_local i32 @MCI_GPM_CLR_CHANNEL_BIT(i32*, i64) #2

declare dso_local i32 @ath_hal_btcoex_mci_state(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
