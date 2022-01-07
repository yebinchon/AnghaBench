; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v2.c_mtk_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v2.c_mtk_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_spi_softc = type { i32 }

@MTK_SPI_WRITE = common dso_local global i32 0, align 4
@MTK_SPIOPCODE = common dso_local global i32 0, align 4
@MTK_SPIMOREBUF = common dso_local global i32 0, align 4
@MTK_SPITRANS = common dso_local global i32 0, align 4
@SPISTART = common dso_local global i32 0, align 4
@MTK_SPI_READ = common dso_local global i32 0, align 4
@MTK_SPIDATA = common dso_local global i32 0, align 4
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
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 255, i32* %4, align 4
  br label %49

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MTK_SPI_WRITE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %18 = load i32, i32* @MTK_SPIOPCODE, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SPI_WRITE(%struct.mtk_spi_softc* %17, i32 %18, i32 %20)
  %22 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %23 = load i32, i32* @MTK_SPIMOREBUF, align 4
  %24 = call i32 @SPI_WRITE(%struct.mtk_spi_softc* %22, i32 %23, i32 134217728)
  br label %29

25:                                               ; preds = %12
  %26 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %27 = load i32, i32* @MTK_SPIMOREBUF, align 4
  %28 = call i32 @SPI_WRITE(%struct.mtk_spi_softc* %26, i32 %27, i32 32768)
  br label %29

29:                                               ; preds = %25, %16
  %30 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %31 = load i32, i32* @MTK_SPITRANS, align 4
  %32 = load i32, i32* @SPISTART, align 4
  %33 = call i32 @SPI_SET_BITS(%struct.mtk_spi_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %35 = call i64 @mtk_spi_wait(%struct.mtk_spi_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 255, i32* %4, align 4
  br label %49

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MTK_SPI_READ, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %5, align 8
  %44 = load i32, i32* @MTK_SPIDATA, align 4
  %45 = call i32 @SPI_READ(%struct.mtk_spi_softc* %43, i32 %44)
  %46 = and i32 %45, 255
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %38
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %37, %11
  %50 = load i32, i32* %4, align 4
  ret i32 %50
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
