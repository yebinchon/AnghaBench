; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_VENDOR_INVERTEX = common dso_local global i64 0, align 8
@PCI_PRODUCT_INVERTEX_AEON = common dso_local global i64 0, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@PCI_VENDOR_HIFN = common dso_local global i64 0, align 8
@PCI_PRODUCT_HIFN_7751 = common dso_local global i64 0, align 8
@PCI_PRODUCT_HIFN_7951 = common dso_local global i64 0, align 8
@PCI_PRODUCT_HIFN_7955 = common dso_local global i64 0, align 8
@PCI_PRODUCT_HIFN_7956 = common dso_local global i64 0, align 8
@PCI_PRODUCT_HIFN_7811 = common dso_local global i64 0, align 8
@PCI_VENDOR_NETSEC = common dso_local global i64 0, align 8
@PCI_PRODUCT_NETSEC_7751 = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hifn_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pci_get_vendor(i32 %4)
  %6 = load i64, i64* @PCI_VENDOR_INVERTEX, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_device(i32 %9)
  %11 = load i64, i64* @PCI_PRODUCT_INVERTEX_AEON, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %8, %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @pci_get_vendor(i32 %16)
  %18 = load i64, i64* @PCI_VENDOR_HIFN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @pci_get_device(i32 %21)
  %23 = load i64, i64* @PCI_PRODUCT_HIFN_7751, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @pci_get_device(i32 %26)
  %28 = load i64, i64* @PCI_PRODUCT_HIFN_7951, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @pci_get_device(i32 %31)
  %33 = load i64, i64* @PCI_PRODUCT_HIFN_7955, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @pci_get_device(i32 %36)
  %38 = load i64, i64* @PCI_PRODUCT_HIFN_7956, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @pci_get_device(i32 %41)
  %43 = load i64, i64* @PCI_PRODUCT_HIFN_7811, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %35, %30, %25, %20
  %46 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %46, i32* %2, align 4
  br label %61

47:                                               ; preds = %40, %15
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @pci_get_vendor(i32 %48)
  %50 = load i64, i64* @PCI_VENDOR_NETSEC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @pci_get_device(i32 %53)
  %55 = load i64, i64* @PCI_PRODUCT_NETSEC_7751, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %52, %47
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %57, %45, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
