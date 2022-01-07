; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_hwintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_hwintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32 }
%struct.le_dma_softc = type { %struct.lsi64854_softc* }
%struct.lsi64854_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lance_softc*)* @le_dma_hwintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_dma_hwintr(%struct.lance_softc* %0) #0 {
  %2 = alloca %struct.lance_softc*, align 8
  %3 = alloca %struct.le_dma_softc*, align 8
  %4 = alloca %struct.lsi64854_softc*, align 8
  store %struct.lance_softc* %0, %struct.lance_softc** %2, align 8
  %5 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %6 = bitcast %struct.lance_softc* %5 to %struct.le_dma_softc*
  store %struct.le_dma_softc* %6, %struct.le_dma_softc** %3, align 8
  %7 = load %struct.le_dma_softc*, %struct.le_dma_softc** %3, align 8
  %8 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %7, i32 0, i32 0
  %9 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %8, align 8
  store %struct.lsi64854_softc* %9, %struct.lsi64854_softc** %4, align 8
  %10 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %4, align 8
  %11 = call i32 @DMA_INTR(%struct.lsi64854_softc* %10)
  ret i32 %11
}

declare dso_local i32 @DMA_INTR(%struct.lsi64854_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
