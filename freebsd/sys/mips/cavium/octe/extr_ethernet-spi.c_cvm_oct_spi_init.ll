; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-spi.c_cvm_oct_spi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-spi.c_cvm_oct_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.octebus_softc = type { i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@number_spi_ports = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@OCTEON_IRQ_RML = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not allocate SPI irq\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@cvm_oct_spi_rml_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"could not setup SPI irq\00", align 1
@cvm_oct_spi_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_spi_init(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.octebus_softc*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %5, align 8
  %12 = load i64, i64* @number_spi_ports, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  %19 = call %struct.octebus_softc* @device_get_softc(i32 %18)
  store %struct.octebus_softc* %19, %struct.octebus_softc** %4, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %21 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SYS_RES_IRQ, align 4
  %24 = load i32, i32* @OCTEON_IRQ_RML, align 4
  %25 = load i32, i32* @OCTEON_IRQ_RML, align 4
  %26 = load i32, i32* @RF_ACTIVE, align 4
  %27 = call i32* @bus_alloc_resource(i32 %22, i32 %23, i32* %7, i32 %24, i32 %25, i32 1, i32 %26)
  %28 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %29 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %31 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %14
  %35 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %36 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %89

40:                                               ; preds = %14
  %41 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %42 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %45 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @INTR_TYPE_NET, align 4
  %48 = load i32, i32* @INTR_MPSAFE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @cvm_oct_spi_rml_interrupt, align 4
  %51 = call i32 @bus_setup_intr(i32 %43, i32* %46, i32 %49, i32 %50, i32* null, i64* @number_spi_ports, i32* null)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %40
  %55 = load %struct.octebus_softc*, %struct.octebus_softc** %4, align 8
  %56 = getelementptr inbounds %struct.octebus_softc, %struct.octebus_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %89

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i64, i64* @number_spi_ports, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* @number_spi_ports, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 16
  br i1 %72, label %73, label %82

73:                                               ; preds = %68, %61
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @INTERFACE(i32 %76)
  %78 = call i32 @cvm_oct_spi_enable_error_reporting(i32 %77)
  %79 = load i32, i32* @cvm_oct_spi_poll, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %68
  %83 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %84 = call i64 @cvm_oct_common_init(%struct.ifnet* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %86, %54, %34
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.octebus_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, i64*, i32*) #1

declare dso_local i32 @cvm_oct_spi_enable_error_reporting(i32) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i64 @cvm_oct_common_init(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
