; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.ti_txdesc* }
%struct.ti_txdesc = type { i32*, i32 }
%struct.TYPE_3__ = type { i32* }

@TI_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@TI_TX_RING_SZ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_free_tx_ring(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca %struct.ti_txdesc*, align 8
  %4 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %5 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %73

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %53, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TI_TX_RING_CNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.ti_txdesc*, %struct.ti_txdesc** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %20, i64 %22
  store %struct.ti_txdesc* %23, %struct.ti_txdesc** %3, align 8
  %24 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %25 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %16
  %29 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %34 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %37 = call i32 @bus_dmamap_sync(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %43 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bus_dmamap_unload(i32 %41, i32 %44)
  %46 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %47 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @m_freem(i32* %48)
  %50 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %51 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %28, %16
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %12

56:                                               ; preds = %12
  %57 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @TI_TX_RING_SZ, align 4
  %62 = call i32 @bzero(i32* %60, i32 %61)
  %63 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %72 = call i32 @bus_dmamap_sync(i32 %66, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %56, %10
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
