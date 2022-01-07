; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci_hostb.c_bhnd_pci_wars_hwdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci_hostb.c_bhnd_pci_wars_hwdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pcihb_softc = type { i32, i32 }

@BHND_PCIE_QUIRK_L1_TIMER_PERF = common dso_local global i32 0, align 4
@BHND_PCIE_DLLP_PMTHRESHREG = common dso_local global i32 0, align 4
@BHND_PCIE_ASPMTIMER_EXTEND = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_ASPM_OVR = common dso_local global i32 0, align 4
@PCIER_LINK_CTL = common dso_local global i32 0, align 4
@PCIEM_LINK_CTL_ECPM = common dso_local global i32 0, align 4
@BHND_PCI_WAR_SUSPEND = common dso_local global i64 0, align 8
@PCIEM_LINK_CTL_ASPMC_L1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pcihb_softc*, i64)* @bhnd_pci_wars_hwdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pci_wars_hwdown(%struct.bhnd_pcihb_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.bhnd_pcihb_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bhnd_pcihb_softc* %0, %struct.bhnd_pcihb_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BHND_PCIE_QUIRK_L1_TIMER_PERF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %15 = load i32, i32* @BHND_PCIE_DLLP_PMTHRESHREG, align 4
  %16 = call i32 @BHND_PCI_PROTO_READ_4(%struct.bhnd_pcihb_softc* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @BHND_PCIE_ASPMTIMER_EXTEND, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %22 = load i32, i32* @BHND_PCIE_DLLP_PMTHRESHREG, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @BHND_PCI_PROTO_WRITE_4(%struct.bhnd_pcihb_softc* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %13, %2
  %26 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %27 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BHND_PCIE_QUIRK_ASPM_OVR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PCIER_LINK_CTL, align 4
  %37 = call i32 @pcie_read_config(i32 %35, i32 %36, i32 2)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @PCIEM_LINK_CTL_ECPM, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @BHND_PCI_WAR_SUSPEND, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load i32, i32* @PCIEM_LINK_CTL_ASPMC_L1, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %32
  %50 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %51 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PCIER_LINK_CTL, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pcie_write_config(i32 %52, i32 %53, i32 %54, i32 2)
  br label %56

56:                                               ; preds = %49, %25
  ret i32 0
}

declare dso_local i32 @BHND_PCI_PROTO_READ_4(%struct.bhnd_pcihb_softc*, i32) #1

declare dso_local i32 @BHND_PCI_PROTO_WRITE_4(%struct.bhnd_pcihb_softc*, i32, i32) #1

declare dso_local i32 @pcie_read_config(i32, i32, i32) #1

declare dso_local i32 @pcie_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
