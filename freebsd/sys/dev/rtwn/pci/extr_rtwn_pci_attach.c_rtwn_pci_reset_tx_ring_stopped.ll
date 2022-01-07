; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_reset_tx_ring_stopped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_reset_tx_ring_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32 }
%struct.rtwn_pci_softc = type { %struct.rtwn_tx_ring* }
%struct.rtwn_tx_ring = type { i64, i64, i64, i32, i32, i32, i64, %struct.rtwn_tx_data* }
%struct.rtwn_tx_data = type { i32*, i32*, i32 }

@RTWN_PCI_TX_LIST_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32)* @rtwn_pci_reset_tx_ring_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_pci_reset_tx_ring_stopped(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtwn_pci_softc*, align 8
  %6 = alloca %struct.rtwn_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtwn_tx_data*, align 8
  %9 = alloca i8*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %11 = call %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc* %10)
  store %struct.rtwn_pci_softc* %11, %struct.rtwn_pci_softc** %5, align 8
  %12 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %13 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %12, i32 0, i32 0
  %14 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %14, i64 %16
  store %struct.rtwn_tx_ring* %17, %struct.rtwn_tx_ring** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %83, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RTWN_PCI_TX_LIST_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %18
  %23 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %23, i32 0, i32 7
  %25 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %25, i64 %27
  store %struct.rtwn_tx_data* %28, %struct.rtwn_tx_data** %8, align 8
  %29 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %32, i64 %38
  %40 = bitcast i32* %39 to i8*
  store i8* %40, i8** %9, align 8
  %41 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @rtwn_pci_copy_tx_desc(%struct.rtwn_pci_softc* %41, i8* %42, i32* null)
  %44 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %8, align 8
  %45 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %22
  %49 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %50 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %8, align 8
  %53 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %56 = call i32 @bus_dmamap_sync(i32 %51, i32 %54, i32 %55)
  %57 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %58 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %8, align 8
  %61 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bus_dmamap_unload(i32 %59, i32 %62)
  %64 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %8, align 8
  %65 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @m_freem(i32* %66)
  %68 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %8, align 8
  %69 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %48, %22
  %71 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %8, align 8
  %72 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %8, align 8
  %77 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ieee80211_free_node(i32* %78)
  %80 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %8, align 8
  %81 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %75, %70
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %18

86:                                               ; preds = %18
  %87 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %88 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %91 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %94 = call i32 @bus_dmamap_sync(i32 %89, i32 %92, i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = shl i32 1, %95
  %97 = xor i32 %96, -1
  %98 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %99 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %103 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %105 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %107 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  ret void
}

declare dso_local %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_pci_copy_tx_desc(%struct.rtwn_pci_softc*, i8*, i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_free_node(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
