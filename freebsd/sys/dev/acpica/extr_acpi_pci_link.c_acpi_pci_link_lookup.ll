; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32 }
%struct.acpi_pci_link_softc = type { i32, %struct.link* }

@pci_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.link* (i32, i32)* @acpi_pci_link_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.link* @acpi_pci_link_lookup(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_pci_link_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @pci_link, align 4
  %9 = call i32 @ACPI_SERIAL_ASSERT(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.acpi_pci_link_softc* @device_get_softc(i32 %10)
  store %struct.acpi_pci_link_softc* %11, %struct.acpi_pci_link_softc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %37, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %6, align 8
  %15 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %19, i32 0, i32 1
  %21 = load %struct.link*, %struct.link** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.link, %struct.link* %21, i64 %23
  %25 = getelementptr inbounds %struct.link, %struct.link* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %30, i32 0, i32 1
  %32 = load %struct.link*, %struct.link** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.link, %struct.link* %32, i64 %34
  store %struct.link* %35, %struct.link** %3, align 8
  br label %41

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %12

40:                                               ; preds = %12
  store %struct.link* null, %struct.link** %3, align 8
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.link*, %struct.link** %3, align 8
  ret %struct.link* %42
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local %struct.acpi_pci_link_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
