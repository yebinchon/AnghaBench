; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_write_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_write_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pci_softc = type { i32 }

@MDIO_DEVADDR_NONE = common dso_local global i32 0, align 4
@BHND_PCI_QUIRK_SD_C22_EXTADDR = common dso_local global i32 0, align 4
@BHND_PCIE_PHYADDR_SD = common dso_local global i32 0, align 4
@BHND_PCIE_SD_ADDREXT = common dso_local global i32 0, align 4
@BHND_PCIE_MDIODATA_DATA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pcie_mdio_write_ext(%struct.bhnd_pci_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_pci_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bhnd_pci_softc* %0, %struct.bhnd_pci_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MDIO_DEVADDR_NONE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @bhnd_pcie_mdio_write(%struct.bhnd_pci_softc* %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %67

23:                                               ; preds = %5
  %24 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %7, align 8
  %25 = getelementptr inbounds %struct.bhnd_pci_softc, %struct.bhnd_pci_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BHND_PCI_QUIRK_SD_C22_EXTADDR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @BHND_PCIE_PHYADDR_SD, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %23
  store i32 -1, i32* %6, align 4
  br label %67

35:                                               ; preds = %30
  %36 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %7, align 8
  %37 = call i32 @BHND_PCI_LOCK(%struct.bhnd_pci_softc* %36)
  %38 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %7, align 8
  %39 = call i32 @bhnd_pcie_mdio_enable(%struct.bhnd_pci_softc* %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @BHND_PCIE_SD_ADDREXT, align 4
  %42 = call i32 @BHND_PCIE_MDIODATA_ADDR(i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @bhnd_pcie_mdio_cmd_write(%struct.bhnd_pci_softc* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %61

50:                                               ; preds = %35
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @BHND_PCIE_MDIODATA_ADDR(i32 %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @BHND_PCIE_MDIODATA_DATA_MASK, align 4
  %56 = and i32 %54, %55
  %57 = or i32 %53, %56
  store i32 %57, i32* %12, align 4
  %58 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @bhnd_pcie_mdio_cmd_write(%struct.bhnd_pci_softc* %58, i32 %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %50, %49
  %62 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %7, align 8
  %63 = call i32 @bhnd_pcie_mdio_disable(%struct.bhnd_pci_softc* %62)
  %64 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %7, align 8
  %65 = call i32 @BHND_PCI_UNLOCK(%struct.bhnd_pci_softc* %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %61, %34, %17
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @bhnd_pcie_mdio_write(%struct.bhnd_pci_softc*, i32, i32, i32) #1

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
