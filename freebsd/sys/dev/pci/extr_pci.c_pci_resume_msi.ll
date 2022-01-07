; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_resume_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_resume_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_msi }
%struct.pcicfg_msi = type { i32, i32, i32, i64 }

@PCIM_MSICTRL_MSI_ENABLE = common dso_local global i32 0, align 4
@PCIR_MSI_ADDR = common dso_local global i64 0, align 8
@PCIM_MSICTRL_64BIT = common dso_local global i32 0, align 4
@PCIR_MSI_ADDR_HIGH = common dso_local global i64 0, align 8
@PCIR_MSI_DATA_64BIT = common dso_local global i64 0, align 8
@PCIR_MSI_DATA = common dso_local global i64 0, align 8
@PCIR_MSI_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pci_resume_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_resume_msi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_devinfo*, align 8
  %4 = alloca %struct.pcicfg_msi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.pci_devinfo* @device_get_ivars(i32 %7)
  store %struct.pci_devinfo* %8, %struct.pci_devinfo** %3, align 8
  %9 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %10 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.pcicfg_msi* %11, %struct.pcicfg_msi** %4, align 8
  %12 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %13 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PCIM_MSICTRL_MSI_ENABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %1
  %19 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %20 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %23 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %27 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCIR_MSI_ADDR, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pci_write_config(i32 %25, i64 %30, i32 %31, i32 4)
  %33 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %34 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PCIM_MSICTRL_64BIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %18
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %42 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCIR_MSI_ADDR_HIGH, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 32
  %48 = call i32 @pci_write_config(i32 %40, i64 %45, i32 %47, i32 4)
  %49 = load i32, i32* %2, align 4
  %50 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %51 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCIR_MSI_DATA_64BIT, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @pci_write_config(i32 %49, i64 %54, i32 %55, i32 2)
  br label %66

57:                                               ; preds = %18
  %58 = load i32, i32* %2, align 4
  %59 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %60 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCIR_MSI_DATA, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @pci_write_config(i32 %58, i64 %63, i32 %64, i32 2)
  br label %66

66:                                               ; preds = %57, %39
  br label %67

67:                                               ; preds = %66, %1
  %68 = load i32, i32* %2, align 4
  %69 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %70 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCIR_MSI_CTRL, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.pcicfg_msi*, %struct.pcicfg_msi** %4, align 8
  %75 = getelementptr inbounds %struct.pcicfg_msi, %struct.pcicfg_msi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_write_config(i32 %68, i64 %73, i32 %76, i32 2)
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
