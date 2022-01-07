; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_spi_softc = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MTK_SPI_WRITE = common dso_local global i32 0, align 4
@MTK_SPIDATA = common dso_local global i32 0, align 4
@MTK_SPICTL = common dso_local global i32 0, align 4
@START_WRITE = common dso_local global i32 0, align 4
@START_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_spi_softc*, i32*, i32)* @mtk_spi_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_txrx(%struct.mtk_spi_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_spi_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_spi_softc* %0, %struct.mtk_spi_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %9 = call i64 @mtk_spi_wait(%struct.mtk_spi_softc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EBUSY, align 4
  store i32 %12, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MTK_SPI_WRITE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %19 = load i32, i32* @MTK_SPIDATA, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SPI_WRITE(%struct.mtk_spi_softc* %18, i32 %19, i32 %21)
  %23 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %24 = load i32, i32* @MTK_SPICTL, align 4
  %25 = load i32, i32* @START_WRITE, align 4
  %26 = call i32 @SPI_SET_BITS(%struct.mtk_spi_softc* %23, i32 %24, i32 %25)
  br label %43

27:                                               ; preds = %13
  %28 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %29 = load i32, i32* @MTK_SPICTL, align 4
  %30 = load i32, i32* @START_READ, align 4
  %31 = call i32 @SPI_SET_BITS(%struct.mtk_spi_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %33 = call i64 @mtk_spi_wait(%struct.mtk_spi_softc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EBUSY, align 4
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %27
  %38 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %39 = load i32, i32* @MTK_SPIDATA, align 4
  %40 = call i32 @SPI_READ(%struct.mtk_spi_softc* %38, i32 %39)
  %41 = and i32 %40, 255
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %17
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %35, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @mtk_spi_wait(%struct.mtk_spi_softc*) #1

declare dso_local i32 @SPI_WRITE(%struct.mtk_spi_softc*, i32, i32) #1

declare dso_local i32 @SPI_SET_BITS(%struct.mtk_spi_softc*, i32, i32) #1

declare dso_local i32 @SPI_READ(%struct.mtk_spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
