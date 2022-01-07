; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_pci_bus.c_xen_pci_disable_msi_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_pci_bus.c_xen_pci_disable_msi_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_msi }
%struct.pcicfg_msi = type { i32, i64 }

@PCIM_MSICTRL_MSI_ENABLE = common dso_local global i32 0, align 4
@PCIR_MSI_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_pci_disable_msi_method(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca %struct.pcicfg_msi*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.pci_devinfo* @device_get_ivars(i32 %7)
  store %struct.pci_devinfo* %8, %struct.pci_devinfo** %5, align 8
  %9 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %10 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.pcicfg_msi* %11, %struct.pcicfg_msi** %6, align 8
  %12 = load i32, i32* @PCIM_MSICTRL_MSI_ENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %6, align 8
  %15 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %6, align 8
  %20 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCIR_MSI_CTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %6, align 8
  %25 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pci_write_config(i32 %18, i64 %23, i32 %26, i32 2)
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
