; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_pci_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@BFE_BAR0_WIN = common dso_local global i32 0, align 4
@BFE_REG_PCI = common dso_local global i32 0, align 4
@BFE_SBIDHIGH = common dso_local global i32 0, align 4
@BFE_RC_MASK = common dso_local global i32 0, align 4
@BFE_SBINTVEC = common dso_local global i32 0, align 4
@BFE_SSB_PCI_TRANS_2 = common dso_local global i32 0, align 4
@BFE_SSB_PCI_PREF = common dso_local global i32 0, align 4
@BFE_SSB_PCI_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*, i32)* @bfe_pci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_pci_setup(%struct.bfe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BFE_BAR0_WIN, align 4
  %12 = call i32 @pci_read_config(i32 %10, i32 %11, i32 4)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BFE_BAR0_WIN, align 4
  %17 = load i32, i32* @BFE_REG_PCI, align 4
  %18 = call i32 @pci_write_config(i32 %15, i32 %16, i32 %17, i32 4)
  %19 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %20 = load i32, i32* @BFE_SBIDHIGH, align 4
  %21 = call i32 @CSR_READ_4(%struct.bfe_softc* %19, i32 %20)
  %22 = load i32, i32* @BFE_RC_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %25 = load i32, i32* @BFE_SBINTVEC, align 4
  %26 = call i32 @CSR_READ_4(%struct.bfe_softc* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %31 = load i32, i32* @BFE_SBINTVEC, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %35 = load i32, i32* @BFE_SSB_PCI_TRANS_2, align 4
  %36 = call i32 @CSR_READ_4(%struct.bfe_softc* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @BFE_SSB_PCI_PREF, align 4
  %38 = load i32, i32* @BFE_SSB_PCI_BURST, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %43 = load i32, i32* @BFE_SSB_PCI_TRANS_2, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BFE_BAR0_WIN, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @pci_write_config(i32 %48, i32 %49, i32 %50, i32 4)
  ret void
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
