; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i64, %struct.TYPE_3__*, %struct.ieee80211com* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i64, %struct.bwi_softc* }
%struct.bwi_softc = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.bwi_vap = type { i32 (%struct.ieee80211vap*, i32, i32)* }
%struct.bwi_mac = type { i32 }

@IEEE80211_S_INIT = common dso_local global i32 0, align 4
@BWI_TXPWR_INIT = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@IEEE80211_S_RUN = common dso_local global i32 0, align 4
@BWI_F_STOP = common dso_local global i32 0, align 4
@bwi_zero_addr = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@BWI_REGWIN_T_MAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"current regwin type %d\00", align 1
@BWI_TXPWR_CALIB = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@bwi_calibrate = common dso_local global i32 0, align 4
@BWI_TXPWR_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32)* @bwi_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_newstate(%struct.ieee80211vap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwi_vap*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.bwi_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bwi_mac*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %14 = call %struct.bwi_vap* @BWI_VAP(%struct.ieee80211vap* %13)
  store %struct.bwi_vap* %14, %struct.bwi_vap** %7, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 3
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %16, align 8
  store %struct.ieee80211com* %17, %struct.ieee80211com** %8, align 8
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 1
  %20 = load %struct.bwi_softc*, %struct.bwi_softc** %19, align 8
  store %struct.bwi_softc* %20, %struct.bwi_softc** %9, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %25 = call i32 @BWI_LOCK(%struct.bwi_softc* %24)
  %26 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %27 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %26, i32 0, i32 1
  %28 = call i32 @callout_stop(i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IEEE80211_S_INIT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @BWI_TXPWR_INIT, align 4
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %35 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @bwi_led_newstate(%struct.bwi_softc* %37, i32 %38)
  %40 = load %struct.bwi_vap*, %struct.bwi_vap** %7, align 8
  %41 = getelementptr inbounds %struct.bwi_vap, %struct.bwi_vap* %40, i32 0, i32 0
  %42 = load i32 (%struct.ieee80211vap*, i32, i32)*, i32 (%struct.ieee80211vap*, i32, i32)** %41, align 8
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 %42(%struct.ieee80211vap* %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %135

50:                                               ; preds = %36
  %51 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IEEE80211_M_STA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @IEEE80211_S_RUN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IEEE80211_S_RUN, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IEEE80211_M_STA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %72 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BWI_F_STOP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %79 = load i32, i32* @bwi_zero_addr, align 4
  %80 = call i32 @bwi_set_bssid(%struct.bwi_softc* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %70, %64
  br label %82

82:                                               ; preds = %81, %60, %56
  br label %83

83:                                               ; preds = %82, %50
  %84 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %134

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @IEEE80211_S_RUN, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %133

94:                                               ; preds = %90
  %95 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %96 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @bwi_set_bssid(%struct.bwi_softc* %95, i32 %100)
  %102 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %103 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BWI_REGWIN_T_MAC, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %111 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @KASSERT(i32 %109, i8* %115)
  %117 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %118 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = bitcast %struct.TYPE_4__* %119 to %struct.bwi_mac*
  store %struct.bwi_mac* %120, %struct.bwi_mac** %11, align 8
  %121 = load %struct.bwi_mac*, %struct.bwi_mac** %11, align 8
  %122 = load i32, i32* @BWI_TXPWR_INIT, align 4
  %123 = call i32 @bwi_mac_calibrate_txpower(%struct.bwi_mac* %121, i32 %122)
  %124 = load i32, i32* @BWI_TXPWR_CALIB, align 4
  %125 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %126 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %128 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %127, i32 0, i32 1
  %129 = load i32, i32* @hz, align 4
  %130 = load i32, i32* @bwi_calibrate, align 4
  %131 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %132 = call i32 @callout_reset(i32* %128, i32 %129, i32 %130, %struct.bwi_softc* %131)
  br label %133

133:                                              ; preds = %94, %90
  br label %134

134:                                              ; preds = %133, %89
  br label %135

135:                                              ; preds = %134, %49
  %136 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %137 = call i32 @BWI_UNLOCK(%struct.bwi_softc* %136)
  %138 = load i32, i32* %12, align 4
  ret i32 %138
}

declare dso_local %struct.bwi_vap* @BWI_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @BWI_LOCK(%struct.bwi_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bwi_led_newstate(%struct.bwi_softc*, i32) #1

declare dso_local i32 @bwi_set_bssid(%struct.bwi_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_mac_calibrate_txpower(%struct.bwi_mac*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.bwi_softc*) #1

declare dso_local i32 @BWI_UNLOCK(%struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
