; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_generic_pcie_acpi_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_generic_pcie_acpi_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_acpi_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@PCIB_IVAR_BUS = common dso_local global i32 0, align 4
@PCIB_IVAR_DOMAIN = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"ERROR: Unknown index %d.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @generic_pcie_acpi_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_pcie_acpi_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.generic_pcie_acpi_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.generic_pcie_acpi_softc* @device_get_softc(i32 %11)
  store %struct.generic_pcie_acpi_softc* %12, %struct.generic_pcie_acpi_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PCIB_IVAR_BUS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %10, align 8
  %18 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %9, align 8
  store i64 %20, i64* %21, align 8
  store i32 0, i32* %5, align 4
  br label %41

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PCIB_IVAR_DOMAIN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %10, align 8
  %28 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %9, align 8
  store i64 %30, i64* %31, align 8
  store i32 0, i32* %5, align 4
  br label %41

32:                                               ; preds = %22
  %33 = load i64, i64* @bootverbose, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %26, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.generic_pcie_acpi_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
