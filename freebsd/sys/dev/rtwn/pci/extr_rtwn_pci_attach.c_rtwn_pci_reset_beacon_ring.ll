; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_reset_beacon_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_reset_beacon_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_pci_softc = type { %struct.rtwn_tx_ring* }
%struct.rtwn_tx_ring = type { i32, i32, i32, i64, %struct.rtwn_tx_data* }
%struct.rtwn_tx_data = type { i32 }
%struct.rtwn_tx_desc_common = type { i32 }

@RTWN_PCI_BEACON_QUEUE = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@RTWN_FLAGS0_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32)* @rtwn_pci_reset_beacon_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_pci_reset_beacon_ring(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtwn_pci_softc*, align 8
  %6 = alloca %struct.rtwn_tx_ring*, align 8
  %7 = alloca %struct.rtwn_tx_data*, align 8
  %8 = alloca %struct.rtwn_tx_desc_common*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %10 = call %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc* %9)
  store %struct.rtwn_pci_softc* %10, %struct.rtwn_pci_softc** %5, align 8
  %11 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %5, align 8
  %12 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %11, i32 0, i32 0
  %13 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %12, align 8
  %14 = load i64, i64* @RTWN_PCI_BEACON_QUEUE, align 8
  %15 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %13, i64 %14
  store %struct.rtwn_tx_ring* %15, %struct.rtwn_tx_ring** %6, align 8
  %16 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %17 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %16, i32 0, i32 4
  %18 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %18, i64 %20
  store %struct.rtwn_tx_data* %21, %struct.rtwn_tx_data** %7, align 8
  %22 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %23 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = bitcast i32* %32 to %struct.rtwn_tx_desc_common*
  store %struct.rtwn_tx_desc_common* %33, %struct.rtwn_tx_desc_common** %8, align 8
  %34 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %38 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %41 = call i32 @bus_dmamap_sync(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %8, align 8
  %43 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RTWN_FLAGS0_OWN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %2
  %49 = load i32, i32* @RTWN_FLAGS0_OWN, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %8, align 8
  %52 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %56 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %59 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %62 = call i32 @bus_dmamap_sync(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %64 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %7, align 8
  %67 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %70 = call i32 @bus_dmamap_sync(i32 %65, i32 %68, i32 %69)
  %71 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %6, align 8
  %72 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %7, align 8
  %75 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bus_dmamap_unload(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %48, %2
  ret void
}

declare dso_local %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
