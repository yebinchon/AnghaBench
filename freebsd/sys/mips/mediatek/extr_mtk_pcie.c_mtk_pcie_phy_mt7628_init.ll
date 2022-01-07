; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7628_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7628_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i32 }

@SYSCTL_GPIOMODE = common dso_local global i32 0, align 4
@MT7628_PERST_GPIO_MODE = common dso_local global i32 0, align 4
@MT7628_PERST = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MTK_PCI_PCICFG = common dso_local global i32 0, align 4
@MTK_PCI_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_pcie_phy_mt7628_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_phy_mt7628_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pci_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mtk_pci_softc* @device_get_softc(i32 %5)
  store %struct.mtk_pci_softc* %6, %struct.mtk_pci_softc** %4, align 8
  %7 = load i32, i32* @SYSCTL_GPIOMODE, align 4
  %8 = load i32, i32* @MT7628_PERST_GPIO_MODE, align 4
  %9 = load i32, i32* @MT7628_PERST, align 4
  %10 = call i32 @mtk_sysctl_clr_set(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @mtk_pcie_phy_start(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = call i32 @DELAY(i32 100000)
  %18 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %19 = call i32 @mtk_pcie_phy_mt7628_setup(%struct.mtk_pci_softc* %18, i32 36864)
  %20 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %21 = load i32, i32* @MTK_PCI_PCICFG, align 4
  %22 = load i32, i32* @MTK_PCI_RESET, align 4
  %23 = call i32 @MT_CLR_SET32(%struct.mtk_pci_softc* %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %16, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.mtk_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtk_sysctl_clr_set(i32, i32, i32) #1

declare dso_local i64 @mtk_pcie_phy_start(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtk_pcie_phy_mt7628_setup(%struct.mtk_pci_softc*, i32) #1

declare dso_local i32 @MT_CLR_SET32(%struct.mtk_pci_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
