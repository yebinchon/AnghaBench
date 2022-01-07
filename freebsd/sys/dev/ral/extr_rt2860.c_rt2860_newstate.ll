; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i64, %struct.ieee80211_node*, %struct.ieee80211com* }
%struct.ieee80211_node = type { i32, i32, i32 }
%struct.ieee80211com = type { i64, %struct.rt2860_softc* }
%struct.rt2860_softc = type { i32 }
%struct.rt2860_vap = type { i32 (%struct.ieee80211vap.0*, i32, i32)* }
%struct.ieee80211vap.0 = type opaque

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@RT2860_LED_RADIO = common dso_local global i32 0, align 4
@IEEE80211_S_INIT = common dso_local global i32 0, align 4
@RT2860_BCN_TIME_CFG = common dso_local global i32 0, align 4
@RT2860_BCN_TX_EN = common dso_local global i32 0, align 4
@RT2860_TSF_TIMER_EN = common dso_local global i32 0, align 4
@RT2860_TBTT_TIMER_EN = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@RT2860_LED_LINK_2GHZ = common dso_local global i32 0, align 4
@RT2860_LED_LINK_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32)* @rt2860_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2860_newstate(%struct.ieee80211vap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt2860_vap*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.rt2860_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %15 = call %struct.rt2860_vap* @RT2860_VAP(%struct.ieee80211vap* %14)
  store %struct.rt2860_vap* %15, %struct.rt2860_vap** %8, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 3
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %17, align 8
  store %struct.ieee80211com* %18, %struct.ieee80211com** %9, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 1
  %21 = load %struct.rt2860_softc*, %struct.rt2860_softc** %20, align 8
  store %struct.rt2860_softc* %21, %struct.rt2860_softc** %10, align 8
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IEEE80211_S_RUN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %29 = load i32, i32* @RT2860_LED_RADIO, align 4
  %30 = call i32 @rt2860_set_leds(%struct.rt2860_softc* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IEEE80211_S_INIT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IEEE80211_S_RUN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %43 = load i32, i32* @RT2860_BCN_TIME_CFG, align 4
  %44 = call i32 @RAL_READ(%struct.rt2860_softc* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %46 = load i32, i32* @RT2860_BCN_TIME_CFG, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @RT2860_BCN_TX_EN, align 4
  %49 = load i32, i32* @RT2860_TSF_TIMER_EN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RT2860_TBTT_TIMER_EN, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %47, %53
  %55 = call i32 @RAL_WRITE(%struct.rt2860_softc* %45, i32 %46, i32 %54)
  br label %56

56:                                               ; preds = %41, %35, %31
  %57 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %58 = call i32 @rt2860_set_gp_timer(%struct.rt2860_softc* %57, i32 0)
  %59 = load %struct.rt2860_vap*, %struct.rt2860_vap** %8, align 8
  %60 = getelementptr inbounds %struct.rt2860_vap, %struct.rt2860_vap* %59, i32 0, i32 0
  %61 = load i32 (%struct.ieee80211vap.0*, i32, i32)*, i32 (%struct.ieee80211vap.0*, i32, i32)** %60, align 8
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %63 = bitcast %struct.ieee80211vap* %62 to %struct.ieee80211vap.0*
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 %61(%struct.ieee80211vap.0* %63, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %4, align 4
  br label %155

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* @IEEE80211_S_RUN, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %153

76:                                               ; preds = %71
  %77 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %77, i32 0, i32 2
  %79 = load %struct.ieee80211_node*, %struct.ieee80211_node** %78, align 8
  store %struct.ieee80211_node* %79, %struct.ieee80211_node** %13, align 8
  %80 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %81 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %76
  %86 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %87 = call i32 @rt2860_enable_mrr(%struct.rt2860_softc* %86)
  %88 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %89 = call i32 @rt2860_set_txpreamble(%struct.rt2860_softc* %88)
  %90 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %91 = load %struct.ieee80211_node*, %struct.ieee80211_node** %13, align 8
  %92 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %91, i32 0, i32 2
  %93 = call i32 @rt2860_set_basicrates(%struct.rt2860_softc* %90, i32* %92)
  %94 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %95 = load %struct.ieee80211_node*, %struct.ieee80211_node** %13, align 8
  %96 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @rt2860_set_bssid(%struct.rt2860_softc* %94, i32 %97)
  br label %99

99:                                               ; preds = %85, %76
  %100 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %101 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %99
  %106 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %107 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %113 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %111, %105, %99
  %118 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %119 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %120 = call i32 @rt2860_setup_beacon(%struct.rt2860_softc* %118, %struct.ieee80211vap* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %4, align 4
  br label %155

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %111
  %127 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %128 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %134 = call i32 @rt2860_enable_tsf_sync(%struct.rt2860_softc* %133)
  %135 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %136 = call i32 @rt2860_set_gp_timer(%struct.rt2860_softc* %135, i32 500)
  br label %137

137:                                              ; preds = %132, %126
  %138 = load %struct.rt2860_softc*, %struct.rt2860_softc** %10, align 8
  %139 = load i32, i32* @RT2860_LED_RADIO, align 4
  %140 = load %struct.ieee80211_node*, %struct.ieee80211_node** %13, align 8
  %141 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* @RT2860_LED_LINK_2GHZ, align 4
  br label %149

147:                                              ; preds = %137
  %148 = load i32, i32* @RT2860_LED_LINK_5GHZ, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = or i32 %139, %150
  %152 = call i32 @rt2860_set_leds(%struct.rt2860_softc* %138, i32 %151)
  br label %153

153:                                              ; preds = %149, %71
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %123, %69
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.rt2860_vap* @RT2860_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @rt2860_set_leds(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt2860_set_gp_timer(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_enable_mrr(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_set_txpreamble(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_set_basicrates(%struct.rt2860_softc*, i32*) #1

declare dso_local i32 @rt2860_set_bssid(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_setup_beacon(%struct.rt2860_softc*, %struct.ieee80211vap*) #1

declare dso_local i32 @rt2860_enable_tsf_sync(%struct.rt2860_softc*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
