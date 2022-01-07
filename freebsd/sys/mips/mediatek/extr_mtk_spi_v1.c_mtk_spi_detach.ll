; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_spi_softc = type { i64 }

@MTK_SPICTL = common dso_local global i32 0, align 4
@HIZSMOSI = common dso_local global i32 0, align 4
@CS_HIGH = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_spi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_spi_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mtk_spi_softc* @device_get_softc(i32 %4)
  store %struct.mtk_spi_softc* %5, %struct.mtk_spi_softc** %3, align 8
  %6 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %3, align 8
  %7 = load i32, i32* @MTK_SPICTL, align 4
  %8 = load i32, i32* @HIZSMOSI, align 4
  %9 = load i32, i32* @CS_HIGH, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @SPI_SET_BITS(%struct.mtk_spi_softc* %6, i32 %7, i32 %10)
  %12 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @bus_release_resource(i32 %17, i32 %18, i32 0, i64 %21)
  br label %23

23:                                               ; preds = %16, %1
  ret i32 0
}

declare dso_local %struct.mtk_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @SPI_SET_BITS(%struct.mtk_spi_softc*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
