; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_enable_pci_clocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_enable_pci_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHNDB_PCI_GPIO_IN = common dso_local global i32 0, align 4
@BHNDB_PCI_GPIO_XTAL_ON = common dso_local global i32 0, align 4
@BHNDB_PCI_GPIO_OUT = common dso_local global i32 0, align 4
@BHNDB_PCI_GPIO_OUTEN = common dso_local global i32 0, align 4
@BHNDB_PCI_GPIO_PLL_OFF = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIM_STATUS_STABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhndb_enable_pci_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_enable_pci_clocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @bhndb_is_pcie_attached(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @BHNDB_PCI_GPIO_IN, align 4
  %19 = call i32 @pci_read_config(i32 %17, i32 %18, i32 4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BHNDB_PCI_GPIO_XTAL_ON, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %70

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BHNDB_PCI_GPIO_OUT, align 4
  %28 = call i32 @pci_read_config(i32 %26, i32 %27, i32 4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BHNDB_PCI_GPIO_OUTEN, align 4
  %31 = call i32 @pci_read_config(i32 %29, i32 %30, i32 4)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @BHNDB_PCI_GPIO_PLL_OFF, align 4
  %33 = load i32, i32* @BHNDB_PCI_GPIO_XTAL_ON, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @BHNDB_PCI_GPIO_OUT, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @pci_write_config(i32 %41, i32 %42, i32 %43, i32 4)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @BHNDB_PCI_GPIO_OUTEN, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @pci_write_config(i32 %45, i32 %46, i32 %47, i32 4)
  %49 = call i32 @DELAY(i32 1000)
  %50 = load i32, i32* @BHNDB_PCI_GPIO_PLL_OFF, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @BHNDB_PCI_GPIO_OUT, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @pci_write_config(i32 %54, i32 %55, i32 %56, i32 4)
  %58 = call i32 @DELAY(i32 5000)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @PCIR_STATUS, align 4
  %61 = call i32 @pci_read_config(i32 %59, i32 %60, i32 2)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @PCIM_STATUS_STABORT, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PCIR_STATUS, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @pci_write_config(i32 %66, i32 %67, i32 %68, i32 2)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %25, %24, %15
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @bhndb_is_pcie_attached(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
