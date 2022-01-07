; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7628_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7628_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i32 }

@SYSCTL_SYSCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_pci_softc*, i32)* @mtk_pcie_phy_mt7628_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_pcie_phy_mt7628_setup(%struct.mtk_pci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_pci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_pci_softc* %0, %struct.mtk_pci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SYSCTL_SYSCFG, align 4
  %7 = call i32 @mtk_sysctl_get(i32 %6)
  %8 = ashr i32 %7, 6
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1024
  %14 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %11, i32 %13, i32 8, i32 1, i32 1)
  %15 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1024
  %18 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %15, i32 %17, i32 9, i32 2, i32 0)
  %19 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 0
  %22 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %19, i32 %21, i32 4, i32 1, i32 1)
  %23 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 0
  %26 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %23, i32 %25, i32 5, i32 1, i32 0)
  %27 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1196
  %30 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %27, i32 %29, i32 16, i32 3, i32 3)
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %62

33:                                               ; preds = %2
  %34 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1212
  %37 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %34, i32 %36, i32 24, i32 8, i32 125)
  %38 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1168
  %41 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %38, i32 %40, i32 12, i32 4, i32 8)
  %42 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1168
  %45 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %42, i32 %44, i32 6, i32 2, i32 1)
  %46 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1216
  %49 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %46, i32 %48, i32 0, i32 32, i32 524288000)
  %50 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1188
  %53 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %50, i32 %52, i32 0, i32 16, i32 317)
  %54 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1192
  %57 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %54, i32 %56, i32 16, i32 16, i32 116)
  %58 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1192
  %61 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %58, i32 %60, i32 0, i32 16, i32 116)
  br label %91

62:                                               ; preds = %2
  %63 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1212
  %66 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %63, i32 %65, i32 24, i32 8, i32 100)
  %67 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1168
  %70 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %67, i32 %69, i32 12, i32 4, i32 10)
  %71 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1168
  %74 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %71, i32 %73, i32 6, i32 2, i32 0)
  %75 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1216
  %78 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %75, i32 %77, i32 0, i32 32, i32 419430400)
  %79 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1188
  %82 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %79, i32 %81, i32 0, i32 16, i32 397)
  %83 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1192
  %86 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %83, i32 %85, i32 16, i32 16, i32 74)
  %87 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1192
  %90 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %87, i32 %89, i32 0, i32 16, i32 74)
  br label %91

91:                                               ; preds = %62, %33
  %92 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1176
  %95 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %92, i32 %94, i32 0, i32 8, i32 5)
  %96 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 0
  %99 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %96, i32 %98, i32 5, i32 1, i32 1)
  %100 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 0
  %103 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %100, i32 %102, i32 4, i32 1, i32 0)
  ret void
}

declare dso_local i32 @mtk_sysctl_get(i32) #1

declare dso_local i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
