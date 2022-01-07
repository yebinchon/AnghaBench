; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_rdcsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_rdcsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32 }
%struct.le_dma_softc = type { i32 }

@LEREG1_RAP = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@LEREG1_RDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lance_softc*, i32)* @le_dma_rdcsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_dma_rdcsr(%struct.lance_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.lance_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.le_dma_softc*, align 8
  store %struct.lance_softc* %0, %struct.lance_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %7 = bitcast %struct.lance_softc* %6 to %struct.le_dma_softc*
  store %struct.le_dma_softc* %7, %struct.le_dma_softc** %5, align 8
  %8 = load %struct.le_dma_softc*, %struct.le_dma_softc** %5, align 8
  %9 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LEREG1_RAP, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @bus_write_2(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.le_dma_softc*, %struct.le_dma_softc** %5, align 8
  %15 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LEREG1_RAP, align 4
  %18 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %19 = call i32 @bus_barrier(i32 %16, i32 %17, i32 2, i32 %18)
  %20 = load %struct.le_dma_softc*, %struct.le_dma_softc** %5, align 8
  %21 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LEREG1_RDP, align 4
  %24 = call i32 @bus_read_2(i32 %22, i32 %23)
  ret i32 %24
}

declare dso_local i32 @bus_write_2(i32, i32, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i32 @bus_read_2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
