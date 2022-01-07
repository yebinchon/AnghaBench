; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_reset_tx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_reset_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211vap = type { i64 }
%struct.rtwn_vap = type { i32 }
%struct.rtwn_pci_softc = type { %struct.rtwn_tx_ring* }
%struct.rtwn_tx_ring = type { %struct.rtwn_tx_data* }
%struct.rtwn_tx_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee80211vap* }

@RTWN_PCI_BEACON_QUEUE = common dso_local global i32 0, align 4
@RTWN_PORT_COUNT = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@RTWN_PCI_TX_LIST_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.ieee80211vap*, i32)* @rtwn_pci_reset_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_pci_reset_tx_list(%struct.rtwn_softc* %0, %struct.ieee80211vap* %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtwn_vap*, align 8
  %9 = alloca %struct.rtwn_pci_softc*, align 8
  %10 = alloca %struct.rtwn_tx_ring*, align 8
  %11 = alloca %struct.rtwn_tx_data*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %13 = icmp eq %struct.ieee80211vap* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RTWN_PCI_BEACON_QUEUE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @rtwn_pci_reset_tx_ring_stopped(%struct.rtwn_softc* %19, i32 %20)
  br label %35

22:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %31, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @RTWN_PORT_COUNT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rtwn_pci_reset_beacon_ring(%struct.rtwn_softc* %28, i32 %29)
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %23

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %18
  br label %105

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @RTWN_PCI_BEACON_QUEUE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46, %40
  %53 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %54 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %53)
  store %struct.rtwn_vap* %54, %struct.rtwn_vap** %8, align 8
  %55 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %56 = load %struct.rtwn_vap*, %struct.rtwn_vap** %8, align 8
  %57 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rtwn_pci_reset_beacon_ring(%struct.rtwn_softc* %55, i32 %58)
  br label %104

60:                                               ; preds = %46, %36
  %61 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %62 = call %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc* %61)
  store %struct.rtwn_pci_softc* %62, %struct.rtwn_pci_softc** %9, align 8
  %63 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %9, align 8
  %64 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %63, i32 0, i32 0
  %65 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %65, i64 %67
  store %struct.rtwn_tx_ring* %68, %struct.rtwn_tx_ring** %10, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %100, %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @RTWN_PCI_TX_LIST_COUNT, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %69
  %74 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %75 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %74, i32 0, i32 0
  %76 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %76, i64 %78
  store %struct.rtwn_tx_data* %79, %struct.rtwn_tx_data** %11, align 8
  %80 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %81 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = icmp ne %struct.TYPE_2__* %82, null
  br i1 %83, label %84, label %99

84:                                               ; preds = %73
  %85 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %86 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.ieee80211vap*, %struct.ieee80211vap** %88, align 8
  %90 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %91 = icmp eq %struct.ieee80211vap* %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %94 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = call i32 @ieee80211_free_node(%struct.TYPE_2__* %95)
  %97 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %98 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %97, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %98, align 8
  br label %99

99:                                               ; preds = %92, %84, %73
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %69

103:                                              ; preds = %69
  br label %104

104:                                              ; preds = %103, %52
  br label %105

105:                                              ; preds = %104, %35
  ret void
}

declare dso_local i32 @rtwn_pci_reset_tx_ring_stopped(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_pci_reset_beacon_ring(%struct.rtwn_softc*, i32) #1

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @ieee80211_free_node(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
