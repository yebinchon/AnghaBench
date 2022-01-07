; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_mips_pcib_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_pci.c_mips_pcib_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_VENDOR_NETLOGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mips_pcib_route_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_pcib_route_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i32 255, i32* %4, align 4
  br label %42

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @pci_get_bus(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @pci_get_vendor(i32 %21)
  %23 = load i64, i64* @PCI_VENDOR_NETLOGIC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pci_get_function(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_get_slot(i32 %28)
  %30 = srem i32 %29, 8
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @PIC_PCIE_IRQ(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %25
  store i32 255, i32* %4, align 4
  br label %42

37:                                               ; preds = %20, %16
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @xlp_pcie_link(i32 %38, i32 %39)
  %41 = call i32 @PIC_PCIE_IRQ(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %36, %33, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @pci_get_bus(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @PIC_PCIE_IRQ(i32) #1

declare dso_local i32 @xlp_pcie_link(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
