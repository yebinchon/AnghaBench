; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_start_rxdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_start_rxdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ET_RXDMA_CTRL_RING0_SIZE_MASK = common dso_local global i32 0, align 4
@ET_RXDMA_CTRL_RING0_ENABLE = common dso_local global i32 0, align 4
@ET_RXDMA_CTRL_RING1_SIZE_MASK = common dso_local global i32 0, align 4
@ET_RXDMA_CTRL_RING1_ENABLE = common dso_local global i32 0, align 4
@ET_RXDMA_CTRL = common dso_local global i32 0, align 4
@ET_RXDMA_CTRL_HALTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can't start RX DMA engine\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et_softc*)* @et_start_rxdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_start_rxdma(%struct.et_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %3, align 8
  %5 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %6 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ET_RXDMA_CTRL_RING0_SIZE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @ET_RXDMA_CTRL_RING0_ENABLE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %16 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ET_RXDMA_CTRL_RING1_SIZE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @ET_RXDMA_CTRL_RING1_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %28 = load i32, i32* @ET_RXDMA_CTRL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CSR_WRITE_4(%struct.et_softc* %27, i32 %28, i32 %29)
  %31 = call i32 @DELAY(i32 5)
  %32 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %33 = load i32, i32* @ET_RXDMA_CTRL, align 4
  %34 = call i32 @CSR_READ_4(%struct.et_softc* %32, i32 %33)
  %35 = load i32, i32* @ET_RXDMA_CTRL_HALTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %40 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @if_printf(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.et_softc*, i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
