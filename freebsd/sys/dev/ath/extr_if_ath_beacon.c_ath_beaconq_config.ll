; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_beacon.c_ath_beaconq_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_beacon.c_ath_beaconq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.ath_hal*, %struct.ieee80211com }
%struct.ath_hal = type { i32 }
%struct.ieee80211com = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.chanAccParams = type { %struct.wmeParams* }
%struct.wmeParams = type { i32, i32, i32 }

@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@ATH_BEACON_AIFS_DEFAULT = common dso_local global i32 0, align 4
@ATH_BEACON_CWMIN_DEFAULT = common dso_local global i32 0, align 4
@ATH_BEACON_CWMAX_DEFAULT = common dso_local global i32 0, align 4
@WME_AC_BE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"unable to update parameters for beacon hardware queue!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_beaconq_config(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca %struct.chanAccParams, align 8
  %8 = alloca %struct.wmeParams*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 3
  store %struct.ieee80211com* %10, %struct.ieee80211com** %4, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 2
  %13 = load %struct.ath_hal*, %struct.ath_hal** %12, align 8
  store %struct.ath_hal* %13, %struct.ath_hal** %5, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ath_hal_gettxqueueprops(%struct.ath_hal* %14, i32 %17, %struct.TYPE_4__* %6)
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24, %1
  %31 = load i32, i32* @ATH_BEACON_AIFS_DEFAULT, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @ATH_BEACON_CWMIN_DEFAULT, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @ATH_BEACON_CWMAX_DEFAULT, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  br label %61

37:                                               ; preds = %24
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %39 = call i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com* %38, %struct.chanAccParams* %7)
  %40 = getelementptr inbounds %struct.chanAccParams, %struct.chanAccParams* %7, i32 0, i32 0
  %41 = load %struct.wmeParams*, %struct.wmeParams** %40, align 8
  %42 = load i64, i64* @WME_AC_BE, align 8
  %43 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %41, i64 %42
  store %struct.wmeParams* %43, %struct.wmeParams** %8, align 8
  %44 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %45 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %49 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = sub nsw i32 %51, 1
  %53 = mul nsw i32 2, %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.wmeParams*, %struct.wmeParams** %8, align 8
  %56 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %37, %30
  %62 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %63 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ath_hal_settxqueueprops(%struct.ath_hal* %62, i32 %65, %struct.TYPE_4__* %6)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %79

73:                                               ; preds = %61
  %74 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %75 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ath_hal_resettxqueue(%struct.ath_hal* %74, i32 %77)
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @ath_hal_gettxqueueprops(%struct.ath_hal*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com*, %struct.chanAccParams*) #1

declare dso_local i32 @ath_hal_settxqueueprops(%struct.ath_hal*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ath_hal_resettxqueue(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
