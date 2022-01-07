; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.aic_softc* }
%struct.aic_softc = type { i32 }

@I2SCR = common dso_local global i32 0, align 4
@I2SCR_ESCLK = common dso_local global i32 0, align 4
@AICCR_OSS_16 = common dso_local global i32 0, align 4
@AICCR_ISS_16 = common dso_local global i32 0, align 4
@AICCR_CHANNEL_2 = common dso_local global i32 0, align 4
@AICCR_TDMS = common dso_local global i32 0, align 4
@AICCR_ERPL = common dso_local global i32 0, align 4
@AICCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_pcminfo*)* @aic_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic_start(%struct.sc_pcminfo* %0) #0 {
  %2 = alloca %struct.sc_pcminfo*, align 8
  %3 = alloca %struct.aic_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.sc_pcminfo* %0, %struct.sc_pcminfo** %2, align 8
  %5 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %2, align 8
  %6 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %5, i32 0, i32 0
  %7 = load %struct.aic_softc*, %struct.aic_softc** %6, align 8
  store %struct.aic_softc* %7, %struct.aic_softc** %3, align 8
  %8 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %9 = load i32, i32* @I2SCR, align 4
  %10 = call i32 @READ4(%struct.aic_softc* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @I2SCR_ESCLK, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %15 = load i32, i32* @I2SCR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @WRITE4(%struct.aic_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %2, align 8
  %19 = call i32 @setup_xdma(%struct.sc_pcminfo* %18)
  %20 = load i32, i32* @AICCR_OSS_16, align 4
  %21 = load i32, i32* @AICCR_ISS_16, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @AICCR_CHANNEL_2, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @AICCR_TDMS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @AICCR_ERPL, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.aic_softc*, %struct.aic_softc** %3, align 8
  %33 = load i32, i32* @AICCR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @WRITE4(%struct.aic_softc* %32, i32 %33, i32 %34)
  ret i32 0
}

declare dso_local i32 @READ4(%struct.aic_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.aic_softc*, i32, i32) #1

declare dso_local i32 @setup_xdma(%struct.sc_pcminfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
