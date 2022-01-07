; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pci_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pcie_mdio_read(%struct.bhnd_pci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_pci_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bhnd_pci_softc* %0, %struct.bhnd_pci_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %12 = call i32 @BHND_PCI_LOCK(%struct.bhnd_pci_softc* %11)
  %13 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %14 = call i32 @bhnd_pcie_mdio_enable(%struct.bhnd_pci_softc* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @BHND_PCIE_MDIODATA_ADDR(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @bhnd_pcie_mdio_cmd_read(%struct.bhnd_pci_softc* %18, i32 %19, i32* %9)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %22 = call i32 @bhnd_pcie_mdio_disable(%struct.bhnd_pci_softc* %21)
  %23 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %5, align 8
  %24 = call i32 @BHND_PCI_UNLOCK(%struct.bhnd_pci_softc* %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @BHND_PCI_LOCK(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @bhnd_pcie_mdio_enable(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @BHND_PCIE_MDIODATA_ADDR(i32, i32) #1

declare dso_local i32 @bhnd_pcie_mdio_cmd_read(%struct.bhnd_pci_softc*, i32, i32*) #1

declare dso_local i32 @bhnd_pcie_mdio_disable(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @BHND_PCI_UNLOCK(%struct.bhnd_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
