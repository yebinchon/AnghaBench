; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_pio_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_pio_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32 }
%struct.mmc_command = type { %struct.mmc_data* }
%struct.mmc_data = type { i64 }

@DEF_MSIZE = common dso_local global i32 0, align 4
@SDMMC_FIFOTH_MSIZE_S = common dso_local global i32 0, align 4
@SDMMC_FIFOTH_RXWMARK_S = common dso_local global i32 0, align 4
@SDMMC_FIFOTH_TXWMARK_S = common dso_local global i32 0, align 4
@SDMMC_FIFOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwmmc_softc*, %struct.mmc_command*)* @pio_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pio_prepare(%struct.dwmmc_softc* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.dwmmc_softc*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %7 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  %9 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  store %struct.mmc_data* %9, %struct.mmc_data** %5, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @DEF_MSIZE, align 4
  %13 = load i32, i32* @SDMMC_FIFOTH_MSIZE_S, align 4
  %14 = shl i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 2
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* @SDMMC_FIFOTH_RXWMARK_S, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 2
  %28 = load i32, i32* @SDMMC_FIFOTH_TXWMARK_S, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %33 = load i32, i32* @SDMMC_FIFOTH, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @WRITE4(%struct.dwmmc_softc* %32, i32 %33, i32 %34)
  %36 = call i32 (...) @wmb()
  ret i32 0
}

declare dso_local i32 @WRITE4(%struct.dwmmc_softc*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
