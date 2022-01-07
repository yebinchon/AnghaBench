; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_pci.c_ar724x_pci_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_pci.c_ar724x_pci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_pci_softc = type { i32*, %struct.intr_event** }
%struct.intr_event = type { i32 }

@AR724X_PCI_INTR_STATUS = common dso_local global i32 0, align 4
@AR724X_PCI_INTR_MASK = common dso_local global i32 0, align 4
@AR724X_PCI_INTR_DEV0 = common dso_local global i32 0, align 4
@AR71XX_PCI_IRQ_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Stray IRQ %d\0A\00", align 1
@FILTER_STRAY = common dso_local global i32 0, align 4
@AR71XX_CPU_DDR_FLUSH_PCIE = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ar724x_pci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar724x_pci_intr(i8* %0) #0 {
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
  %11 = load i32, i32* @AR724X_PCI_INTR_STATUS, align 4
  %12 = call i32 @ATH_READ_REG(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @AR724X_PCI_INTR_MASK, align 4
  %14 = call i32 @ATH_READ_REG(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @AR724X_PCI_INTR_DEV0, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %1
  %23 = load i32, i32* @AR71XX_PCI_IRQ_START, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %24, i32 0, i32 1
  %26 = load %struct.intr_event**, %struct.intr_event*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %26, i64 %28
  %30 = load %struct.intr_event*, %struct.intr_event** %29, align 8
  store %struct.intr_event* %30, %struct.intr_event** %5, align 8
  %31 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %32 = icmp ne %struct.intr_event* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %35 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %34, i32 0, i32 0
  %36 = call i64 @CK_SLIST_EMPTY(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %22
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %33
  %43 = load i32, i32* @AR71XX_CPU_DDR_FLUSH_PCIE, align 4
  %44 = call i32 @ar71xx_device_flush_ddr(i32 %43)
  %45 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %46 = call i32 @intr_event_handle(%struct.intr_event* %45, i32* null)
  %47 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mips_intrcnt_inc(i32 %53)
  br label %55

55:                                               ; preds = %42, %1
  %56 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %38
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @ATH_READ_REG(i32) #1

declare dso_local i64 @CK_SLIST_EMPTY(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ar71xx_device_flush_ddr(i32) #1

declare dso_local i32 @intr_event_handle(%struct.intr_event*, i32*) #1

declare dso_local i32 @mips_intrcnt_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
