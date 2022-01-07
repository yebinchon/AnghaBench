; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_sprom_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_sprom_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i32, i32 }
%struct.bhndb_regwin = type { i32 }

@BHNDB_PCI_SPROM_CONTROL = common dso_local global i32 0, align 4
@BHNDB_PCI_SPROM_BLANK = common dso_local global i32 0, align 4
@BHNDB_PCI_SPROM_SZ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid PCI sprom size 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_softc*)* @bhndb_pci_sprom_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_sprom_size(%struct.bhndb_pci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhndb_pci_softc*, align 8
  %4 = alloca %struct.bhndb_regwin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bhndb_pci_softc* %0, %struct.bhndb_pci_softc** %3, align 8
  %7 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %3, align 8
  %8 = call %struct.bhndb_regwin* @bhndb_pci_sprom_regwin(%struct.bhndb_pci_softc* %7)
  store %struct.bhndb_regwin* %8, %struct.bhndb_regwin** %4, align 8
  %9 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %4, align 8
  %10 = icmp eq %struct.bhndb_regwin* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BHNDB_PCI_SPROM_CONTROL, align 4
  %17 = call i32 @pci_read_config(i32 %15, i32 %16, i32 4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BHNDB_PCI_SPROM_BLANK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %44

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @BHNDB_PCI_SPROM_SZ_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %31 [
    i32 130, label %27
    i32 129, label %28
    i32 131, label %29
    i32 128, label %30
  ]

27:                                               ; preds = %23
  store i32 1024, i32* %6, align 4
  br label %37

28:                                               ; preds = %23
  store i32 4096, i32* %6, align 4
  br label %37

29:                                               ; preds = %23
  store i32 16384, i32* %6, align 4
  br label %37

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %23, %30
  %32 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %3, align 8
  %33 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %2, align 4
  br label %44

37:                                               ; preds = %29, %28, %27
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %4, align 8
  %40 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MIN(i32 %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %37, %31, %22, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.bhndb_regwin* @bhndb_pci_sprom_regwin(%struct.bhndb_pci_softc*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
