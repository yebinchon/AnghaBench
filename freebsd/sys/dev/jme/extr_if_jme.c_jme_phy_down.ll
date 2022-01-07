; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_phy_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_phy_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@JME_PHYPOWDN = common dso_local global i32 0, align 4
@JME_PCI_PE1 = common dso_local global i32 0, align 4
@PE1_GIGA_PDOWN_MASK = common dso_local global i32 0, align 4
@PE1_GIGA_PDOWN_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_phy_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_phy_down(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %4 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %5 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %8 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MII_BMCR, align 4
  %11 = load i32, i32* @BMCR_PDOWN, align 4
  %12 = call i32 @jme_miibus_writereg(i32 %6, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %14 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CHIPMODE_REVFM(i32 %15)
  %17 = icmp sge i32 %16, 5
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %20 = load i32, i32* @JME_PHYPOWDN, align 4
  %21 = call i32 @CSR_READ_4(%struct.jme_softc* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, 15
  store i32 %23, i32* %3, align 4
  %24 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %25 = load i32, i32* @JME_PHYPOWDN, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @CSR_WRITE_4(%struct.jme_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %29 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @JME_PCI_PE1, align 4
  %32 = call i32 @pci_read_config(i32 %30, i32 %31, i32 4)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @PE1_GIGA_PDOWN_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @PE1_GIGA_PDOWN_D3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %41 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @JME_PCI_PE1, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @pci_write_config(i32 %42, i32 %43, i32 %44, i32 4)
  br label %46

46:                                               ; preds = %18, %1
  ret void
}

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
