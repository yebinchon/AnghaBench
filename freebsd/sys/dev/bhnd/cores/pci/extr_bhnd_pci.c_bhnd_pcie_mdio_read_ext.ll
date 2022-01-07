; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_read_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci.c_bhnd_pcie_mdio_read_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pci_softc = type { i32 }

@MDIO_DEVADDR_NONE = common dso_local global i32 0, align 4
@BHND_PCI_QUIRK_SD_C22_EXTADDR = common dso_local global i32 0, align 4
@BHND_PCIE_PHYADDR_SD = common dso_local global i32 0, align 4
@BHND_PCIE_SD_ADDREXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pcie_mdio_read_ext(%struct.bhnd_pci_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_pci_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bhnd_pci_softc* %0, %struct.bhnd_pci_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MDIO_DEVADDR_NONE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @bhnd_pcie_mdio_read(%struct.bhnd_pci_softc* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %65

21:                                               ; preds = %4
  %22 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %6, align 8
  %23 = getelementptr inbounds %struct.bhnd_pci_softc, %struct.bhnd_pci_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BHND_PCI_QUIRK_SD_C22_EXTADDR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BHND_PCIE_PHYADDR_SD, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %21
  store i32 -1, i32* %5, align 4
  br label %65

33:                                               ; preds = %28
  %34 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %6, align 8
  %35 = call i32 @BHND_PCI_LOCK(%struct.bhnd_pci_softc* %34)
  %36 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %6, align 8
  %37 = call i32 @bhnd_pcie_mdio_enable(%struct.bhnd_pci_softc* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BHND_PCIE_SD_ADDREXT, align 4
  %40 = call i32 @BHND_PCIE_MDIODATA_ADDR(i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @bhnd_pcie_mdio_cmd_write(%struct.bhnd_pci_softc* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %55

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @BHND_PCIE_MDIODATA_ADDR(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @bhnd_pcie_mdio_cmd_read(%struct.bhnd_pci_softc* %52, i32 %53, i32* %11)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %48, %47
  %56 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %6, align 8
  %57 = call i32 @bhnd_pcie_mdio_disable(%struct.bhnd_pci_softc* %56)
  %58 = load %struct.bhnd_pci_softc*, %struct.bhnd_pci_softc** %6, align 8
  %59 = call i32 @BHND_PCI_UNLOCK(%struct.bhnd_pci_softc* %58)
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %62, %32, %16
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @bhnd_pcie_mdio_read(%struct.bhnd_pci_softc*, i32, i32) #1

declare dso_local i32 @BHND_PCI_LOCK(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @bhnd_pcie_mdio_enable(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @BHND_PCIE_MDIODATA_ADDR(i32, i32) #1

declare dso_local i32 @bhnd_pcie_mdio_cmd_write(%struct.bhnd_pci_softc*, i32) #1

declare dso_local i32 @bhnd_pcie_mdio_cmd_read(%struct.bhnd_pci_softc*, i32, i32*) #1

declare dso_local i32 @bhnd_pcie_mdio_disable(%struct.bhnd_pci_softc*) #1

declare dso_local i32 @BHND_PCI_UNLOCK(%struct.bhnd_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
