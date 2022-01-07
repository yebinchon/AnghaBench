; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_chan.c_r92c_scan_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_chan.c_r92c_scan_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.rtwn_softc* }
%struct.rtwn_softc = type { %struct.r92c_softc* }
%struct.r92c_softc = type { i32 (%struct.ieee80211com.0*)* }
%struct.ieee80211com.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_scan_end(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.r92c_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 0
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  store %struct.rtwn_softc* %7, %struct.rtwn_softc** %3, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %8, i32 0, i32 0
  %10 = load %struct.r92c_softc*, %struct.r92c_softc** %9, align 8
  store %struct.r92c_softc* %10, %struct.r92c_softc** %4, align 8
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %12 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %11)
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %14 = call i32 @rtwn_r92c_set_gain(%struct.rtwn_softc* %13, i32 50)
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %16 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %15)
  %17 = load %struct.r92c_softc*, %struct.r92c_softc** %4, align 8
  %18 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %17, i32 0, i32 0
  %19 = load i32 (%struct.ieee80211com.0*)*, i32 (%struct.ieee80211com.0*)** %18, align 8
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = bitcast %struct.ieee80211com* %20 to %struct.ieee80211com.0*
  %22 = call i32 %19(%struct.ieee80211com.0* %21)
  ret void
}

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_r92c_set_gain(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
