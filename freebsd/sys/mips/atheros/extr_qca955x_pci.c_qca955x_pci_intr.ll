; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_pci.c_qca955x_pci_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_pci.c_qca955x_pci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_pci_softc = type { i32*, %struct.intr_event**, i64 }
%struct.intr_event = type { i32 }

@AR71XX_CPU_DDR_FLUSH_PCIE = common dso_local global i32 0, align 4
@QCA955X_PCI_INTR_STATUS = common dso_local global i64 0, align 8
@QCA955X_PCI_INTR_MASK = common dso_local global i64 0, align 8
@QCA955X_PCI_INTR_DEV0 = common dso_local global i32 0, align 4
@AR71XX_PCI_IRQ_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Stray IRQ %d\0A\00", align 1
@FILTER_STRAY = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @qca955x_pci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca955x_pci_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ar71xx_pci_softc*, align 8
  %5 = alloca %struct.intr_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ar71xx_pci_softc*
  store %struct.ar71xx_pci_softc* %10, %struct.ar71xx_pci_softc** %4, align 8
  %11 = load i32, i32* @AR71XX_CPU_DDR_FLUSH_PCIE, align 4
  %12 = call i32 @ar71xx_device_flush_ddr(i32 %11)
  %13 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QCA955X_PCI_INTR_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @ATH_READ_REG(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QCA955X_PCI_INTR_MASK, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @ATH_READ_REG(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @QCA955X_PCI_INTR_DEV0, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %1
  %33 = load i32, i32* @AR71XX_PCI_IRQ_START, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %34, i32 0, i32 1
  %36 = load %struct.intr_event**, %struct.intr_event*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %36, i64 %38
  %40 = load %struct.intr_event*, %struct.intr_event** %39, align 8
  store %struct.intr_event* %40, %struct.intr_event** %5, align 8
  %41 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %42 = icmp ne %struct.intr_event* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %45 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %44, i32 0, i32 0
  %46 = call i64 @CK_SLIST_EMPTY(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %32
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %51, i32* %2, align 4
  br label %65

52:                                               ; preds = %43
  %53 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %54 = call i32 @intr_event_handle(%struct.intr_event* %53, i32* null)
  %55 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %56 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mips_intrcnt_inc(i32 %61)
  br label %63

63:                                               ; preds = %52, %1
  %64 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %48
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ar71xx_device_flush_ddr(i32) #1

declare dso_local i32 @ATH_READ_REG(i64) #1

declare dso_local i64 @CK_SLIST_EMPTY(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @intr_event_handle(%struct.intr_event*, i32*) #1

declare dso_local i32 @mips_intrcnt_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
