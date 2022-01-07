; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_start_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, i32 }

@JZ_MSC_DMANDA = common dso_local global i32 0, align 4
@JZ_MSC_DMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_mmc_softc*)* @jz4780_mmc_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_mmc_start_dma(%struct.jz4780_mmc_softc* %0) #0 {
  %2 = alloca %struct.jz4780_mmc_softc*, align 8
  store %struct.jz4780_mmc_softc* %0, %struct.jz4780_mmc_softc** %2, align 8
  %3 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %4 = load i32, i32* @JZ_MSC_DMANDA, align 4
  %5 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %3, i32 %4, i32 %7)
  %9 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %10 = load i32, i32* @JZ_MSC_DMAC, align 4
  %11 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %9, i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
