; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_pci.c_sdhci_restore_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_pci.c_sdhci_restore_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_softc = type { i32, i32 }

@SDHC_PCI_MODE_KEY = common dso_local global i32 0, align 4
@SDHC_PCI_MODE = common dso_local global i32 0, align 4
@SDHC_PCI_BASE_FREQ_KEY = common dso_local global i32 0, align 4
@SDHC_PCI_BASE_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sdhci_restore_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_restore_frequency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.sdhci_pci_softc* @device_get_softc(i32 %4)
  store %struct.sdhci_pci_softc* %5, %struct.sdhci_pci_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @SDHC_PCI_MODE_KEY, align 4
  %8 = call i32 @pci_write_config(i32 %6, i32 %7, i32 252, i32 1)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @SDHC_PCI_MODE, align 4
  %11 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pci_write_config(i32 %9, i32 %10, i32 %13, i32 1)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SDHC_PCI_MODE_KEY, align 4
  %17 = call i32 @pci_write_config(i32 %15, i32 %16, i32 0, i32 1)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SDHC_PCI_BASE_FREQ_KEY, align 4
  %20 = call i32 @pci_write_config(i32 %18, i32 %19, i32 1, i32 1)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SDHC_PCI_BASE_FREQ, align 4
  %23 = load %struct.sdhci_pci_softc*, %struct.sdhci_pci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.sdhci_pci_softc, %struct.sdhci_pci_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pci_write_config(i32 %21, i32 %22, i32 %25, i32 1)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SDHC_PCI_BASE_FREQ_KEY, align 4
  %29 = call i32 @pci_write_config(i32 %27, i32 %28, i32 0, i32 1)
  ret void
}

declare dso_local %struct.sdhci_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
