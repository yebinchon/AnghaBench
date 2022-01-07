; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i64 }

@MTK_SOC_MT7621 = common dso_local global i64 0, align 8
@SYSCTL_REVID = common dso_local global i32 0, align 4
@SYSCTL_REVID_MASK = common dso_local global i32 0, align 4
@SYSCTL_MT7621_REV_E = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_pcie_phy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcie_phy_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pci_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mtk_pci_softc* @device_get_softc(i32 %5)
  store %struct.mtk_pci_softc* %6, %struct.mtk_pci_softc** %4, align 8
  %7 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MTK_SOC_MT7621, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @SYSCTL_REVID, align 4
  %14 = call i32 @mtk_sysctl_get(i32 %13)
  %15 = load i32, i32* @SYSCTL_REVID_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @SYSCTL_MT7621_REV_E, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @fdt_reset_assert_all(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %40

25:                                               ; preds = %19
  br label %33

26:                                               ; preds = %12, %1
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @fdt_reset_deassert_all(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %40

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @fdt_clock_enable_all(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %30, %23
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.mtk_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtk_sysctl_get(i32) #1

declare dso_local i64 @fdt_reset_assert_all(i32) #1

declare dso_local i64 @fdt_reset_deassert_all(i32) #1

declare dso_local i64 @fdt_clock_enable_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
