; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_route_siba_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_route_siba_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i32, i32 }

@BHNDB_PCI_QUIRK_SIBA_INTVEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"route_siba_interrupts not supported by this hardware\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"cannot route interrupts to high sbflag# %u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SIBA_CFG0_INTVEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_softc*, i32)* @bhndb_pci_route_siba_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_route_siba_interrupts(%struct.bhndb_pci_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhndb_pci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bhndb_pci_softc* %0, %struct.bhndb_pci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BHNDB_PCI_QUIRK_SIBA_INTVEC, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @bhnd_get_intr_ivec(i32 %15, i32 0, i32* %7)
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %22, 31
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %20
  %32 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %33 = call i32 @BHNDB_PCI_LOCK(%struct.bhndb_pci_softc* %32)
  %34 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %35 = load i32, i32* @SIBA_CFG0_INTVEC, align 4
  %36 = call i32 @SB0_REG_ABS(i32 %35)
  %37 = call i32 @bhndb_pci_read_core(%struct.bhndb_pci_softc* %34, i32 %36, i32 4)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %43 = load i32, i32* @SIBA_CFG0_INTVEC, align 4
  %44 = call i32 @SB0_REG_ABS(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @bhndb_pci_write_core(%struct.bhndb_pci_softc* %42, i32 %44, i32 %45, i32 4)
  %47 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %48 = call i32 @BHNDB_PCI_UNLOCK(%struct.bhndb_pci_softc* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %31, %24, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_get_intr_ivec(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @BHNDB_PCI_LOCK(%struct.bhndb_pci_softc*) #1

declare dso_local i32 @bhndb_pci_read_core(%struct.bhndb_pci_softc*, i32, i32) #1

declare dso_local i32 @SB0_REG_ABS(i32) #1

declare dso_local i32 @bhndb_pci_write_core(%struct.bhndb_pci_softc*, i32, i32, i32) #1

declare dso_local i32 @BHNDB_PCI_UNLOCK(%struct.bhndb_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
