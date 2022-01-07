; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_enable_msi_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_enable_msi_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_msi }
%struct.pcicfg_msi = type { i32, i64 }

@PCIR_MSI_ADDR = common dso_local global i64 0, align 8
@PCIM_MSICTRL_64BIT = common dso_local global i32 0, align 4
@PCIR_MSI_ADDR_HIGH = common dso_local global i64 0, align 8
@PCIR_MSI_DATA_64BIT = common dso_local global i64 0, align 8
@PCIR_MSI_DATA = common dso_local global i64 0, align 8
@PCIM_MSICTRL_MSI_ENABLE = common dso_local global i32 0, align 4
@PCIR_MSI_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_enable_msi_method(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_devinfo*, align 8
  %10 = alloca %struct.pcicfg_msi*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.pci_devinfo* @device_get_ivars(i32 %11)
  store %struct.pci_devinfo* %12, %struct.pci_devinfo** %9, align 8
  %13 = load %struct.pci_devinfo*, %struct.pci_devinfo** %9, align 8
  %14 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.pcicfg_msi* %15, %struct.pcicfg_msi** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %10, align 8
  %18 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCIR_MSI_ADDR, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @pci_write_config(i32 %16, i64 %21, i32 %22, i32 4)
  %24 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %10, align 8
  %25 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PCIM_MSICTRL_64BIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %10, align 8
  %33 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCIR_MSI_ADDR_HIGH, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 32
  %39 = call i32 @pci_write_config(i32 %31, i64 %36, i32 %38, i32 4)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %10, align 8
  %42 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCIR_MSI_DATA_64BIT, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @pci_write_config(i32 %40, i64 %45, i32 %46, i32 2)
  br label %57

48:                                               ; preds = %4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %10, align 8
  %51 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCIR_MSI_DATA, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pci_write_config(i32 %49, i64 %54, i32 %55, i32 2)
  br label %57

57:                                               ; preds = %48, %30
  %58 = load i32, i32* @PCIM_MSICTRL_MSI_ENABLE, align 4
  %59 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %10, align 8
  %60 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %10, align 8
  %65 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PCIR_MSI_CTRL, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %10, align 8
  %70 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pci_write_config(i32 %63, i64 %68, i32 %71, i32 2)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @pci_ht_map_msi(i32 %73, i32 %74)
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @pci_ht_map_msi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
