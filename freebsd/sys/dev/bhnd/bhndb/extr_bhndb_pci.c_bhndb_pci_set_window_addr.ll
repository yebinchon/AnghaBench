; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_set_window_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_set_window_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_regwin = type { i32 }
%struct.bhndb_pci_softc = type { i32 (i32, i32, %struct.bhndb_regwin*, i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.bhndb_regwin*, i32)* @bhndb_pci_set_window_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_set_window_addr(i32 %0, %struct.bhndb_regwin* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhndb_regwin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhndb_pci_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bhndb_regwin* %1, %struct.bhndb_regwin** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.bhndb_pci_softc* @device_get_softc(i32 %8)
  store %struct.bhndb_pci_softc* %9, %struct.bhndb_pci_softc** %7, align 8
  %10 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %11 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %10, i32 0, i32 0
  %12 = load i32 (i32, i32, %struct.bhndb_regwin*, i32)*, i32 (i32, i32, %struct.bhndb_regwin*, i32)** %11, align 8
  %13 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %14 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %17 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 %12(i32 %15, i32 %18, %struct.bhndb_regwin* %19, i32 %20)
  ret i32 %21
}

declare dso_local %struct.bhndb_pci_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
