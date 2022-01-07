; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_spi.c_ar71xx_spi_chip_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_spi.c_ar71xx_spi_chip_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_spi_softc = type { i32 }

@SPI_IO_CTRL_CSMASK = common dso_local global i32 0, align 4
@SPI_IO_CTRL_CS0 = common dso_local global i32 0, align 4
@AR71XX_SPI_IO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar71xx_spi_softc*, i32)* @ar71xx_spi_chip_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar71xx_spi_chip_activate(%struct.ar71xx_spi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ar71xx_spi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar71xx_spi_softc* %0, %struct.ar71xx_spi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SPI_IO_CTRL_CSMASK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @SPI_IO_CTRL_CS0, align 4
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %3, align 8
  %14 = call i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc* %13)
  %15 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %3, align 8
  %16 = load i32, i32* @AR71XX_SPI_IO_CTRL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @SPI_WRITE(%struct.ar71xx_spi_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %3, align 8
  %20 = call i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc* %19)
  ret void
}

declare dso_local i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc*) #1

declare dso_local i32 @SPI_WRITE(%struct.ar71xx_spi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
