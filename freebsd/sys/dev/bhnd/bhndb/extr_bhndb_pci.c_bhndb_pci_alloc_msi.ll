; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_alloc_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_alloc_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i32, i32 }

@BHNDB_PCI_MSI_COUNT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate MSI interrupts: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_softc*, i32*)* @bhndb_pci_alloc_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_alloc_msi(%struct.bhndb_pci_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhndb_pci_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bhndb_pci_softc* %0, %struct.bhndb_pci_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %9 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pci_msi_count(i32 %10)
  %12 = load i32, i32* @BHNDB_PCI_MSI_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i32, i32* @BHNDB_PCI_MSI_COUNT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pci_alloc_msi(i32 %20, i32* %7)
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BHNDB_PCI_MSI_COUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %36 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_release_msi(i32 %37)
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %34, %23, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i32 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
