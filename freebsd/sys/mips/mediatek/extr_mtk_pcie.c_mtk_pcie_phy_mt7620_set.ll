; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7620_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7620_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PHY_MODE_WRITE = common dso_local global i32 0, align 4
@PHY_ADDR_OFFSET = common dso_local global i32 0, align 4
@MT7620_PCIE_PHY_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pci_softc*, i32, i32)* @mtk_pcie_phy_mt7620_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_phy_mt7620_set(%struct.mtk_pci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_pci_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_pci_softc* %0, %struct.mtk_pci_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %5, align 8
  %10 = call i64 @mtk_pcie_phy_mt7620_wait_busy(%struct.mtk_pci_softc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %4, align 4
  br label %35

14:                                               ; preds = %3
  %15 = load i32, i32* @PHY_MODE_WRITE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 255
  %18 = load i32, i32* @PHY_ADDR_OFFSET, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %15, %19
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 255
  %23 = or i32 %20, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %5, align 8
  %25 = load i32, i32* @MT7620_PCIE_PHY_CFG, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MT_WRITE32(%struct.mtk_pci_softc* %24, i32 %25, i32 %26)
  %28 = call i32 @DELAY(i32 1000)
  %29 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %5, align 8
  %30 = call i64 @mtk_pcie_phy_mt7620_wait_busy(%struct.mtk_pci_softc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %32, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @mtk_pcie_phy_mt7620_wait_busy(%struct.mtk_pci_softc*) #1

declare dso_local i32 @MT_WRITE32(%struct.mtk_pci_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
