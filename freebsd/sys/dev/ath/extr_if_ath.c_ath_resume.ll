; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i64, %struct.ath_hal*, i64, i64, i32*, i32, i32, i32, %struct.ieee80211com }
%struct.ath_hal = type { i32 }
%struct.ieee80211com = type { i32* }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@HAL_RESET_NORMAL = common dso_local global i32 0, align 4
@HAL_LED_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_resume(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 10
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 3
  %10 = load %struct.ath_hal*, %struct.ath_hal** %9, align 8
  store %struct.ath_hal* %10, %struct.ath_hal** %4, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %12 = call i32 @ath_hal_enablepcie(%struct.ath_hal* %11, i32 0, i32 0)
  %13 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32* [ %21, %18 ], [ %25, %22 ]
  %28 = call i32 @ath_update_chainmasks(%struct.ath_softc* %13, i32* %27)
  %29 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 3
  %31 = load %struct.ath_hal*, %struct.ath_hal** %30, align 8
  %32 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ath_hal_setchainmasks(%struct.ath_hal* %31, i32 %34, i32 %37)
  %39 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %40 = call i32 @ATH_LOCK(%struct.ath_softc* %39)
  %41 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %42 = load i32, i32* @HAL_PM_AWAKE, align 4
  %43 = call i32 @ath_power_setselfgen(%struct.ath_softc* %41, i32 %42)
  %44 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %45 = load i32, i32* @HAL_PM_AWAKE, align 4
  %46 = call i32 @ath_power_set_power_state(%struct.ath_softc* %44, i32 %45)
  %47 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %48 = load i32, i32* @HAL_PM_AWAKE, align 4
  %49 = call i32 @ath_power_setpower(%struct.ath_softc* %47, i32 %48, i32 1)
  %50 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %51 = call i32 @ATH_UNLOCK(%struct.ath_softc* %50)
  %52 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %53 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %26
  %61 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  br label %68

64:                                               ; preds = %26
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i32* [ %63, %60 ], [ %67, %64 ]
  %70 = load i32, i32* @AH_FALSE, align 4
  %71 = load i32, i32* @HAL_RESET_NORMAL, align 4
  %72 = call i32 @ath_hal_reset(%struct.ath_hal* %52, i32 %55, i32* %69, i32 %70, i32 %71, i32* %5)
  %73 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %74 = call i32 @ath_reset_keycache(%struct.ath_softc* %73)
  %75 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %76 = call i32 @ATH_RX_LOCK(%struct.ath_softc* %75)
  %77 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %78 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %80 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %82 = call i32 @ATH_RX_UNLOCK(%struct.ath_softc* %81)
  %83 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %84 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %85 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @ath_dfs_radar_enable(%struct.ath_softc* %83, i32* %86)
  %88 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %89 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @ath_spectral_enable(%struct.ath_softc* %88, i32* %91)
  %93 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %94 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %95 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @ath_btcoex_enable(%struct.ath_softc* %93, i32* %96)
  %98 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %99 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %68
  %103 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %104 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %109 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %108, i32 0, i32 3
  %110 = load %struct.ath_hal*, %struct.ath_hal** %109, align 8
  %111 = call i32 @ath_hal_setenforcetxop(%struct.ath_hal* %110, i32 1)
  br label %117

112:                                              ; preds = %102, %68
  %113 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %114 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %113, i32 0, i32 3
  %115 = load %struct.ath_hal*, %struct.ath_hal** %114, align 8
  %116 = call i32 @ath_hal_setenforcetxop(%struct.ath_hal* %115, i32 0)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %119 = call i32 @ath_led_config(%struct.ath_softc* %118)
  %120 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %121 = load i32, i32* @HAL_LED_INIT, align 4
  %122 = call i32 @ath_hal_setledstate(%struct.ath_hal* %120, i32 %121)
  %123 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %124 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %129 = call i32 @ieee80211_resume_all(%struct.ieee80211com* %128)
  br label %130

130:                                              ; preds = %127, %117
  %131 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %132 = call i32 @ATH_LOCK(%struct.ath_softc* %131)
  %133 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %134 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %133)
  %135 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %136 = call i32 @ATH_UNLOCK(%struct.ath_softc* %135)
  ret void
}

declare dso_local i32 @ath_hal_enablepcie(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ath_update_chainmasks(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath_hal_setchainmasks(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ATH_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_setselfgen(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_power_setpower(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ATH_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_hal_reset(%struct.ath_hal*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ath_reset_keycache(%struct.ath_softc*) #1

declare dso_local i32 @ATH_RX_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ATH_RX_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_dfs_radar_enable(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath_spectral_enable(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath_btcoex_enable(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath_hal_setenforcetxop(%struct.ath_hal*, i32) #1

declare dso_local i32 @ath_led_config(%struct.ath_softc*) #1

declare dso_local i32 @ath_hal_setledstate(%struct.ath_hal*, i32) #1

declare dso_local i32 @ieee80211_resume_all(%struct.ieee80211com*) #1

declare dso_local i32 @ath_power_restore_power_state(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
