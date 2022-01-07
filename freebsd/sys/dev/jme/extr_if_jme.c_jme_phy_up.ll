; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_phy_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_phy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@JME_PHYPOWDN = common dso_local global i32 0, align 4
@JME_PCI_PE1 = common dso_local global i32 0, align 4
@PE1_GIGA_PDOWN_MASK = common dso_local global i32 0, align 4
@PE1_GIGA_PDOWN_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_phy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_phy_up(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %5 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %6 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %9 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MII_BMCR, align 4
  %12 = call i32 @jme_miibus_readreg(i32 %7, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @BMCR_PDOWN, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %18 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %21 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MII_BMCR, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @jme_miibus_writereg(i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %27 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CHIPMODE_REVFM(i32 %28)
  %30 = icmp sge i32 %29, 5
  br i1 %30, label %31, label %59

31:                                               ; preds = %1
  %32 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %33 = load i32, i32* @JME_PHYPOWDN, align 4
  %34 = call i32 @CSR_READ_4(%struct.jme_softc* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, -16
  store i32 %36, i32* %3, align 4
  %37 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %38 = load i32, i32* @JME_PHYPOWDN, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @CSR_WRITE_4(%struct.jme_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %42 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @JME_PCI_PE1, align 4
  %45 = call i32 @pci_read_config(i32 %43, i32 %44, i32 4)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @PE1_GIGA_PDOWN_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @PE1_GIGA_PDOWN_DIS, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %54 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @JME_PCI_PE1, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pci_write_config(i32 %55, i32 %56, i32 %57, i32 4)
  br label %59

59:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @jme_miibus_readreg(i32, i32, i32) #1

declare dso_local i32 @jme_miibus_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @CHIPMODE_REVFM(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
