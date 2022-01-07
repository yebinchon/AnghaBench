; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_spi.c_ar71xx_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_spi.c_ar71xx_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_spi_softc = type { i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AR71XX_SPI_FS = common dso_local global i32 0, align 4
@AR71XX_SPI_CTRL = common dso_local global i32 0, align 4
@AR71XX_SPI_IO_CTRL = common dso_local global i32 0, align 4
@SPI_IO_CTRL_CSMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ar71xx_spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar71xx_spi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ar71xx_spi_softc* @device_get_softc(i32 %6)
  store %struct.ar71xx_spi_softc* %7, %struct.ar71xx_spi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ar71xx_spi_softc, %struct.ar71xx_spi_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i32 @bus_alloc_resource_any(i32 %11, i32 %12, i32* %5, i32 %13)
  %15 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ar71xx_spi_softc, %struct.ar71xx_spi_softc* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ar71xx_spi_softc, %struct.ar71xx_spi_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %51

25:                                               ; preds = %1
  %26 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %27 = load i32, i32* @AR71XX_SPI_FS, align 4
  %28 = call i32 @SPI_WRITE(%struct.ar71xx_spi_softc* %26, i32 %27, i32 1)
  %29 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %30 = call i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc* %29)
  %31 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %32 = load i32, i32* @AR71XX_SPI_CTRL, align 4
  %33 = call i32 @SPI_READ(%struct.ar71xx_spi_softc* %31, i32 %32)
  %34 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ar71xx_spi_softc, %struct.ar71xx_spi_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %37 = load i32, i32* @AR71XX_SPI_CTRL, align 4
  %38 = call i32 @SPI_WRITE(%struct.ar71xx_spi_softc* %36, i32 %37, i32 67)
  %39 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %40 = call i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc* %39)
  %41 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %42 = load i32, i32* @AR71XX_SPI_IO_CTRL, align 4
  %43 = load i32, i32* @SPI_IO_CTRL_CSMASK, align 4
  %44 = call i32 @SPI_WRITE(%struct.ar71xx_spi_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %46 = call i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc* %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_add_child(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @bus_generic_attach(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %25, %21
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.ar71xx_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @SPI_WRITE(%struct.ar71xx_spi_softc*, i32, i32) #1

declare dso_local i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc*) #1

declare dso_local i32 @SPI_READ(%struct.ar71xx_spi_softc*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
