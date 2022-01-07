; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7620_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7620_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@MT7620_PPLL_DRV = common dso_local global i32 0, align 4
@LC_CKDRVPD = common dso_local global i32 0, align 4
@PDRV_SW_SET = common dso_local global i32 0, align 4
@SYSCTL_REVID = common dso_local global i32 0, align 4
@MT7620_PKG_BGA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PCIe disabled for MT7620N\0A\00", align 1
@MT7620_PPLL_CFG0 = common dso_local global i32 0, align 4
@PPLL_SW_SET = common dso_local global i32 0, align 4
@MT7620_PPLL_CFG1 = common dso_local global i32 0, align 4
@PPLL_PD = common dso_local global i32 0, align 4
@SYSCTL_GPIOMODE = common dso_local global i32 0, align 4
@MT7620_PERST_GPIO_MODE = common dso_local global i32 0, align 4
@MT7620_PERST = common dso_local global i32 0, align 4
@PPLL_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no PPLL not lock\0A\00", align 1
@LC_CKDRVOHZ = common dso_local global i32 0, align 4
@LC_CKDRVHZ = common dso_local global i32 0, align 4
@MTK_PCI_PCICFG = common dso_local global i32 0, align 4
@MTK_PCI_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_pcie_phy_mt7620_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_phy_mt7620_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pci_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mtk_pci_softc* @device_get_softc(i32 %5)
  store %struct.mtk_pci_softc* %6, %struct.mtk_pci_softc** %4, align 8
  %7 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %8 = call i64 @mtk_pcie_phy_mt7620_set(%struct.mtk_pci_softc* %7, i32 0, i32 128)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %12 = call i64 @mtk_pcie_phy_mt7620_set(%struct.mtk_pci_softc* %11, i32 1, i32 4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %16 = call i64 @mtk_pcie_phy_mt7620_set(%struct.mtk_pci_softc* %15, i32 104, i32 132)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %10, %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @mtk_pcie_phy_stop(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %85

26:                                               ; preds = %20
  %27 = load i32, i32* @MT7620_PPLL_DRV, align 4
  %28 = load i32, i32* @LC_CKDRVPD, align 4
  %29 = load i32, i32* @PDRV_SW_SET, align 4
  %30 = call i32 @mtk_sysctl_clr_set(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @SYSCTL_REVID, align 4
  %32 = call i32 @mtk_sysctl_get(i32 %31)
  %33 = load i32, i32* @MT7620_PKG_BGA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @MT7620_PPLL_CFG0, align 4
  %40 = load i32, i32* @PPLL_SW_SET, align 4
  %41 = call i32 @mtk_sysctl_clr_set(i32 %39, i32 0, i32 %40)
  %42 = load i32, i32* @MT7620_PPLL_CFG1, align 4
  %43 = load i32, i32* @PPLL_PD, align 4
  %44 = call i32 @mtk_sysctl_clr_set(i32 %42, i32 0, i32 %43)
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %85

46:                                               ; preds = %26
  %47 = load i32, i32* @SYSCTL_GPIOMODE, align 4
  %48 = load i32, i32* @MT7620_PERST_GPIO_MODE, align 4
  %49 = load i32, i32* @MT7620_PERST, align 4
  %50 = call i32 @mtk_sysctl_clr_set(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @mtk_pcie_phy_start(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %2, align 4
  br label %85

56:                                               ; preds = %46
  %57 = call i32 @DELAY(i32 100000)
  %58 = load i32, i32* @MT7620_PPLL_CFG1, align 4
  %59 = call i32 @mtk_sysctl_get(i32 %58)
  %60 = load i32, i32* @PPLL_LOCKED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @mtk_pcie_phy_stop(i32 %66)
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %85

69:                                               ; preds = %56
  %70 = load i32, i32* @MT7620_PPLL_DRV, align 4
  %71 = load i32, i32* @LC_CKDRVOHZ, align 4
  %72 = load i32, i32* @LC_CKDRVHZ, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @LC_CKDRVPD, align 4
  %75 = load i32, i32* @PDRV_SW_SET, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @mtk_sysctl_clr_set(i32 %70, i32 %73, i32 %76)
  %78 = call i32 @DELAY(i32 100000)
  %79 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %80 = load i32, i32* @MTK_PCI_PCICFG, align 4
  %81 = load i32, i32* @MTK_PCI_RESET, align 4
  %82 = call i32 @MT_CLR_SET32(%struct.mtk_pci_softc* %79, i32 %80, i32 %81, i32 0)
  %83 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %84 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %69, %63, %54, %36, %24, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.mtk_pci_softc* @device_get_softc(i32) #1

declare dso_local i64 @mtk_pcie_phy_mt7620_set(%struct.mtk_pci_softc*, i32, i32) #1

declare dso_local i64 @mtk_pcie_phy_stop(i32) #1

declare dso_local i32 @mtk_sysctl_clr_set(i32, i32, i32) #1

declare dso_local i32 @mtk_sysctl_get(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @mtk_pcie_phy_start(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @MT_CLR_SET32(%struct.mtk_pci_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
