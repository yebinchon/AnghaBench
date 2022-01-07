; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_free_rx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_free_rx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_pci_softc = type { %struct.rtwn_rx_ring }
%struct.rtwn_rx_ring = type { i32*, %struct.rtwn_rx_data*, i32*, i32*, i32* }
%struct.rtwn_rx_data = type { i32*, i32* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@RTWN_PCI_RX_LIST_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_pci_free_rx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_pci_free_rx_list(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.rtwn_pci_softc*, align 8
  %4 = alloca %struct.rtwn_rx_ring*, align 8
  %5 = alloca %struct.rtwn_rx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = call %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc* %7)
  store %struct.rtwn_pci_softc* %8, %struct.rtwn_pci_softc** %3, align 8
  %9 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %9, i32 0, i32 0
  store %struct.rtwn_rx_ring* %10, %struct.rtwn_rx_ring** %4, align 8
  %11 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %57

15:                                               ; preds = %1
  %16 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %25 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %28 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @bus_dmamap_sync(i32* %23, i32* %26, i32 %29)
  %31 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bus_dmamap_unload(i32* %33, i32* %36)
  %38 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %42 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %45 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @bus_dmamem_free(i32* %40, i32* %43, i32* %46)
  %48 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %49 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %20, %15
  %51 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %52 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bus_dma_tag_destroy(i32* %53)
  %55 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %56 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %50, %1
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %105, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @RTWN_PCI_RX_LIST_COUNT, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %108

62:                                               ; preds = %58
  %63 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %64 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %63, i32 0, i32 1
  %65 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %65, i64 %67
  store %struct.rtwn_rx_data* %68, %struct.rtwn_rx_data** %5, align 8
  %69 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %5, align 8
  %70 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %95

73:                                               ; preds = %62
  %74 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %75 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %5, align 8
  %78 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %81 = call i32 @bus_dmamap_sync(i32* %76, i32* %79, i32 %80)
  %82 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %83 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %5, align 8
  %86 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @bus_dmamap_unload(i32* %84, i32* %87)
  %89 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %5, align 8
  %90 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @m_freem(i32* %91)
  %93 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %5, align 8
  %94 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %73, %62
  %96 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %97 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %5, align 8
  %100 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @bus_dmamap_destroy(i32* %98, i32* %101)
  %103 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %5, align 8
  %104 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %58

108:                                              ; preds = %58
  %109 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %110 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %115 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @bus_dma_tag_destroy(i32* %116)
  %118 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %119 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %113, %108
  ret void
}

declare dso_local %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
