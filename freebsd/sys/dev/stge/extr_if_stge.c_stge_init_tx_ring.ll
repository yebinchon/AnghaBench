; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { %struct.TYPE_3__, %struct.stge_ring_data }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.stge_txdesc*, i64, i64, i64, i32 }
%struct.stge_txdesc = type { i32 }
%struct.stge_ring_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8* }

@STGE_TX_RING_SZ = common dso_local global i32 0, align 4
@STGE_TX_RING_CNT = common dso_local global i32 0, align 4
@TFD_TFDDone = common dso_local global i32 0, align 4
@tx_q = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_init_tx_ring(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.stge_ring_data*, align 8
  %4 = alloca %struct.stge_txdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %7 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = call i32 @STAILQ_INIT(i32* %9)
  %11 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 7
  %14 = call i32 @STAILQ_INIT(i32* %13)
  %15 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %16 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %22 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %24, i32 0, i32 1
  store %struct.stge_ring_data* %25, %struct.stge_ring_data** %3, align 8
  %26 = load %struct.stge_ring_data*, %struct.stge_ring_data** %3, align 8
  %27 = getelementptr inbounds %struct.stge_ring_data, %struct.stge_ring_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* @STGE_TX_RING_SZ, align 4
  %30 = call i32 @bzero(%struct.TYPE_4__* %28, i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %80, %1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @STGE_TX_RING_CNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @STGE_TX_RING_CNT, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %42 = call i32 @STGE_TX_RING_ADDR(%struct.stge_softc* %41, i32 0)
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @STGE_TX_RING_ADDR(%struct.stge_softc* %44, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @htole64(i32 %49)
  %51 = load %struct.stge_ring_data*, %struct.stge_ring_data** %3, align 8
  %52 = getelementptr inbounds %struct.stge_ring_data, %struct.stge_ring_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i8* %50, i8** %57, align 8
  %58 = load i32, i32* @TFD_TFDDone, align 4
  %59 = call i8* @htole64(i32 %58)
  %60 = load %struct.stge_ring_data*, %struct.stge_ring_data** %3, align 8
  %61 = getelementptr inbounds %struct.stge_ring_data, %struct.stge_ring_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %59, i8** %66, align 8
  %67 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %68 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load %struct.stge_txdesc*, %struct.stge_txdesc** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %70, i64 %72
  store %struct.stge_txdesc* %73, %struct.stge_txdesc** %4, align 8
  %74 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %75 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %78 = load i32, i32* @tx_q, align 4
  %79 = call i32 @STAILQ_INSERT_TAIL(i32* %76, %struct.stge_txdesc* %77, i32 %78)
  br label %80

80:                                               ; preds = %48
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %31

83:                                               ; preds = %31
  %84 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %85 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %89 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %93 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @bus_dmamap_sync(i32 %87, i32 %91, i32 %94)
  ret void
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @STGE_TX_RING_ADDR(%struct.stge_softc*, i32) #1

declare dso_local i8* @htole64(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.stge_txdesc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
