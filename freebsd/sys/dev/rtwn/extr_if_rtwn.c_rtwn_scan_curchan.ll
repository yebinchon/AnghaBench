; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_scan_curchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_scan_curchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rtwn_softc* }
%struct.rtwn_softc = type { i32 (%struct.ieee80211_scan_state.0*, i64)*, i32 }
%struct.ieee80211_scan_state.0 = type opaque

@RTWN_LED_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_scan_state*, i64)* @rtwn_scan_curchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_scan_curchan(%struct.ieee80211_scan_state* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtwn_softc*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %9, align 8
  store %struct.rtwn_softc* %10, %struct.rtwn_softc** %5, align 8
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %12 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %11)
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %14 = load i32, i32* @RTWN_LED_LINK, align 4
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %16 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @rtwn_set_led(%struct.rtwn_softc* %13, i32 %14, i32 %20)
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %23 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %22)
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %25 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %24, i32 0, i32 0
  %26 = load i32 (%struct.ieee80211_scan_state.0*, i64)*, i32 (%struct.ieee80211_scan_state.0*, i64)** %25, align 8
  %27 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %28 = bitcast %struct.ieee80211_scan_state* %27 to %struct.ieee80211_scan_state.0*
  %29 = load i64, i64* %4, align 8
  %30 = call i32 %26(%struct.ieee80211_scan_state.0* %28, i64 %29)
  ret void
}

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_set_led(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
