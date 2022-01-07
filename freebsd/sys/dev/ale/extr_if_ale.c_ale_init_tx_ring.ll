; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64*, %struct.ale_txdesc*, i64*, i64, i64, i64 }
%struct.ale_txdesc = type { i32* }

@ALE_TX_RING_SZ = common dso_local global i32 0, align 4
@ALE_TX_CMB_SZ = common dso_local global i32 0, align 4
@ALE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_init_tx_ring(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.ale_txdesc*, align 8
  %4 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %5 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %6 = call i32 @ALE_LOCK_ASSERT(%struct.ale_softc* %5)
  %7 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 9
  store i64 0, i64* %9, align 8
  %10 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* @ALE_TX_RING_SZ, align 4
  %21 = call i32 @bzero(i64* %19, i32 %20)
  %22 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* @ALE_TX_CMB_SZ, align 4
  %27 = call i32 @bzero(i64* %25, i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %42, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ALE_TX_RING_CNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = load %struct.ale_txdesc*, %struct.ale_txdesc** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %36, i64 %38
  store %struct.ale_txdesc* %39, %struct.ale_txdesc** %3, align 8
  %40 = load %struct.ale_txdesc*, %struct.ale_txdesc** %3, align 8
  %41 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %59 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @bus_dmamap_sync(i32 %53, i32 %57, i32 %60)
  %62 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %67 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %71 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @bus_dmamap_sync(i32 %65, i32 %69, i32 %72)
  ret void
}

declare dso_local i32 @ALE_LOCK_ASSERT(%struct.ale_softc*) #1

declare dso_local i32 @bzero(i64*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
