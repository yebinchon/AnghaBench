; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_pwrctl_ungate_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_pwrctl_ungate_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@BHND_CLOCK_HT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @bhndb_pci_pwrctl_ungate_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_pwrctl_ungate_clock(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhndb_pci_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.bhndb_pci_softc* @device_get_softc(i32 %9)
  store %struct.bhndb_pci_softc* %10, %struct.bhndb_pci_softc** %8, align 8
  %11 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %8, align 8
  %12 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @bhndb_is_pcie_attached(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @BHND_CLOCK_HT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %18
  %25 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %8, align 8
  %26 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bhndb_enable_pci_clocks(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %22, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.bhndb_pci_softc* @device_get_softc(i32) #1

declare dso_local i64 @bhndb_is_pcie_attached(i32) #1

declare dso_local i32 @bhndb_enable_pci_clocks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
