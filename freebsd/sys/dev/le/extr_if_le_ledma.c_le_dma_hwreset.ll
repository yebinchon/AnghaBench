; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_hwreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_hwreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32 }
%struct.le_dma_softc = type { i32, %struct.lsi64854_softc* }
%struct.lsi64854_softc = type { i32 }

@E_TP_AUI = common dso_local global i32 0, align 4
@L64854_REG_ENBAR = common dso_local global i32 0, align 4
@E_DSBL_WR_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*)* @le_dma_hwreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_dma_hwreset(%struct.lance_softc* %0) #0 {
  %2 = alloca %struct.lance_softc*, align 8
  %3 = alloca %struct.le_dma_softc*, align 8
  %4 = alloca %struct.lsi64854_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lance_softc* %0, %struct.lance_softc** %2, align 8
  %7 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %8 = bitcast %struct.lance_softc* %7 to %struct.le_dma_softc*
  store %struct.le_dma_softc* %8, %struct.le_dma_softc** %3, align 8
  %9 = load %struct.le_dma_softc*, %struct.le_dma_softc** %3, align 8
  %10 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %9, i32 0, i32 1
  %11 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %10, align 8
  store %struct.lsi64854_softc* %11, %struct.lsi64854_softc** %4, align 8
  %12 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %13 = call i32 @L64854_GCSR(%struct.lsi64854_softc* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @E_TP_AUI, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %18 = call i32 @DMA_RESET(%struct.lsi64854_softc* %17)
  %19 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %20 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @L64854_REG_ENBAR, align 4
  %23 = load %struct.le_dma_softc*, %struct.le_dma_softc** %3, align 8
  %24 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -16777216
  %27 = call i32 @bus_write_4(i32 %21, i32 %22, i32 %26)
  %28 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %29 = call i32 @DMA_ENINTR(%struct.lsi64854_softc* %28)
  %30 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %31 = call i32 @L64854_GCSR(%struct.lsi64854_softc* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @E_DSBL_WR_INVAL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @L64854_SCSR(%struct.lsi64854_softc* %37, i32 %38)
  %40 = call i32 @DELAY(i32 20000)
  ret void
}

declare dso_local i32 @L64854_GCSR(%struct.lsi64854_softc*) #1

declare dso_local i32 @DMA_RESET(%struct.lsi64854_softc*) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @DMA_ENINTR(%struct.lsi64854_softc*) #1

declare dso_local i32 @L64854_SCSR(%struct.lsi64854_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
