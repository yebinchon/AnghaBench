; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unsupported device %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_pcie_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_phy_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pci_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mtk_pci_softc* @device_get_softc(i32 %5)
  store %struct.mtk_pci_softc* %6, %struct.mtk_pci_softc** %4, align 8
  %7 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %40 [
    i32 131, label %12
    i32 130, label %12
    i32 132, label %19
    i32 133, label %26
    i32 129, label %33
    i32 128, label %33
  ]

12:                                               ; preds = %1, %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @mtk_pcie_phy_mt7628_init(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %12
  br label %47

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @mtk_pcie_phy_mt7621_init(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %19
  br label %47

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @mtk_pcie_phy_mt7620_init(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %26
  br label %47

33:                                               ; preds = %1, %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @mtk_pcie_phy_rt3883_init(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %50

39:                                               ; preds = %33
  br label %47

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %39, %32, %25, %18
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @mtk_pcie_phy_setup_slots(i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %40, %37, %30, %23, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.mtk_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtk_pcie_phy_mt7628_init(i32) #1

declare dso_local i32 @mtk_pcie_phy_mt7621_init(i32) #1

declare dso_local i32 @mtk_pcie_phy_mt7620_init(i32) #1

declare dso_local i32 @mtk_pcie_phy_rt3883_init(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mtk_pcie_phy_setup_slots(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
