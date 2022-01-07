; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_tx_coherent_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_tx_coherent_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32*, i32*, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RT_DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Tx coherent interrupt\0A\00", align 1
@FE_TX_WB_DDONE = common dso_local global i32 0, align 4
@FE_TX_DMA_EN = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_COUNT = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_DESC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_softc*)* @rt_tx_coherent_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_tx_coherent_intr(%struct.rt_softc* %0) #0 {
  %2 = alloca %struct.rt_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt_softc* %0, %struct.rt_softc** %2, align 8
  %5 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %6 = load i32, i32* @RT_DEBUG_INTR, align 4
  %7 = call i32 @RT_DPRINTF(%struct.rt_softc* %5, i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %13 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %14 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @RT_READ(%struct.rt_softc* %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @FE_TX_WB_DDONE, align 4
  %18 = load i32, i32* @FE_TX_DMA_EN, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %24 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %25 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @RT_WRITE(%struct.rt_softc* %23, i32 %26, i32 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %42, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @RT_SOFTC_TX_RING_COUNT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %35 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %36 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = call i32 @rt_reset_tx_ring(%struct.rt_softc* %34, %struct.TYPE_2__* %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %29

45:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %87, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @RT_SOFTC_TX_RING_COUNT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %46
  %51 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %52 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %53 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %60 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @RT_WRITE(%struct.rt_softc* %51, i32 %58, i32 %66)
  %68 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %69 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %70 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RT_SOFTC_TX_RING_DESC_COUNT, align 4
  %77 = call i32 @RT_WRITE(%struct.rt_softc* %68, i32 %75, i32 %76)
  %78 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %79 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %80 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @RT_WRITE(%struct.rt_softc* %78, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %50
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %46

90:                                               ; preds = %46
  %91 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %92 = call i32 @rt_txrx_enable(%struct.rt_softc* %91)
  ret void
}

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*) #1

declare dso_local i32 @RT_READ(%struct.rt_softc*, i32) #1

declare dso_local i32 @RT_WRITE(%struct.rt_softc*, i32, i32) #1

declare dso_local i32 @rt_reset_tx_ring(%struct.rt_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @rt_txrx_enable(%struct.rt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
