; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_pci.c_qca955x_pci_mask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_pci.c_qca955x_pci_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_pci_irq = type { i64, %struct.ar71xx_pci_softc* }
%struct.ar71xx_pci_softc = type { i64 }

@AR71XX_PCI_IRQ_START = common dso_local global i64 0, align 8
@QCA955X_PCI_INTR_MASK = common dso_local global i64 0, align 8
@QCA955X_PCI_INTR_DEV0 = common dso_local global i32 0, align 4
@QCA955X_PCI_INTR_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qca955x_pci_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca955x_pci_mask_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar71xx_pci_irq*, align 8
  %5 = alloca %struct.ar71xx_pci_softc*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ar71xx_pci_irq*
  store %struct.ar71xx_pci_irq* %7, %struct.ar71xx_pci_irq** %4, align 8
  %8 = load %struct.ar71xx_pci_irq*, %struct.ar71xx_pci_irq** %4, align 8
  %9 = getelementptr inbounds %struct.ar71xx_pci_irq, %struct.ar71xx_pci_irq* %8, i32 0, i32 1
  %10 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %9, align 8
  store %struct.ar71xx_pci_softc* %10, %struct.ar71xx_pci_softc** %5, align 8
  %11 = load %struct.ar71xx_pci_irq*, %struct.ar71xx_pci_irq** %4, align 8
  %12 = getelementptr inbounds %struct.ar71xx_pci_irq, %struct.ar71xx_pci_irq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AR71XX_PCI_IRQ_START, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QCA955X_PCI_INTR_MASK, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ATH_READ_REG(i64 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %5, align 8
  %25 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QCA955X_PCI_INTR_MASK, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @QCA955X_PCI_INTR_DEV0, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @ATH_WRITE_REG(i64 %28, i32 %32)
  %34 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %5, align 8
  %35 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QCA955X_PCI_INTR_STATUS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @ATH_READ_REG(i64 %38)
  store i32 %39, i32* %3, align 4
  %40 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %5, align 8
  %41 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @QCA955X_PCI_INTR_STATUS, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @QCA955X_PCI_INTR_DEV0, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @ATH_WRITE_REG(i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @ATH_READ_REG(i64) #1

declare dso_local i32 @ATH_WRITE_REG(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
