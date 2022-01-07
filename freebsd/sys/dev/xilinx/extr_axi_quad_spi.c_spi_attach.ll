; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axi_quad_spi.c_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_axi_quad_spi.c_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32*, i32, i32 }

@spi_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SPI_SRR = common dso_local global i32 0, align 4
@SRR_RESET = common dso_local global i32 0, align 4
@CR_MASTER = common dso_local global i32 0, align 4
@CR_MSS = common dso_local global i32 0, align 4
@CR_RST_RX = common dso_local global i32 0, align 4
@CR_RST_TX = common dso_local global i32 0, align 4
@SPI_CR = common dso_local global i32 0, align 4
@SPI_DGIER = common dso_local global i32 0, align 4
@CR_SPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.spi_softc* @device_get_softc(i32 %6)
  store %struct.spi_softc* %7, %struct.spi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @spi_spec, align 4
  %10 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @bus_alloc_resources(i32 %8, i32 %9, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rman_get_bustag(i32 %24)
  %26 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %29 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rman_get_bushandle(i32 %32)
  %34 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %37 = load i32, i32* @SPI_SRR, align 4
  %38 = load i32, i32* @SRR_RESET, align 4
  %39 = call i32 @WRITE4(%struct.spi_softc* %36, i32 %37, i32 %38)
  %40 = call i32 @DELAY(i32 1000)
  %41 = load i32, i32* @CR_MASTER, align 4
  %42 = load i32, i32* @CR_MSS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CR_RST_RX, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CR_RST_TX, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %5, align 4
  %48 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %49 = load i32, i32* @SPI_CR, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @WRITE4(%struct.spi_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %53 = load i32, i32* @SPI_DGIER, align 4
  %54 = call i32 @WRITE4(%struct.spi_softc* %52, i32 %53, i32 0)
  %55 = load i32, i32* @CR_MASTER, align 4
  %56 = load i32, i32* @CR_MSS, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CR_SPE, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %61 = load i32, i32* @SPI_CR, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @WRITE4(%struct.spi_softc* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @device_add_child(i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @bus_generic_attach(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %19, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.spi_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @WRITE4(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
