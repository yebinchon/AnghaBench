; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_radiotap_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_radiotap_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, %struct.rtwn_tx_radiotap_header, %struct.rtwn_rx_radiotap_header }
%struct.rtwn_tx_radiotap_header = type { i32 }
%struct.rtwn_rx_radiotap_header = type { i32 }

@RTWN_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@RTWN_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_radiotap_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_radiotap_attach(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.rtwn_rx_radiotap_header*, align 8
  %4 = alloca %struct.rtwn_tx_radiotap_header*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 2
  store %struct.rtwn_rx_radiotap_header* %6, %struct.rtwn_rx_radiotap_header** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %7, i32 0, i32 1
  store %struct.rtwn_tx_radiotap_header* %8, %struct.rtwn_tx_radiotap_header** %4, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %9, i32 0, i32 0
  %11 = load %struct.rtwn_tx_radiotap_header*, %struct.rtwn_tx_radiotap_header** %4, align 8
  %12 = getelementptr inbounds %struct.rtwn_tx_radiotap_header, %struct.rtwn_tx_radiotap_header* %11, i32 0, i32 0
  %13 = load i32, i32* @RTWN_TX_RADIOTAP_PRESENT, align 4
  %14 = load %struct.rtwn_rx_radiotap_header*, %struct.rtwn_rx_radiotap_header** %3, align 8
  %15 = getelementptr inbounds %struct.rtwn_rx_radiotap_header, %struct.rtwn_rx_radiotap_header* %14, i32 0, i32 0
  %16 = load i32, i32* @RTWN_RX_RADIOTAP_PRESENT, align 4
  %17 = call i32 @ieee80211_radiotap_attach(i32* %10, i32* %12, i32 4, i32 %13, i32* %15, i32 4, i32 %16)
  ret void
}

declare dso_local i32 @ieee80211_radiotap_attach(i32*, i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
