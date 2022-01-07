; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_pci.c_mpr_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_pci.c_mpr_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.mpr_ident = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"HBA is in Non Secure mode\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"HBA is in Configurable Secure mode\0A\00", align 1
@PCI_MAXMAPS_0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot allocate PCI registers\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot allocate parent DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpr_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpr_softc*, align 8
  %5 = alloca %struct.mpr_ident*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mpr_softc* @device_get_softc(i32 %8)
  store %struct.mpr_softc* %9, %struct.mpr_softc** %4, align 8
  %10 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %11 = call i32 @bzero(%struct.mpr_softc* %10, i32 40)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.mpr_ident* @mpr_find_ident(i32 %15)
  store %struct.mpr_ident* %16, %struct.mpr_ident** %5, align 8
  %17 = load %struct.mpr_ident*, %struct.mpr_ident** %5, align 8
  %18 = getelementptr inbounds %struct.mpr_ident, %struct.mpr_ident* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mpr_ident*, %struct.mpr_ident** %5, align 8
  %23 = getelementptr inbounds %struct.mpr_ident, %struct.mpr_ident* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %32 [
    i32 131, label %25
    i32 129, label %25
    i32 130, label %25
    i32 128, label %25
    i32 133, label %29
    i32 132, label %29
  ]

25:                                               ; preds = %1, %1, %1, %1
  %26 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %27 = call i32 @mpr_printf(%struct.mpr_softc* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %113

29:                                               ; preds = %1, %1
  %30 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %31 = call i32 @mpr_printf(%struct.mpr_softc* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %35 = call i32 @mpr_get_tunables(%struct.mpr_softc* %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @pci_enable_busmaster(i32 %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %58, %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PCI_MAXMAPS_0, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @PCIR_BAR(i32 %43)
  %45 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %46 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @SYS_RES_MEMORY, align 4
  %49 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %50 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %49, i32 0, i32 4
  %51 = load i32, i32* @RF_ACTIVE, align 4
  %52 = call i32* @bus_alloc_resource_any(i32 %47, i32 %48, i32* %50, i32 %51)
  %53 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %54 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = icmp ne i32* %52, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %61

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %38

61:                                               ; preds = %56, %38
  %62 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %63 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %68 = call i32 @mpr_printf(%struct.mpr_softc* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %2, align 4
  br label %113

70:                                               ; preds = %61
  %71 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %72 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @rman_get_bustag(i32* %73)
  %75 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %76 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %78 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @rman_get_bushandle(i32* %79)
  %81 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %82 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @bus_get_dma_tag(i32 %83)
  %85 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %86 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %87 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %88 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %89 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %90 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %91 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %90, i32 0, i32 0
  %92 = call i64 @bus_dma_tag_create(i32 %84, i32 1, i32 0, i32 %85, i32 %86, i32* null, i32* null, i32 %87, i32 %88, i32 %89, i32 0, i32* null, i32* null, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %70
  %95 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %96 = call i32 @mpr_printf(%struct.mpr_softc* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %98 = call i32 @mpr_pci_free(%struct.mpr_softc* %97)
  %99 = load i32, i32* @ENOMEM, align 4
  store i32 %99, i32* %2, align 4
  br label %113

100:                                              ; preds = %70
  %101 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %102 = call i32 @mpr_pci_alloc_interrupts(%struct.mpr_softc* %101)
  store i32 %102, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %106 = call i32 @mpr_attach(%struct.mpr_softc* %105)
  store i32 %106, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %100
  %109 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %110 = call i32 @mpr_pci_free(%struct.mpr_softc* %109)
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %94, %66, %25
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.mpr_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.mpr_softc*, i32) #1

declare dso_local %struct.mpr_ident* @mpr_find_ident(i32) #1

declare dso_local i32 @mpr_printf(%struct.mpr_softc*, i8*) #1

declare dso_local i32 @mpr_get_tunables(%struct.mpr_softc*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @mpr_pci_free(%struct.mpr_softc*) #1

declare dso_local i32 @mpr_pci_alloc_interrupts(%struct.mpr_softc*) #1

declare dso_local i32 @mpr_attach(%struct.mpr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
