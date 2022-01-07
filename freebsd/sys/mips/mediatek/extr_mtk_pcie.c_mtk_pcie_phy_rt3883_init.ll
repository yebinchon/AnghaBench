; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_rt3883_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_rt3883_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i32 }

@SYSCTL_SYSCFG1 = common dso_local global i32 0, align 4
@RT3883_PCI_HOST_MODE = common dso_local global i32 0, align 4
@RT3883_PCIE_RC_MODE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYSCTL_RSTCTRL = common dso_local global i32 0, align 4
@RT3883_PCI_RST = common dso_local global i32 0, align 4
@SYSCTL_CLKCFG1 = common dso_local global i32 0, align 4
@RT3883_PCI_CLK = common dso_local global i32 0, align 4
@MTK_PCI_PCICFG = common dso_local global i32 0, align 4
@MTK_PCI_ARBCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_pcie_phy_rt3883_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_phy_rt3883_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pci_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mtk_pci_softc* @device_get_softc(i32 %5)
  store %struct.mtk_pci_softc* %6, %struct.mtk_pci_softc** %4, align 8
  %7 = load i32, i32* @SYSCTL_SYSCFG1, align 4
  %8 = load i32, i32* @RT3883_PCI_HOST_MODE, align 4
  %9 = load i32, i32* @RT3883_PCIE_RC_MODE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @mtk_sysctl_clr_set(i32 %7, i32 0, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @mtk_pcie_phy_start(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* @SYSCTL_RSTCTRL, align 4
  %19 = load i32, i32* @RT3883_PCI_RST, align 4
  %20 = call i32 @mtk_sysctl_clr_set(i32 %18, i32 0, i32 %19)
  %21 = load i32, i32* @SYSCTL_CLKCFG1, align 4
  %22 = load i32, i32* @RT3883_PCI_CLK, align 4
  %23 = call i32 @mtk_sysctl_clr_set(i32 %21, i32 %22, i32 0)
  %24 = call i32 @DELAY(i32 500000)
  %25 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %26 = load i32, i32* @MTK_PCI_PCICFG, align 4
  %27 = call i32 @MT_WRITE32(%struct.mtk_pci_softc* %25, i32 %26, i32 0)
  %28 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %29 = load i32, i32* @MTK_PCI_ARBCTL, align 4
  %30 = call i32 @MT_WRITE32(%struct.mtk_pci_softc* %28, i32 %29, i32 121)
  %31 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %17, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.mtk_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtk_sysctl_clr_set(i32, i32, i32) #1

declare dso_local i64 @mtk_pcie_phy_start(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @MT_WRITE32(%struct.mtk_pci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
