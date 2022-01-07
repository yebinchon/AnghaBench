; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_generic_pcie_map_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_generic_pcie_map_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_acpi_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_ID_RID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*)* @generic_pcie_map_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_pcie_map_id(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.generic_pcie_acpi_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.generic_pcie_acpi_softc* @device_get_softc(i32 %13)
  store %struct.generic_pcie_acpi_softc* %14, %struct.generic_pcie_acpi_softc** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PCI_ID_RID, align 4
  %18 = call i32 @pcib_get_id(i32 %15, i32 %16, i32 %17, i64* %9)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %8, align 8
  %25 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @acpi_iort_map_pci_msi(i32 %27, i64 %28, i32* %10, i32* %11)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  br label %39

36:                                               ; preds = %23
  %37 = load i64, i64* %9, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %32
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.generic_pcie_acpi_softc* @device_get_softc(i32) #1

declare dso_local i32 @pcib_get_id(i32, i32, i32, i64*) #1

declare dso_local i32 @acpi_iort_map_pci_msi(i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
