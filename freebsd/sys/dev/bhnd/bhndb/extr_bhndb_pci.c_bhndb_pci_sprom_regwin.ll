; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_sprom_regwin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_sprom_regwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_regwin = type { i32 }
%struct.bhndb_pci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bhndb_resources* }
%struct.bhndb_resources = type { %struct.bhndb_hwcfg* }
%struct.bhndb_hwcfg = type { i32 }

@BHNDB_REGWIN_T_SPROM = common dso_local global i32 0, align 4
@BHNDB_PCI_V0_BAR0_SPROM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bhndb_regwin* (%struct.bhndb_pci_softc*)* @bhndb_pci_sprom_regwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bhndb_regwin* @bhndb_pci_sprom_regwin(%struct.bhndb_pci_softc* %0) #0 {
  %2 = alloca %struct.bhndb_pci_softc*, align 8
  %3 = alloca %struct.bhndb_resources*, align 8
  %4 = alloca %struct.bhndb_hwcfg*, align 8
  %5 = alloca %struct.bhndb_regwin*, align 8
  store %struct.bhndb_pci_softc* %0, %struct.bhndb_pci_softc** %2, align 8
  %6 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  store %struct.bhndb_resources* %9, %struct.bhndb_resources** %3, align 8
  %10 = load %struct.bhndb_resources*, %struct.bhndb_resources** %3, align 8
  %11 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %10, i32 0, i32 0
  %12 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %11, align 8
  store %struct.bhndb_hwcfg* %12, %struct.bhndb_hwcfg** %4, align 8
  %13 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %4, align 8
  %14 = getelementptr inbounds %struct.bhndb_hwcfg, %struct.bhndb_hwcfg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BHNDB_REGWIN_T_SPROM, align 4
  %17 = load i32, i32* @BHNDB_PCI_V0_BAR0_SPROM_SIZE, align 4
  %18 = call %struct.bhndb_regwin* @bhndb_regwin_find_type(i32 %15, i32 %16, i32 %17)
  store %struct.bhndb_regwin* %18, %struct.bhndb_regwin** %5, align 8
  %19 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  ret %struct.bhndb_regwin* %19
}

declare dso_local %struct.bhndb_regwin* @bhndb_regwin_find_type(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
