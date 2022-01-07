; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_dma_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i32 }
%struct.esp_pci_softc = type { i64, i64, i32, i32 }

@DMA_CMD = common dso_local global i32 0, align 4
@DMACMD_ABORT = common dso_local global i32 0, align 4
@DMACMD_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncr53c9x_softc*)* @esp_pci_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_pci_dma_stop(%struct.ncr53c9x_softc* %0) #0 {
  %2 = alloca %struct.ncr53c9x_softc*, align 8
  %3 = alloca %struct.esp_pci_softc*, align 8
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %2, align 8
  %4 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %2, align 8
  %5 = bitcast %struct.ncr53c9x_softc* %4 to %struct.esp_pci_softc*
  store %struct.esp_pci_softc* %5, %struct.esp_pci_softc** %3, align 8
  %6 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %3, align 8
  %7 = load i32, i32* @DMA_CMD, align 4
  %8 = load i32, i32* @DMACMD_ABORT, align 4
  %9 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @DMACMD_DIR, align 4
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = or i32 %8, %17
  %19 = call i32 @WRITE_DMAREG(%struct.esp_pci_softc* %6, i32 %7, i32 %18)
  %20 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %3, align 8
  %21 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bus_dmamap_unload(i32 %22, i32 %25)
  %27 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %3, align 8
  %28 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local i32 @WRITE_DMAREG(%struct.esp_pci_softc*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
