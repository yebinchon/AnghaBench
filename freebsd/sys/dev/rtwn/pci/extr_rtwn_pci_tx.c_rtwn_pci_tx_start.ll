; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_tx.c_rtwn_pci_tx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_tx.c_rtwn_pci_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtwn_pci_tx_start(%struct.rtwn_softc* %0, %struct.ieee80211_node* %1, %struct.mbuf* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rtwn_softc*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %7, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %15 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %14)
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %17 = icmp eq %struct.ieee80211_node* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %6
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @rtwn_pci_tx_start_beacon(%struct.rtwn_softc* %19, %struct.mbuf* %20, i32* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  br label %31

24:                                               ; preds = %6
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @rtwn_pci_tx_start_frame(%struct.rtwn_softc* %25, %struct.ieee80211_node* %26, %struct.mbuf* %27, i32* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i32, i32* %13, align 4
  ret i32 %32
}

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_pci_tx_start_beacon(%struct.rtwn_softc*, %struct.mbuf*, i32*, i32) #1

declare dso_local i32 @rtwn_pci_tx_start_frame(%struct.rtwn_softc*, %struct.ieee80211_node*, %struct.mbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
