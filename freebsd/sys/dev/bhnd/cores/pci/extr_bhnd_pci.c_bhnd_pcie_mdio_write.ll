; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pci_softc = type { i32 }

@BHND_PCIE_MDIODATA_DATA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pcie_mdio_write(%struct.bhnd_pci_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bhnd_pci_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bhnd_pci_softc* %0, %struct.bhnd_pci_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %12 = call i32 @BHND_PCI_LOCK(%struct.bhnd_pci_softc* %11)
  %13 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %14 = call i32 @bhnd_pcie_mdio_enable(%struct.bhnd_pci_softc* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @BHND_PCIE_MDIODATA_ADDR(i32 %15, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BHND_PCIE_MDIODATA_DATA_MASK, align 4
  %20 = and i32 %18, %19
  %21 = or i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @bhnd_pcie_mdio_cmd_write(%struct.bhnd_pci_softc* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %26 = call i32 @bhnd_pcie_mdio_disable(%struct.bhnd_pci_softc* %25)
  %27 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %28 = call i32 @BHND_PCI_UNLOCK(%struct.bhnd_pci_softc* %27)
  %29 = load i32, i32* %10, align 4
  ret i32 %29
}

declare dso_local i32 @BHND_PCI_LOCK(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @bhnd_pcie_mdio_enable(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @BHND_PCIE_MDIODATA_ADDR(i32, i32) #1

declare dso_local i32 @bhnd_pcie_mdio_cmd_write(%struct.bhnd_pci_softc*, i32) #1

declare dso_local i32 @bhnd_pcie_mdio_disable(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @BHND_PCI_UNLOCK(%struct.bhnd_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
