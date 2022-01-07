; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_pci.c_ar71xx_pci_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_pci.c_ar71xx_pci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_pci_softc = type { i32*, %struct.intr_event** }
%struct.intr_event = type { i32 }

@AR71XX_PCI_INTR_STATUS = common dso_local global i32 0, align 4
@AR71XX_PCI_INTR_MASK = common dso_local global i32 0, align 4
@AR71XX_PCI_IRQ_START = common dso_local global i32 0, align 4
@AR71XX_PCI_IRQ_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Stray IRQ %d\0A\00", align 1
@AR71XX_CPU_DDR_FLUSH_PCIE = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ar71xx_pci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_pci_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ar71xx_pci_softc*, align 8
  %4 = alloca %struct.intr_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ar71xx_pci_softc*
  store %struct.ar71xx_pci_softc* %9, %struct.ar71xx_pci_softc** %3, align 8
  %10 = load i32, i32* @AR71XX_PCI_INTR_STATUS, align 4
  %11 = call i32 @ATH_READ_REG(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @AR71XX_PCI_INTR_MASK, align 4
  %13 = call i32 @ATH_READ_REG(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @AR71XX_PCI_IRQ_START, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %64, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @AR71XX_PCI_IRQ_END, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  %29 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %29, i32 0, i32 1
  %31 = load %struct.intr_event**, %struct.intr_event*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %31, i64 %33
  %35 = load %struct.intr_event*, %struct.intr_event** %34, align 8
  store %struct.intr_event* %35, %struct.intr_event** %4, align 8
  %36 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %37 = icmp ne %struct.intr_event* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %40 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %39, i32 0, i32 0
  %41 = call i64 @CK_SLIST_EMPTY(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %28
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %43
  br label %64

50:                                               ; preds = %38
  %51 = load i32, i32* @AR71XX_CPU_DDR_FLUSH_PCIE, align 4
  %52 = call i32 @ar71xx_device_flush_ddr(i32 %51)
  %53 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %54 = call i32 @intr_event_handle(%struct.intr_event* %53, i32* null)
  %55 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mips_intrcnt_inc(i32 %61)
  br label %63

63:                                               ; preds = %50, %22
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %18

67:                                               ; preds = %18
  %68 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %68
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
