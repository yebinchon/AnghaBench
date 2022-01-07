; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_pci.c_mps_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_pci.c_mps_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.mps_ident = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot allocate PCI registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot allocate parent DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mps_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mps_softc*, align 8
  %5 = alloca %struct.mps_ident*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mps_softc* @device_get_softc(i32 %7)
  store %struct.mps_softc* %8, %struct.mps_softc** %4, align 8
  %9 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %10 = call i32 @bzero(%struct.mps_softc* %9, i32 40)
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.mps_ident* @mps_find_ident(i32 %14)
  store %struct.mps_ident* %15, %struct.mps_ident** %5, align 8
  %16 = load %struct.mps_ident*, %struct.mps_ident** %5, align 8
  %17 = getelementptr inbounds %struct.mps_ident, %struct.mps_ident* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %22 = call i32 @mps_get_tunables(%struct.mps_softc* %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pci_enable_busmaster(i32 %23)
  %25 = call i32 @PCIR_BAR(i32 1)
  %26 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %31 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %30, i32 0, i32 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i32* @bus_alloc_resource_any(i32 %28, i32 %29, i32* %31, i32 %32)
  %34 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = icmp eq i32* %33, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %39 = call i32 @mps_printf(%struct.mps_softc* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %84

41:                                               ; preds = %1
  %42 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @rman_get_bustag(i32* %44)
  %46 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %47 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %49 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @rman_get_bushandle(i32* %50)
  %52 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @bus_get_dma_tag(i32 %54)
  %56 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %57 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %58 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %59 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %60 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %61 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %62 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %61, i32 0, i32 0
  %63 = call i64 @bus_dma_tag_create(i32 %55, i32 1, i32 0, i32 %56, i32 %57, i32* null, i32* null, i32 %58, i32 %59, i32 %60, i32 0, i32* null, i32* null, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %41
  %66 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %67 = call i32 @mps_printf(%struct.mps_softc* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %69 = call i32 @mps_pci_free(%struct.mps_softc* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %2, align 4
  br label %84

71:                                               ; preds = %41
  %72 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %73 = call i32 @mps_pci_alloc_interrupts(%struct.mps_softc* %72)
  store i32 %73, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %77 = call i32 @mps_attach(%struct.mps_softc* %76)
  store i32 %77, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %71
  %80 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %81 = call i32 @mps_pci_free(%struct.mps_softc* %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %65, %37
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.mps_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.mps_softc*, i32) #1

declare dso_local %struct.mps_ident* @mps_find_ident(i32) #1

declare dso_local i32 @mps_get_tunables(%struct.mps_softc*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @mps_printf(%struct.mps_softc*, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @mps_pci_free(%struct.mps_softc*) #1

declare dso_local i32 @mps_pci_alloc_interrupts(%struct.mps_softc*) #1

declare dso_local i32 @mps_attach(%struct.mps_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
