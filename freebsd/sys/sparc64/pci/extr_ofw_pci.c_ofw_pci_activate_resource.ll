; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pci.c_ofw_pci_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pci.c_ofw_pci_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ofw_pci_softc = type { i64*, %struct.bus_space_tag* }
%struct.bus_space_tag = type { i32 }

@PCI_MEMORY_BUS_SPACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OFW_PCI_CS_MEM32 = common dso_local global i64 0, align 8
@OFW_PCI_CS_IO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_pci_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.ofw_pci_softc*, align 8
  %13 = alloca %struct.bus_space_tag*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ofw_pci_softc* @device_get_softc(i32 %14)
  store %struct.ofw_pci_softc* %15, %struct.ofw_pci_softc** %12, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %64 [
    i32 129, label %17
    i32 128, label %24
    i32 130, label %47
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.resource*, %struct.resource** %11, align 8
  %23 = call i32 @bus_generic_activate_resource(i32 %18, i32 %19, i32 %20, i32 %21, %struct.resource* %22)
  store i32 %23, i32* %6, align 4
  br label %67

24:                                               ; preds = %5
  %25 = load %struct.resource*, %struct.resource** %11, align 8
  %26 = load i32, i32* @PCI_MEMORY_BUS_SPACE, align 4
  %27 = call %struct.bus_space_tag* @sparc64_alloc_bus_tag(%struct.resource* %25, i32 %26)
  store %struct.bus_space_tag* %27, %struct.bus_space_tag** %13, align 8
  %28 = load %struct.bus_space_tag*, %struct.bus_space_tag** %13, align 8
  %29 = icmp eq %struct.bus_space_tag* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %6, align 4
  br label %67

32:                                               ; preds = %24
  %33 = load %struct.resource*, %struct.resource** %11, align 8
  %34 = load %struct.bus_space_tag*, %struct.bus_space_tag** %13, align 8
  %35 = call i32 @rman_set_bustag(%struct.resource* %33, %struct.bus_space_tag* %34)
  %36 = load %struct.resource*, %struct.resource** %11, align 8
  %37 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %12, align 8
  %38 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @OFW_PCI_CS_MEM32, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.resource*, %struct.resource** %11, align 8
  %44 = call i64 @rman_get_start(%struct.resource* %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @rman_set_bushandle(%struct.resource* %36, i64 %45)
  br label %64

47:                                               ; preds = %5
  %48 = load %struct.resource*, %struct.resource** %11, align 8
  %49 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %12, align 8
  %50 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %49, i32 0, i32 1
  %51 = load %struct.bus_space_tag*, %struct.bus_space_tag** %50, align 8
  %52 = call i32 @rman_set_bustag(%struct.resource* %48, %struct.bus_space_tag* %51)
  %53 = load %struct.resource*, %struct.resource** %11, align 8
  %54 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %12, align 8
  %55 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @OFW_PCI_CS_IO, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.resource*, %struct.resource** %11, align 8
  %61 = call i64 @rman_get_start(%struct.resource* %60)
  %62 = add nsw i64 %59, %61
  %63 = call i32 @rman_set_bushandle(%struct.resource* %53, i64 %62)
  br label %64

64:                                               ; preds = %5, %47, %32
  %65 = load %struct.resource*, %struct.resource** %11, align 8
  %66 = call i32 @rman_activate_resource(%struct.resource* %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %30, %17
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.ofw_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_activate_resource(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local %struct.bus_space_tag* @sparc64_alloc_bus_tag(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, %struct.bus_space_tag*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i64) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
