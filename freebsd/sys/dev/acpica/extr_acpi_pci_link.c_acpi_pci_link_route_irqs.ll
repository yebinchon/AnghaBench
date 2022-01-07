; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_route_irqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_route_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_link_softc = type { i32, %struct.link*, i64 }
%struct.link = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }

@pci_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to route IRQs: %s\0A\00", align 1
@ACPI_RESOURCE_TYPE_END_TAG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@pci_link_interrupt_weights = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_pci_link_route_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_link_route_irqs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_pci_link_softc*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.link*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @pci_link, align 4
  %12 = call i32 @ACPI_SERIAL_ASSERT(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.acpi_pci_link_softc* @device_get_softc(i32 %13)
  store %struct.acpi_pci_link_softc* %14, %struct.acpi_pci_link_softc** %4, align 8
  %15 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %21 = call i32 @acpi_pci_link_srs_from_links(%struct.acpi_pci_link_softc* %20, %struct.TYPE_10__* %7)
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %24 = call i32 @acpi_pci_link_srs_from_crs(%struct.acpi_pci_link_softc* %23, %struct.TYPE_10__* %7)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @acpi_get_handle(i32 %26)
  %28 = call i32 @AcpiSetCurrentResources(i32 %27, %struct.TYPE_10__* %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @AcpiFormatException(i32 %34)
  %36 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @AcpiOsFree(i64 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %120

41:                                               ; preds = %25
  %42 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %42, i32 0, i32 1
  %44 = load %struct.link*, %struct.link** %43, align 8
  store %struct.link* %44, %struct.link** %9, align 8
  store i32 0, i32* %10, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = bitcast i8* %54 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %6, align 8
  br label %56

56:                                               ; preds = %114, %41
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ACPI_RESOURCE_TYPE_END_TAG, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %115

63:                                               ; preds = %56
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %107 [
    i32 128, label %67
    i32 129, label %67
  ]

67:                                               ; preds = %63, %63
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %70 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @MPASS(i32 %73)
  %75 = load %struct.link*, %struct.link** %9, align 8
  %76 = getelementptr inbounds %struct.link, %struct.link* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %67
  %80 = load %struct.link*, %struct.link** %9, align 8
  %81 = getelementptr inbounds %struct.link, %struct.link* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @PCI_INTERRUPT_VALID(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load i32, i32* @TRUE, align 4
  %87 = load %struct.link*, %struct.link** %9, align 8
  %88 = getelementptr inbounds %struct.link, %struct.link* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = call i32 @acpi_config_intr(i32 %89, %struct.TYPE_9__* %90)
  %92 = load %struct.link*, %struct.link** %9, align 8
  %93 = getelementptr inbounds %struct.link, %struct.link* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** @pci_link_interrupt_weights, align 8
  %96 = load %struct.link*, %struct.link** %9, align 8
  %97 = getelementptr inbounds %struct.link, %struct.link* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %94
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %85, %79, %67
  %103 = load %struct.link*, %struct.link** %9, align 8
  %104 = getelementptr inbounds %struct.link, %struct.link* %103, i32 1
  store %struct.link* %104, %struct.link** %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %63, %102
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = call %struct.TYPE_9__* @ACPI_NEXT_RESOURCE(%struct.TYPE_9__* %108)
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %5, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = icmp uge %struct.TYPE_9__* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %115

114:                                              ; preds = %107
  br label %56

115:                                              ; preds = %113, %62
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @AcpiOsFree(i64 %117)
  %119 = load i32, i32* @AE_OK, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %115, %32
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local %struct.acpi_pci_link_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_pci_link_srs_from_links(%struct.acpi_pci_link_softc*, %struct.TYPE_10__*) #1

declare dso_local i32 @acpi_pci_link_srs_from_crs(%struct.acpi_pci_link_softc*, %struct.TYPE_10__*) #1

declare dso_local i32 @AcpiSetCurrentResources(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiOsFree(i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @PCI_INTERRUPT_VALID(i64) #1

declare dso_local i32 @acpi_config_intr(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @ACPI_NEXT_RESOURCE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
