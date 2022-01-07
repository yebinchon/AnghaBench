; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octopci_softc = type { i32, i64, i64, %struct.TYPE_3__, %struct.TYPE_3__, i8*, i8*, i64, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@OCTEON_FEATURE_PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to put PCIe bus in host mode.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cavium Octeon PCIe I/O Ports\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Cavium Octeon PCIe Memory\00", align 1
@CVMX_OCT_DID_PCI = common dso_local global i32 0, align 4
@CVMX_OCT_SUBDID_PCI_IO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Cavium Octeon PCI I/O Ports\00", align 1
@CVMX_OCT_SUBDID_PCI_MEM1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Cavium Octeon PCI Memory\00", align 1
@RMAN_ARRAY = common dso_local global i8* null, align 8
@CVMX_OCT_PCI_IO_BASE = common dso_local global i64 0, align 8
@CVMX_OCT_PCI_IO_SIZE = common dso_local global i64 0, align 8
@CVMX_OCT_PCI_MEM1_BASE = common dso_local global i64 0, align 8
@CVMX_OCT_PCI_MEM1_SIZE = common dso_local global i64 0, align 8
@PCIR_SUBBUS_1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octopci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octopci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.octopci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.octopci_softc* @device_get_softc(i32 %7)
  store %struct.octopci_softc* %8, %struct.octopci_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @OCTEON_FEATURE_PCIE, align 4
  %13 = call i64 @octeon_has_feature(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @device_get_unit(i32 %16)
  %18 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %18, i32 0, i32 7
  store i64 %17, i64* %19, align 8
  %20 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @cvmx_pcie_rc_initialize(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %153

30:                                               ; preds = %15
  %31 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %32 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %34 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @cvmx_pcie_get_io_base_address(i64 %35)
  %37 = call i8* @CVMX_ADD_IO_SEG(i32 %36)
  %38 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %39 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %41 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %44 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @cvmx_pcie_get_mem_base_address(i64 %45)
  %47 = call i8* @CVMX_ADD_IO_SEG(i32 %46)
  %48 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %49 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %51 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %52, align 8
  br label %78

53:                                               ; preds = %1
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @octopci_init_pci(i32 %54)
  %56 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %57 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %59 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i32, i32* @CVMX_OCT_DID_PCI, align 4
  %61 = load i32, i32* @CVMX_OCT_SUBDID_PCI_IO, align 4
  %62 = call i32 @CVMX_FULL_DID(i32 %60, i32 %61)
  %63 = call i8* @CVMX_ADDR_DID(i32 %62)
  %64 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %65 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %67 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %68, align 8
  %69 = load i32, i32* @CVMX_OCT_DID_PCI, align 4
  %70 = load i32, i32* @CVMX_OCT_SUBDID_PCI_MEM1, align 4
  %71 = call i32 @CVMX_FULL_DID(i32 %69, i32 %70)
  %72 = call i8* @CVMX_ADDR_DID(i32 %71)
  %73 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %74 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %76 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %77, align 8
  br label %78

78:                                               ; preds = %53, %30
  %79 = load i8*, i8** @RMAN_ARRAY, align 8
  %80 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %81 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %84 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %83, i32 0, i32 4
  %85 = call i32 @rman_init(%struct.TYPE_3__* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %153

90:                                               ; preds = %78
  %91 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %92 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %91, i32 0, i32 4
  %93 = load i64, i64* @CVMX_OCT_PCI_IO_BASE, align 8
  %94 = load i64, i64* @CVMX_OCT_PCI_IO_BASE, align 8
  %95 = load i64, i64* @CVMX_OCT_PCI_IO_SIZE, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @rman_manage_region(%struct.TYPE_3__* %92, i64 %93, i64 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %153

102:                                              ; preds = %90
  %103 = load i8*, i8** @RMAN_ARRAY, align 8
  %104 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %105 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %108 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %107, i32 0, i32 3
  %109 = call i32 @rman_init(%struct.TYPE_3__* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %153

114:                                              ; preds = %102
  %115 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %116 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %115, i32 0, i32 3
  %117 = load i64, i64* @CVMX_OCT_PCI_MEM1_BASE, align 8
  %118 = load i64, i64* @CVMX_OCT_PCI_MEM1_BASE, align 8
  %119 = load i64, i64* @CVMX_OCT_PCI_MEM1_SIZE, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @rman_manage_region(%struct.TYPE_3__* %116, i64 %117, i64 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %153

126:                                              ; preds = %114
  %127 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %128 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %130 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %133 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %136 = call i32 @octopci_write_config(i32 %131, i32 %134, i32 0, i32 0, i32 %135, i32 255, i32 1)
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %139 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @octopci_init_bus(i32 %137, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load %struct.octopci_softc*, %struct.octopci_softc** %4, align 8
  %144 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @octopci_write_config(i32 %142, i32 %145, i32 0, i32 0, i32 %146, i32 %147, i32 1)
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @device_add_child(i32 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @bus_generic_attach(i32 %151)
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %126, %124, %112, %100, %88, %26
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.octopci_softc* @device_get_softc(i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @cvmx_pcie_rc_initialize(i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @CVMX_ADD_IO_SEG(i32) #1

declare dso_local i32 @cvmx_pcie_get_io_base_address(i64) #1

declare dso_local i32 @cvmx_pcie_get_mem_base_address(i64) #1

declare dso_local i32 @octopci_init_pci(i32) #1

declare dso_local i8* @CVMX_ADDR_DID(i32) #1

declare dso_local i32 @CVMX_FULL_DID(i32, i32) #1

declare dso_local i32 @rman_init(%struct.TYPE_3__*) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @octopci_write_config(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @octopci_init_bus(i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
