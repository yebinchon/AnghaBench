; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intel/extr_spi.c_intelspi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelspi_softc = type { i32 }

@INTELSPI_SSPREG_SSCR0 = common dso_local global i32 0, align 4
@INTELSPI_SSPREG_SPI_CS_CTRL = common dso_local global i32 0, align 4
@SPI_CS_CTRL_CS_MASK = common dso_local global i32 0, align 4
@SPI_CS_CTRL_SW_MODE = common dso_local global i32 0, align 4
@SPI_CS_CTRL_CS_HIGH = common dso_local global i32 0, align 4
@TX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@RX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@SSCR1_MODE_0 = common dso_local global i32 0, align 4
@INTELSPI_SSPREG_SSCR1 = common dso_local global i32 0, align 4
@CLOCK_DIV_10MHZ = common dso_local global i32 0, align 4
@SSCR0_FRF_SPI = common dso_local global i32 0, align 4
@DATA_SIZE_8BITS = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intelspi_softc*)* @intelspi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intelspi_init(%struct.intelspi_softc* %0) #0 {
  %2 = alloca %struct.intelspi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.intelspi_softc* %0, %struct.intelspi_softc** %2, align 8
  %4 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %5 = load i32, i32* @INTELSPI_SSPREG_SSCR0, align 4
  %6 = call i32 @INTELSPI_WRITE(%struct.intelspi_softc* %4, i32 %5, i32 0)
  %7 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %8 = load i32, i32* @INTELSPI_SSPREG_SPI_CS_CTRL, align 4
  %9 = call i32 @INTELSPI_READ(%struct.intelspi_softc* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @SPI_CS_CTRL_CS_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @SPI_CS_CTRL_SW_MODE, align 4
  %15 = load i32, i32* @SPI_CS_CTRL_CS_HIGH, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %20 = load i32, i32* @INTELSPI_SSPREG_SPI_CS_CTRL, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @INTELSPI_WRITE(%struct.intelspi_softc* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @TX_FIFO_THRESHOLD, align 4
  %24 = call i32 @SSCR1_TFT(i32 %23)
  %25 = load i32, i32* @RX_FIFO_THRESHOLD, align 4
  %26 = call i32 @SSCR1_RFT(i32 %25)
  %27 = or i32 %24, %26
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @SSCR1_MODE_0, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %32 = load i32, i32* @INTELSPI_SSPREG_SSCR1, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @INTELSPI_WRITE(%struct.intelspi_softc* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @CLOCK_DIV_10MHZ, align 4
  %36 = call i32 @SSCR0_SCR(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @SSCR0_FRF_SPI, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @DATA_SIZE_8BITS, align 4
  %41 = call i32 @SSCR0_DSS(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @SSCR0_SSE, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.intelspi_softc*, %struct.intelspi_softc** %2, align 8
  %48 = load i32, i32* @INTELSPI_SSPREG_SSCR0, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @INTELSPI_WRITE(%struct.intelspi_softc* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @INTELSPI_WRITE(%struct.intelspi_softc*, i32, i32) #1

declare dso_local i32 @INTELSPI_READ(%struct.intelspi_softc*, i32) #1

declare dso_local i32 @SSCR1_TFT(i32) #1

declare dso_local i32 @SSCR1_RFT(i32) #1

declare dso_local i32 @SSCR0_SCR(i32) #1

declare dso_local i32 @SSCR0_DSS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
