; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { %struct.TYPE_2__, %struct.msk_ring_data }
%struct.TYPE_2__ = type { i32, i32, %struct.msk_txdesc*, i64, i64, i64, i64, i64, i64 }
%struct.msk_txdesc = type { i32*, i32* }
%struct.msk_ring_data = type { i32* }

@MSK_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_init_tx_ring(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_ring_data*, align 8
  %4 = alloca %struct.msk_txdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %6 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %7 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %10 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 7
  store i64 0, i64* %11, align 8
  %12 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %13 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %16 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %19 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %22 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %25 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %24, i32 0, i32 1
  store %struct.msk_ring_data* %25, %struct.msk_ring_data** %3, align 8
  %26 = load %struct.msk_ring_data*, %struct.msk_ring_data** %3, align 8
  %27 = getelementptr inbounds %struct.msk_ring_data, %struct.msk_ring_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @MSK_TX_RING_CNT, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @bzero(i32* %28, i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %56, %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MSK_TX_RING_CNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %40 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load %struct.msk_txdesc*, %struct.msk_txdesc** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %42, i64 %44
  store %struct.msk_txdesc* %45, %struct.msk_txdesc** %4, align 8
  %46 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %47 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.msk_ring_data*, %struct.msk_ring_data** %3, align 8
  %49 = getelementptr inbounds %struct.msk_ring_data, %struct.msk_ring_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.msk_txdesc*, %struct.msk_txdesc** %4, align 8
  %55 = getelementptr inbounds %struct.msk_txdesc, %struct.msk_txdesc* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  br label %56

56:                                               ; preds = %38
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %61 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %65 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %69 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @bus_dmamap_sync(i32 %63, i32 %67, i32 %70)
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
