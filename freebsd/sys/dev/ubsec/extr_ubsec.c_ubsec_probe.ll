; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_VENDOR_SUN = common dso_local global i64 0, align 8
@PCI_PRODUCT_SUN_5821 = common dso_local global i64 0, align 8
@PCI_PRODUCT_SUN_SCA1K = common dso_local global i64 0, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@PCI_VENDOR_BLUESTEEL = common dso_local global i64 0, align 8
@PCI_PRODUCT_BLUESTEEL_5501 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BLUESTEEL_5601 = common dso_local global i64 0, align 8
@PCI_VENDOR_BROADCOM = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5801 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5802 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5805 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5820 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5821 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5822 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5823 = common dso_local global i64 0, align 8
@PCI_PRODUCT_BROADCOM_5825 = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ubsec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @pci_get_vendor(i32 %4)
  %6 = load i64, i64* @PCI_VENDOR_SUN, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_device(i32 %9)
  %11 = load i64, i64* @PCI_PRODUCT_SUN_5821, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @pci_get_device(i32 %14)
  %16 = load i64, i64* @PCI_PRODUCT_SUN_SCA1K, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %8
  %19 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %13, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @pci_get_vendor(i32 %21)
  %23 = load i64, i64* @PCI_VENDOR_BLUESTEEL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @pci_get_device(i32 %26)
  %28 = load i64, i64* @PCI_PRODUCT_BLUESTEEL_5501, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @pci_get_device(i32 %31)
  %33 = load i64, i64* @PCI_PRODUCT_BLUESTEEL_5601, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %36, i32* %2, align 4
  br label %86

37:                                               ; preds = %30, %20
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @pci_get_vendor(i32 %38)
  %40 = load i64, i64* @PCI_VENDOR_BROADCOM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @pci_get_device(i32 %43)
  %45 = load i64, i64* @PCI_PRODUCT_BROADCOM_5801, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %82, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @pci_get_device(i32 %48)
  %50 = load i64, i64* @PCI_PRODUCT_BROADCOM_5802, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %82, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @pci_get_device(i32 %53)
  %55 = load i64, i64* @PCI_PRODUCT_BROADCOM_5805, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %82, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @pci_get_device(i32 %58)
  %60 = load i64, i64* @PCI_PRODUCT_BROADCOM_5820, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %82, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @pci_get_device(i32 %63)
  %65 = load i64, i64* @PCI_PRODUCT_BROADCOM_5821, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @pci_get_device(i32 %68)
  %70 = load i64, i64* @PCI_PRODUCT_BROADCOM_5822, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = call i64 @pci_get_device(i32 %73)
  %75 = load i64, i64* @PCI_PRODUCT_BROADCOM_5823, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = call i64 @pci_get_device(i32 %78)
  %80 = load i64, i64* @PCI_PRODUCT_BROADCOM_5825, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77, %72, %67, %62, %57, %52, %47, %42
  %83 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %77, %37
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %82, %35, %18
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
