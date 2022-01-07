; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_setup_slots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_setup_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i64, i32, i32 }

@MTK_PCI_PCIENA = common dso_local global i32 0, align 4
@MTK_SOC_MT7620A = common dso_local global i64 0, align 8
@MTK_SOC_MT7628 = common dso_local global i64 0, align 8
@MTK_SOC_MT7688 = common dso_local global i64 0, align 8
@MTK_SOC_MT7621 = common dso_local global i64 0, align 8
@PCIR_IOBASEL_1 = common dso_local global i32 0, align 4
@PCIR_IOBASEH_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITL_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITH_1 = common dso_local global i32 0, align 4
@PCIR_MEMBASE_1 = common dso_local global i32 0, align 4
@PCIR_MEMLIMIT_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEL_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEH_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITL_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITH_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mtk_pcie_phy_setup_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_pcie_phy_setup_slots(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_pci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.mtk_pci_softc* @device_get_softc(i32 %7)
  store %struct.mtk_pci_softc* %8, %struct.mtk_pci_softc** %3, align 8
  %9 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %10 = load i32, i32* @MTK_PCI_PCIENA, align 4
  %11 = call i32 @MT_WRITE32(%struct.mtk_pci_softc* %9, i32 %10, i32 0)
  store i32 67043329, i32* %4, align 4
  %12 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MTK_SOC_MT7620A, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %1
  %18 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MTK_SOC_MT7628, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MTK_SOC_MT7688, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MTK_SOC_MT7621, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %23, %17, %1
  store i32 2147418113, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  %39 = call i32 @DELAY(i32 500000)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %138, %36
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %141

46:                                               ; preds = %40
  %47 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @MTK_PCIE_STATUS(i32 %48)
  %50 = call i32 @MT_READ32(%struct.mtk_pci_softc* %47, i32 %49)
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 1, %54
  %56 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %61

60:                                               ; preds = %46
  br label %138

61:                                               ; preds = %53
  %62 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @MTK_PCIE_BAR0SETUP(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @MT_WRITE32(%struct.mtk_pci_softc* %62, i32 %64, i32 %65)
  %67 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @MTK_PCIE_BAR1SETUP(i32 %68)
  %70 = call i32 @MT_WRITE32(%struct.mtk_pci_softc* %67, i32 %69, i32 0)
  %71 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @MTK_PCIE_IMBASEBAR0(i32 %72)
  %74 = call i32 @MT_WRITE32(%struct.mtk_pci_softc* %71, i32 %73, i32 0)
  %75 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @MTK_PCIE_CLASS(i32 %76)
  %78 = call i32 @MT_WRITE32(%struct.mtk_pci_softc* %75, i32 %77, i32 100925441)
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @mtk_pci_read_config(i32 %79, i32 0, i32 %80, i32 0, i32 4, i32 4)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, 4
  %86 = call i32 @mtk_pci_write_config(i32 %82, i32 0, i32 %83, i32 0, i32 4, i32 %85, i32 4)
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @mtk_pci_read_config(i32 %87, i32 0, i32 %88, i32 0, i32 1804, i32 4)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, -65281
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, 20480
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @mtk_pci_write_config(i32 %94, i32 0, i32 %95, i32 0, i32 1804, i32 %96, i32 4)
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @PCIR_IOBASEL_1, align 4
  %101 = call i32 @mtk_pci_write_config(i32 %98, i32 0, i32 %99, i32 0, i32 %100, i32 255, i32 1)
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @PCIR_IOBASEH_1, align 4
  %105 = call i32 @mtk_pci_write_config(i32 %102, i32 0, i32 %103, i32 0, i32 %104, i32 65535, i32 2)
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @PCIR_IOLIMITL_1, align 4
  %109 = call i32 @mtk_pci_write_config(i32 %106, i32 0, i32 %107, i32 0, i32 %108, i32 0, i32 1)
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @PCIR_IOLIMITH_1, align 4
  %113 = call i32 @mtk_pci_write_config(i32 %110, i32 0, i32 %111, i32 0, i32 %112, i32 0, i32 2)
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @PCIR_MEMBASE_1, align 4
  %117 = call i32 @mtk_pci_write_config(i32 %114, i32 0, i32 %115, i32 0, i32 %116, i32 65535, i32 2)
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @PCIR_MEMLIMIT_1, align 4
  %121 = call i32 @mtk_pci_write_config(i32 %118, i32 0, i32 %119, i32 0, i32 %120, i32 0, i32 2)
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @PCIR_PMBASEL_1, align 4
  %125 = call i32 @mtk_pci_write_config(i32 %122, i32 0, i32 %123, i32 0, i32 %124, i32 65535, i32 2)
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @PCIR_PMBASEH_1, align 4
  %129 = call i32 @mtk_pci_write_config(i32 %126, i32 0, i32 %127, i32 0, i32 %128, i32 -1, i32 4)
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @PCIR_PMLIMITL_1, align 4
  %133 = call i32 @mtk_pci_write_config(i32 %130, i32 0, i32 %131, i32 0, i32 %132, i32 0, i32 2)
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @PCIR_PMLIMITH_1, align 4
  %137 = call i32 @mtk_pci_write_config(i32 %134, i32 0, i32 %135, i32 0, i32 %136, i32 0, i32 4)
  br label %138

138:                                              ; preds = %61, %60
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %40

141:                                              ; preds = %40
  ret void
}

declare dso_local %struct.mtk_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @MT_WRITE32(%struct.mtk_pci_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @MT_READ32(%struct.mtk_pci_softc*, i32) #1

declare dso_local i32 @MTK_PCIE_STATUS(i32) #1

declare dso_local i32 @MTK_PCIE_BAR0SETUP(i32) #1

declare dso_local i32 @MTK_PCIE_BAR1SETUP(i32) #1

declare dso_local i32 @MTK_PCIE_IMBASEBAR0(i32) #1

declare dso_local i32 @MTK_PCIE_CLASS(i32) #1

declare dso_local i32 @mtk_pci_read_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_pci_write_config(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
