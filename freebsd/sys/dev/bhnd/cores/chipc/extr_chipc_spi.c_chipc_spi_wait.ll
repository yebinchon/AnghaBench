; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_spi.c_chipc_spi_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_spi.c_chipc_spi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_spi_softc = type { i32 }

@CHIPC_SPI_MAXTRIES = common dso_local global i32 0, align 4
@CHIPC_SPI_FLASHCTL = common dso_local global i32 0, align 4
@CHIPC_SPI_FLASHCTL_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"busy: CTL=0x%x DATA=0x%x\00", align 1
@CHIPC_SPI_FLASHDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chipc_spi_softc*)* @chipc_spi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_spi_wait(%struct.chipc_spi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chipc_spi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.chipc_spi_softc* %0, %struct.chipc_spi_softc** %3, align 8
  %5 = load i32, i32* @CHIPC_SPI_MAXTRIES, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %3, align 8
  %11 = load i32, i32* @CHIPC_SPI_FLASHCTL, align 4
  %12 = call i32 @SPI_READ(%struct.chipc_spi_softc* %10, i32 %11)
  %13 = load i32, i32* @CHIPC_SPI_FLASHCTL_START, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  br label %6

21:                                               ; preds = %16, %6
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %36

25:                                               ; preds = %21
  %26 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.chipc_spi_softc, %struct.chipc_spi_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %3, align 8
  %30 = load i32, i32* @CHIPC_SPI_FLASHCTL, align 4
  %31 = call i32 @SPI_READ(%struct.chipc_spi_softc* %29, i32 %30)
  %32 = load %struct.chipc_spi_softc*, %struct.chipc_spi_softc** %3, align 8
  %33 = load i32, i32* @CHIPC_SPI_FLASHDATA, align 4
  %34 = call i32 @SPI_READ(%struct.chipc_spi_softc* %32, i32 %33)
  %35 = call i32 @BHND_WARN_DEV(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %25, %24
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @SPI_READ(%struct.chipc_spi_softc*, i32) #1

declare dso_local i32 @BHND_WARN_DEV(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
