; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_setcurchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_setcurchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_softc*, %struct.ieee80211_channel*)* @ipw_setcurchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_setcurchan(%struct.ipw_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ipw_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  store %struct.ipw_softc* %0, %struct.ipw_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %6, i32 0, i32 0
  store %struct.ieee80211com* %7, %struct.ieee80211com** %5, align 8
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  store %struct.ieee80211_channel* %8, %struct.ieee80211_channel** %10, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %12 = call i32 @ieee80211_radiotap_chan_change(%struct.ieee80211com* %11)
  ret void
}

declare dso_local i32 @ieee80211_radiotap_chan_change(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
