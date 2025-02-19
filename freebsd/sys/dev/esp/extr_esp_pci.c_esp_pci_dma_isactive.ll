; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_dma_isactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_dma_isactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i32 }
%struct.esp_pci_softc = type { i32 }

@DMA_CMD = common dso_local global i32 0, align 4
@DMACMD_CMD = common dso_local global i32 0, align 4
@DMACMD_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncr53c9x_softc*)* @esp_pci_dma_isactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_pci_dma_isactive(%struct.ncr53c9x_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncr53c9x_softc*, align 8
  %4 = alloca %struct.esp_pci_softc*, align 8
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %3, align 8
  %5 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %6 = bitcast %struct.ncr53c9x_softc* %5 to %struct.esp_pci_softc*
  store %struct.esp_pci_softc* %6, %struct.esp_pci_softc** %4, align 8
  %7 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %4, align 8
  %8 = load i32, i32* @DMA_CMD, align 4
  %9 = call i32 @READ_DMAREG(%struct.esp_pci_softc* %7, i32 %8)
  %10 = load i32, i32* @DMACMD_CMD, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @DMACMD_IDLE, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @READ_DMAREG(%struct.esp_pci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
