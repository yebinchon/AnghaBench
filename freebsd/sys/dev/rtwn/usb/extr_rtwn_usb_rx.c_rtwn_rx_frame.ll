; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_rx.c_rtwn_rx_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_rx.c_rtwn_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.rtwn_softc = type { i32 }
%struct.mbuf = type { i32 }
%struct.rtwn_rx_stat_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_node* (%struct.rtwn_softc*, %struct.mbuf*)* @rtwn_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_node* @rtwn_rx_frame(%struct.rtwn_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.rtwn_rx_stat_common, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %7 = ptrtoint %struct.rtwn_rx_stat_common* %5 to i32
  %8 = call i32 @m_copydata(%struct.mbuf* %6, i32 0, i32 4, i32 %7)
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = call i32 @m_adj(%struct.mbuf* %9, i32 4)
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %13 = call %struct.ieee80211_node* @rtwn_rx_common(%struct.rtwn_softc* %11, %struct.mbuf* %12, %struct.rtwn_rx_stat_common* %5)
  ret %struct.ieee80211_node* %13
}

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local %struct.ieee80211_node* @rtwn_rx_common(%struct.rtwn_softc*, %struct.mbuf*, %struct.rtwn_rx_stat_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
