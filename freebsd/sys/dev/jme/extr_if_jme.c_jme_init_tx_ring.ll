; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { %struct.TYPE_2__, %struct.jme_ring_data }
%struct.TYPE_2__ = type { i32, i32, %struct.jme_txdesc*, i64, i64, i64 }
%struct.jme_txdesc = type { i64, i32*, i32* }
%struct.jme_ring_data = type { i32* }

@JME_TX_RING_SIZE = common dso_local global i32 0, align 4
@JME_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_init_tx_ring(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca %struct.jme_ring_data*, align 8
  %4 = alloca %struct.jme_txdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %6 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %7 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %10 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %13 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %16 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %15, i32 0, i32 1
  store %struct.jme_ring_data* %16, %struct.jme_ring_data** %3, align 8
  %17 = load %struct.jme_ring_data*, %struct.jme_ring_data** %3, align 8
  %18 = getelementptr inbounds %struct.jme_ring_data, %struct.jme_ring_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @JME_TX_RING_SIZE, align 4
  %21 = call i32 @bzero(i32* %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %46, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @JME_TX_RING_CNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %28 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load %struct.jme_txdesc*, %struct.jme_txdesc** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %30, i64 %32
  store %struct.jme_txdesc* %33, %struct.jme_txdesc** %4, align 8
  %34 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %35 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.jme_ring_data*, %struct.jme_ring_data** %3, align 8
  %37 = getelementptr inbounds %struct.jme_ring_data, %struct.jme_ring_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %43 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.jme_txdesc*, %struct.jme_txdesc** %4, align 8
  %45 = getelementptr inbounds %struct.jme_txdesc, %struct.jme_txdesc* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %26
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %51 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %55 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %59 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @bus_dmamap_sync(i32 %53, i32 %57, i32 %60)
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
