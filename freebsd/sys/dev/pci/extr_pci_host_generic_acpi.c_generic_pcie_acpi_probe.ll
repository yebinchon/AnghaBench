; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_generic_pcie_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_generic_pcie_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pcib\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ACPI_PCI_ROOT_BRIDGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Generic PCI host controller\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @generic_pcie_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_pcie_acpi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i64 @acpi_disabled(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32* @acpi_get_handle(i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @AcpiGetObjectInfo(i32* %14, %struct.TYPE_4__** %4)
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %9, %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ACPI_PCI_ROOT_BRIDGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = call i32 @AcpiOsFree(%struct.TYPE_4__* %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %20
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_set_desc(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %32, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i32* @acpi_get_handle(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiGetObjectInfo(i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_4__*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
