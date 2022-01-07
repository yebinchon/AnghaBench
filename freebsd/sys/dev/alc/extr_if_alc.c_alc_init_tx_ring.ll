; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { %struct.TYPE_2__, %struct.alc_ring_data }
%struct.TYPE_2__ = type { i32, i32, %struct.alc_txdesc*, i64, i64, i64 }
%struct.alc_txdesc = type { i32* }
%struct.alc_ring_data = type { i32 }

@ALC_TX_RING_SZ = common dso_local global i32 0, align 4
@ALC_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_init_tx_ring(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.alc_ring_data*, align 8
  %4 = alloca %struct.alc_txdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %6 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %7 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %6)
  %8 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %17, i32 0, i32 1
  store %struct.alc_ring_data* %18, %struct.alc_ring_data** %3, align 8
  %19 = load %struct.alc_ring_data*, %struct.alc_ring_data** %3, align 8
  %20 = getelementptr inbounds %struct.alc_ring_data, %struct.alc_ring_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ALC_TX_RING_SZ, align 4
  %23 = call i32 @bzero(i32 %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %38, %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ALC_TX_RING_CNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.alc_txdesc*, %struct.alc_txdesc** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %32, i64 %34
  store %struct.alc_txdesc* %35, %struct.alc_txdesc** %4, align 8
  %36 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %37 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %43 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %47 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %51 = call i32 @bus_dmamap_sync(i32 %45, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
