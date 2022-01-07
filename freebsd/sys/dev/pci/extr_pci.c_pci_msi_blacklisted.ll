; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_msi_blacklisted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_msi_blacklisted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pci_honor_msi_blacklist = common dso_local global i32 0, align 4
@pcie_chipset = common dso_local global i64 0, align 8
@pcix_chipset = common dso_local global i64 0, align 8
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_NO = common dso_local global i64 0, align 8
@PCI_QUIRK_ENABLE_MSI_VM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pci_msi_blacklisted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_msi_blacklisted() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @pci_honor_msi_blacklist, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %38

6:                                                ; preds = %0
  %7 = load i64, i64* @pcie_chipset, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* @pcix_chipset, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* @vm_guest, align 8
  %14 = load i64, i64* @VM_GUEST_NO, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = call i32* @pci_find_bsf(i32 0, i32 0, i32 0)
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @pci_get_devid(i32* %21)
  %23 = load i32, i32* @PCI_QUIRK_ENABLE_MSI_VM, align 4
  %24 = call i32 @pci_has_quirk(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %1, align 4
  br label %38

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %12
  store i32 1, i32* %1, align 4
  br label %38

30:                                               ; preds = %9, %6
  %31 = call i32* @pci_find_bsf(i32 0, i32 0, i32 0)
  store i32* %31, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @pci_msi_device_blacklisted(i32* %35)
  store i32 %36, i32* %1, align 4
  br label %38

37:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %34, %29, %20, %5
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32* @pci_find_bsf(i32, i32, i32) #1

declare dso_local i32 @pci_has_quirk(i32, i32) #1

declare dso_local i32 @pci_get_devid(i32*) #1

declare dso_local i32 @pci_msi_device_blacklisted(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
