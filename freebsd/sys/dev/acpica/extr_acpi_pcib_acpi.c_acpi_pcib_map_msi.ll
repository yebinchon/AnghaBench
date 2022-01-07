; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pcib_acpi.c_acpi_pcib_map_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pcib_acpi.c_acpi_pcib_map_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hpcib_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*)* @acpi_pcib_map_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pcib_map_msi(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.acpi_hpcib_softc*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @device_get_parent(i32* %16)
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = call i32* @device_get_parent(i32* %18)
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @PCIB_MAP_MSI(i32* %19, i32* %20, i32 %21, i32* %22, i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %6, align 4
  br label %58

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = call %struct.acpi_hpcib_softc* @device_get_softc(i32* %30)
  store %struct.acpi_hpcib_softc* %31, %struct.acpi_hpcib_softc** %12, align 8
  %32 = load %struct.acpi_hpcib_softc*, %struct.acpi_hpcib_softc** %12, align 8
  %33 = getelementptr inbounds %struct.acpi_hpcib_softc, %struct.acpi_hpcib_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %58

37:                                               ; preds = %29
  %38 = load %struct.acpi_hpcib_softc*, %struct.acpi_hpcib_softc** %12, align 8
  %39 = getelementptr inbounds %struct.acpi_hpcib_softc, %struct.acpi_hpcib_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.acpi_hpcib_softc*, %struct.acpi_hpcib_softc** %12, align 8
  %42 = getelementptr inbounds %struct.acpi_hpcib_softc, %struct.acpi_hpcib_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ACPI_ADR_PCI_SLOT(i32 %43)
  %45 = load %struct.acpi_hpcib_softc*, %struct.acpi_hpcib_softc** %12, align 8
  %46 = getelementptr inbounds %struct.acpi_hpcib_softc, %struct.acpi_hpcib_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ACPI_ADR_PCI_FUNC(i32 %47)
  %49 = call i32* @pci_find_dbsf(i32 %40, i32 0, i32 %44, i32 %48)
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %37
  %53 = load i32*, i32** %14, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pci_ht_map_msi(i32* %53, i32 %55)
  br label %57

57:                                               ; preds = %52, %37
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %36, %27
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local i32 @PCIB_MAP_MSI(i32*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.acpi_hpcib_softc* @device_get_softc(i32*) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i32 @ACPI_ADR_PCI_SLOT(i32) #1

declare dso_local i32 @ACPI_ADR_PCI_FUNC(i32) #1

declare dso_local i32 @pci_ht_map_msi(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
