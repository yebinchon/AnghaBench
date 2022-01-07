; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_dfs/null/extr_dfs_null.c_ath_dfs_radar_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_dfs/null/extr_dfs_null.c_ath_dfs_radar_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@HAL_CAP_PHYDIAG = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@HAL_CAP_DIVERSITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_dfs_radar_enable(%struct.ath_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HAL_CAP_PHYDIAG, align 4
  %11 = call i64 @ath_hal_getcapability(i32 %9, i32 %10, i32 0, i32* null)
  %12 = load i64, i64* @HAL_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %17 = call i32 @IEEE80211_IS_CHAN_DFS(%struct.ieee80211_channel* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %49

20:                                               ; preds = %15
  %21 = call i32 @memset(%struct.TYPE_5__* %6, i8 signext 0, i32 8)
  %22 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ath_hal_getdfsdefaultthresh(i32 %24, %struct.TYPE_5__* %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %49

28:                                               ; preds = %20
  %29 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %33 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %39

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ath_hal_enabledfs(i32 %42, %struct.TYPE_5__* %6)
  %44 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HAL_CAP_DIVERSITY, align 4
  %48 = call i32 @ath_hal_setcapability(i32 %46, i32 %47, i32 2, i32 0, i32* null)
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %27, %19, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @ath_hal_getcapability(i32, i32, i32, i32*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_DFS(%struct.ieee80211_channel*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i8 signext, i32) #1

declare dso_local i32 @ath_hal_getdfsdefaultthresh(i32, %struct.TYPE_5__*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @ath_hal_enabledfs(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ath_hal_setcapability(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
