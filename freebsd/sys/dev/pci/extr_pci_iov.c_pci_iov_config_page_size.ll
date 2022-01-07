; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_config_page_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_config_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { i32 }

@PCIR_SRIOV_PAGE_CAP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PCI_SRIOV_BASE_PAGE_SHIFT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@PCIR_SRIOV_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinfo*)* @pci_iov_config_page_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_config_page_size(%struct.pci_devinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_devinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_devinfo* %0, %struct.pci_devinfo** %3, align 8
  %6 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %7 = load i32, i32* @PCIR_SRIOV_PAGE_CAP, align 4
  %8 = call i32 @IOV_READ(%struct.pci_devinfo* %6, i32 %7, i32 4)
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* @PAGE_SHIFT, align 8
  %10 = load i64, i64* @PCI_SRIOV_BASE_PAGE_SHIFT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = load i64, i64* @PCI_SRIOV_BASE_PAGE_SHIFT, align 8
  %16 = sub nsw i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = shl i32 1, %17
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %19
  %27 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %28 = load i32, i32* @PCIR_SRIOV_PAGE_SIZE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @IOV_WRITE(%struct.pci_devinfo* %27, i32 %28, i32 %29, i32 4)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %24
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @IOV_READ(%struct.pci_devinfo*, i32, i32) #1

declare dso_local i32 @IOV_WRITE(%struct.pci_devinfo*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
