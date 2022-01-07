; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_free_tx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_free_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_pci_softc = type { %struct.rtwn_tx_ring* }
%struct.rtwn_tx_ring = type { i64, i64, i64, i32*, %struct.rtwn_tx_data*, i32*, i32, i32* }
%struct.rtwn_tx_data = type { i32*, i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@RTWN_PCI_TX_LIST_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32)* @rtwn_pci_free_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_pci_free_tx_list(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtwn_pci_softc*, align 8
  %6 = alloca %struct.rtwn_tx_ring*, align 8
  %7 = alloca %struct.rtwn_tx_data*, align 8
  %8 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %10 = call %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc* %9)
  store %struct.rtwn_pci_softc* %10, %struct.rtwn_pci_softc** %5, align 8
  %11 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %12 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %11, i32 0, i32 0
  %13 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %13, i64 %15
  store %struct.rtwn_tx_ring* %16, %struct.rtwn_tx_ring** %6, align 8
  %17 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %18 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %2
  %22 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %23 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %31 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %34 = call i32 @bus_dmamap_sync(i32* %29, i32 %32, i32 %33)
  %35 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %39 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bus_dmamap_unload(i32* %37, i32 %40)
  %42 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %43 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %46 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %45, i32 0, i32 7
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %49 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bus_dmamem_free(i32* %44, i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %26, %21
  %53 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %54 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_dma_tag_destroy(i32* %55)
  br label %57

57:                                               ; preds = %52, %2
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %96, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @RTWN_PCI_TX_LIST_COUNT, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %64 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %63, i32 0, i32 4
  %65 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %65, i64 %67
  store %struct.rtwn_tx_data* %68, %struct.rtwn_tx_data** %7, align 8
  %69 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %7, align 8
  %70 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %95

73:                                               ; preds = %62
  %74 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %75 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %7, align 8
  %78 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %81 = call i32 @bus_dmamap_sync(i32* %76, i32 %79, i32 %80)
  %82 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %83 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %7, align 8
  %86 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bus_dmamap_unload(i32* %84, i32 %87)
  %89 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %7, align 8
  %90 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @m_freem(i32* %91)
  %93 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %7, align 8
  %94 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %73, %62
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %58

99:                                               ; preds = %58
  %100 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %101 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %106 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @bus_dma_tag_destroy(i32* %107)
  %109 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %110 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %109, i32 0, i32 3
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* %4, align 4
  %113 = shl i32 1, %112
  %114 = xor i32 %113, -1
  %115 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %116 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %120 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %122 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %124 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  ret void
}

declare dso_local %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
