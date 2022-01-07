; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_disable_pci_clocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_disable_pci_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHNDB_PCI_GPIO_OUT = common dso_local global i32 0, align 4
@BHNDB_PCI_GPIO_OUTEN = common dso_local global i32 0, align 4
@BHNDB_PCI_GPIO_XTAL_ON = common dso_local global i32 0, align 4
@BHNDB_PCI_GPIO_PLL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhndb_disable_pci_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_disable_pci_clocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @bhndb_is_pcie_attached(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BHNDB_PCI_GPIO_OUT, align 4
  %16 = call i32 @pci_read_config(i32 %14, i32 %15, i32 4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @BHNDB_PCI_GPIO_OUTEN, align 4
  %19 = call i32 @pci_read_config(i32 %17, i32 %18, i32 4)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @BHNDB_PCI_GPIO_XTAL_ON, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @BHNDB_PCI_GPIO_PLL_OFF, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @BHNDB_PCI_GPIO_OUT, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pci_write_config(i32 %27, i32 %28, i32 %29, i32 4)
  %31 = load i32, i32* @BHNDB_PCI_GPIO_PLL_OFF, align 4
  %32 = load i32, i32* @BHNDB_PCI_GPIO_XTAL_ON, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @BHNDB_PCI_GPIO_OUTEN, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @pci_write_config(i32 %36, i32 %37, i32 %38, i32 4)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %13, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @bhndb_is_pcie_attached(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
