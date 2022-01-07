; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_rx_coherent_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_rx_coherent_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32, i32*, i32*, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RT_DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Rx coherent interrupt\0A\00", align 1
@FE_RX_DMA_EN = common dso_local global i32 0, align 4
@RT_SOFTC_RX_RING_DATA_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_softc*)* @rt_rx_coherent_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_rx_coherent_intr(%struct.rt_softc* %0) #0 {
  %2 = alloca %struct.rt_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt_softc* %0, %struct.rt_softc** %2, align 8
  %5 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %6 = load i32, i32* @RT_DEBUG_INTR, align 4
  %7 = call i32 @RT_DPRINTF(%struct.rt_softc* %5, i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %13 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %14 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @RT_READ(%struct.rt_softc* %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @FE_RX_DMA_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %22 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @RT_WRITE(%struct.rt_softc* %21, i32 %24, i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %42, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %35 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %36 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = call i32 @rt_reset_rx_ring(%struct.rt_softc* %34, %struct.TYPE_2__* %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %27

45:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %91, %45
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %49 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %94

52:                                               ; preds = %46
  %53 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %54 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %55 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %62 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @RT_WRITE(%struct.rt_softc* %53, i32 %60, i32 %68)
  %70 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %71 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %72 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RT_SOFTC_RX_RING_DATA_COUNT, align 4
  %79 = call i32 @RT_WRITE(%struct.rt_softc* %70, i32 %77, i32 %78)
  %80 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %81 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %82 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RT_SOFTC_RX_RING_DATA_COUNT, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 @RT_WRITE(%struct.rt_softc* %80, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %52
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %46

94:                                               ; preds = %46
  %95 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %96 = call i32 @rt_txrx_enable(%struct.rt_softc* %95)
  ret void
}

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*) #1

declare dso_local i32 @RT_READ(%struct.rt_softc*, i32) #1

declare dso_local i32 @RT_WRITE(%struct.rt_softc*, i32, i32) #1

declare dso_local i32 @rt_reset_rx_ring(%struct.rt_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @rt_txrx_enable(%struct.rt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
