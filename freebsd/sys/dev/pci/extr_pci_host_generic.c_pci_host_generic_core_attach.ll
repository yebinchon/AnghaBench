; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_pci_host_generic_core_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_pci_host_generic_core_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_core_softc = type { %struct.TYPE_2__, %struct.TYPE_2__, i32*, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not map memory.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"PCIe Memory\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PCIe IO window\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"rman_init() failed. error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_host_generic_core_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pcie_core_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.generic_pcie_core_softc* @device_get_softc(i32 %7)
  store %struct.generic_pcie_core_softc* %8, %struct.generic_pcie_core_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %11 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @bus_get_dma_tag(i32 %12)
  %14 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %16 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %17 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %18 = load i32, i32* @BUS_SPACE_MAXSIZE, align 4
  %19 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %20 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @BUS_DMA_COHERENT, align 4
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %29 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %28, i32 0, i32 5
  %30 = call i32 @bus_dma_tag_create(i32 %13, i32 1, i32 0, i32 %14, i32 %15, i32* null, i32* null, i32 %16, i32 %17, i32 %18, i32 %27, i32* null, i32* null, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %99

35:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i32* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %6, i32 %38)
  %40 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %41 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %43 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %99

50:                                               ; preds = %35
  %51 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %52 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @rman_get_bustag(i32* %53)
  %55 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %56 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %58 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @rman_get_bushandle(i32* %59)
  %61 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %62 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** @RMAN_ARRAY, align 8
  %64 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %65 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  %67 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %68 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %69, align 8
  %70 = load i8*, i8** @RMAN_ARRAY, align 8
  %71 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %72 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %75 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %76, align 8
  %77 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %78 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %77, i32 0, i32 1
  %79 = call i32 @rman_init(%struct.TYPE_2__* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %50
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %99

87:                                               ; preds = %50
  %88 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %4, align 8
  %89 = getelementptr inbounds %struct.generic_pcie_core_softc, %struct.generic_pcie_core_softc* %88, i32 0, i32 0
  %90 = call i32 @rman_init(%struct.TYPE_2__* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %99

98:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %93, %82, %46, %33
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.generic_pcie_core_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_init(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
