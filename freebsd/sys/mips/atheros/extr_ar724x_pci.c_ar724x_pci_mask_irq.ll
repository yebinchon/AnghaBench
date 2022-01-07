; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_pci.c_ar724x_pci_mask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_pci.c_ar724x_pci_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR71XX_PCI_IRQ_START = common dso_local global i32 0, align 4
@AR724X_PCI_INTR_MASK = common dso_local global i32 0, align 4
@AR724X_PCI_INTR_DEV0 = common dso_local global i32 0, align 4
@AR724X_PCI_INTR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ar724x_pci_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar724x_pci_mask_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AR71XX_PCI_IRQ_START, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %27

11:                                               ; preds = %1
  %12 = load i32, i32* @AR724X_PCI_INTR_MASK, align 4
  %13 = call i32 @ATH_READ_REG(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @AR724X_PCI_INTR_MASK, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AR724X_PCI_INTR_DEV0, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @ATH_WRITE_REG(i32 %14, i32 %18)
  %20 = load i32, i32* @AR724X_PCI_INTR_STATUS, align 4
  %21 = call i32 @ATH_READ_REG(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @AR724X_PCI_INTR_STATUS, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @AR724X_PCI_INTR_DEV0, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ATH_WRITE_REG(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @ATH_READ_REG(i32) #1

declare dso_local i32 @ATH_WRITE_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
