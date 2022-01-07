; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pci_softc = type { i32 }

@BHND_PCIE_MDIOCTL_PREAM_EN = common dso_local global i32 0, align 4
@BHND_PCIE_MDIOCTL_DIVISOR_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pci_softc*)* @bhnd_pcie_mdio_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pcie_mdio_enable(%struct.bhnd_pci_softc* %0) #0 {
  %2 = alloca %struct.bhnd_pci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bhnd_pci_softc* %0, %struct.bhnd_pci_softc** %2, align 8
  %4 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %2, align 8
  %5 = call i32 @BHND_PCIE_ASSERT(%struct.bhnd_pci_softc* %4)
  %6 = load i32, i32* @BHND_PCIE_MDIOCTL_PREAM_EN, align 4
  %7 = load i32, i32* @BHND_PCIE_MDIOCTL_DIVISOR_VAL, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @bhnd_pcie_mdio_ioctl(%struct.bhnd_pci_softc* %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @BHND_PCIE_ASSERT(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @bhnd_pcie_mdio_ioctl(%struct.bhnd_pci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
