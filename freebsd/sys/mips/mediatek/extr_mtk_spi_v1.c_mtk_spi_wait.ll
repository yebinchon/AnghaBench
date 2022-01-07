; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_spi_softc = type { i32 }

@MTK_SPIBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"busy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_spi_softc*)* @mtk_spi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_wait(%struct.mtk_spi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_spi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_spi_softc* %0, %struct.mtk_spi_softc** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %3, align 8
  %11 = load i32, i32* @MTK_SPIBUSY, align 4
  %12 = call i32 @SPI_READ(%struct.mtk_spi_softc* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %16

15:                                               ; preds = %9
  br label %5

16:                                               ; preds = %14, %5
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @SPI_READ(%struct.mtk_spi_softc*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
