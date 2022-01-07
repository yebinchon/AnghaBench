; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_spi.c_ar71xx_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_spi.c_ar71xx_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_spi_softc = type { i32 }

@SPI_IO_CTRL_CSMASK = common dso_local global i32 0, align 4
@SPI_IO_CTRL_CS0 = common dso_local global i32 0, align 4
@SPI_IO_CTRL_DO = common dso_local global i32 0, align 4
@AR71XX_SPI_IO_CTRL = common dso_local global i32 0, align 4
@SPI_IO_CTRL_CLK = common dso_local global i32 0, align 4
@AR71XX_SPI_RDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar71xx_spi_softc*, i32, i32)* @ar71xx_spi_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_spi_txrx(%struct.ar71xx_spi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar71xx_spi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ar71xx_spi_softc* %0, %struct.ar71xx_spi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @SPI_IO_CTRL_CSMASK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @SPI_IO_CTRL_CS0, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %8, align 4
  store i32 7, i32* %7, align 4
  br label %18

18:                                               ; preds = %51, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SPI_IO_CTRL_DO, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %9, align 4
  br label %36

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SPI_IO_CTRL_DO, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %38 = call i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc* %37)
  %39 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %40 = load i32, i32* @AR71XX_SPI_IO_CTRL, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @SPI_WRITE(%struct.ar71xx_spi_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %44 = call i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc* %43)
  %45 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %46 = load i32, i32* @AR71XX_SPI_IO_CTRL, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @SPI_IO_CTRL_CLK, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @SPI_WRITE(%struct.ar71xx_spi_softc* %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %18

54:                                               ; preds = %18
  %55 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %56 = call i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc* %55)
  %57 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %58 = load i32, i32* @AR71XX_SPI_IO_CTRL, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @SPI_WRITE(%struct.ar71xx_spi_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %62 = call i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc* %61)
  %63 = load %struct.ar71xx_spi_softc*, %struct.ar71xx_spi_softc** %4, align 8
  %64 = load i32, i32* @AR71XX_SPI_RDS, align 4
  %65 = call i32 @SPI_READ(%struct.ar71xx_spi_softc* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 255
  ret i32 %67
}

declare dso_local i32 @SPI_BARRIER_WRITE(%struct.ar71xx_spi_softc*) #1

declare dso_local i32 @SPI_WRITE(%struct.ar71xx_spi_softc*, i32, i32) #1

declare dso_local i32 @SPI_READ(%struct.ar71xx_spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
