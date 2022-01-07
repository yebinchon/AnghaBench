; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_cmd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_cmd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pci_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@BHND_PCIE_MDIODATA_START = common dso_local global i32 0, align 4
@BHND_PCIE_MDIODATA_TA = common dso_local global i32 0, align 4
@BHND_PCIE_MDIODATA_CMD_WRITE = common dso_local global i32 0, align 4
@BHND_PCIE_MDIO_DATA = common dso_local global i32 0, align 4
@BHND_PCIE_MDIO_CTL_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pci_softc*, i32)* @bhnd_pcie_mdio_cmd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pcie_mdio_cmd_write(%struct.bhnd_pci_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_pci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bhnd_pci_softc* %0, %struct.bhnd_pci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @BHND_PCI_LOCK_ASSERT(%struct.bhnd_pci_softc* %7, i32 %8)
  %10 = load i32, i32* @BHND_PCIE_MDIODATA_START, align 4
  %11 = load i32, i32* @BHND_PCIE_MDIODATA_TA, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @BHND_PCIE_MDIODATA_CMD_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %4, align 8
  %18 = load i32, i32* @BHND_PCIE_MDIO_DATA, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BHND_PCI_WRITE_4(%struct.bhnd_pci_softc* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @BHND_PCIE_MDIO_CTL_DELAY, align 4
  %22 = call i32 @DELAY(i32 %21)
  %23 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %4, align 8
  %24 = call i32 @bhnd_pcie_mdio_wait_idle(%struct.bhnd_pci_softc* %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @BHND_PCI_LOCK_ASSERT(%struct.bhnd_pci_softc*, i32) #1

declare dso_local i32 @BHND_PCI_WRITE_4(%struct.bhnd_pci_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bhnd_pcie_mdio_wait_idle(%struct.bhnd_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
