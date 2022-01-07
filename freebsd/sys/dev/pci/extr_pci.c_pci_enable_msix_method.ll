; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_enable_msix_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_enable_msix_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_msix }
%struct.pcicfg_msix = type { i32, i64 }

@pci_msix_rewrite_table = common dso_local global i64 0, align 8
@PCIR_MSIX_CTRL = common dso_local global i64 0, align 8
@PCIM_MSIXCTRL_MSIX_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_enable_msix_method(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_devinfo*, align 8
  %12 = alloca %struct.pcicfg_msix*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* @pci_msix_rewrite_table, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.pci_devinfo* @device_get_ivars(i32 %16)
  store %struct.pci_devinfo* %17, %struct.pci_devinfo** %11, align 8
  %18 = load %struct.pci_devinfo*, %struct.pci_devinfo** %11, align 8
  %19 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.pcicfg_msix* %20, %struct.pcicfg_msix** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %12, align 8
  %23 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCIR_MSIX_CTRL, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %12, align 8
  %28 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PCIM_MSIXCTRL_MSIX_ENABLE, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @pci_write_config(i32 %21, i64 %26, i32 %32, i32 2)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pci_resume_msix(i32 %34)
  br label %42

36:                                               ; preds = %5
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @pci_write_msix_entry(i32 %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %15
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @pci_ht_map_msi(i32 %43, i32 %44)
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @pci_resume_msix(i32) #1

declare dso_local i32 @pci_write_msix_entry(i32, i32, i32, i32) #1

declare dso_local i32 @pci_ht_map_msi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
