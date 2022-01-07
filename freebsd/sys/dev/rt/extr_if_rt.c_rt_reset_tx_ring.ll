; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_reset_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_reset_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32 }
%struct.rt_softc_tx_ring = type { i64, i64, i64, i32, %struct.rt_softc_tx_data*, i32, i32, i32, i32, i64, i64, i64, %struct.rt_txdesc* }
%struct.rt_softc_tx_data = type { i32*, i32 }
%struct.rt_txdesc = type { i64, i64 }

@RT_SOFTC_TX_RING_DESC_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@RT_SOFTC_TX_RING_DATA_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_softc*, %struct.rt_softc_tx_ring*)* @rt_reset_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_reset_tx_ring(%struct.rt_softc* %0, %struct.rt_softc_tx_ring* %1) #0 {
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.rt_softc_tx_ring*, align 8
  %5 = alloca %struct.rt_softc_tx_data*, align 8
  %6 = alloca %struct.rt_txdesc*, align 8
  %7 = alloca i32, align 4
  store %struct.rt_softc* %0, %struct.rt_softc** %3, align 8
  store %struct.rt_softc_tx_ring* %1, %struct.rt_softc_tx_ring** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @RT_SOFTC_TX_RING_DESC_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %13, i32 0, i32 12
  %15 = load %struct.rt_txdesc*, %struct.rt_txdesc** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rt_txdesc, %struct.rt_txdesc* %15, i64 %17
  store %struct.rt_txdesc* %18, %struct.rt_txdesc** %6, align 8
  %19 = load %struct.rt_txdesc*, %struct.rt_txdesc** %6, align 8
  %20 = getelementptr inbounds %struct.rt_txdesc, %struct.rt_txdesc* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.rt_txdesc*, %struct.rt_txdesc** %6, align 8
  %22 = getelementptr inbounds %struct.rt_txdesc, %struct.rt_txdesc* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %28 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %27, i32 0, i32 11
  store i64 0, i64* %28, align 8
  %29 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %37 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %40 = call i32 @bus_dmamap_sync(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %42 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %45 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %48 = call i32 @bus_dmamap_sync(i32 %43, i32 %46, i32 %47)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %87, %26
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @RT_SOFTC_TX_RING_DATA_COUNT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %55 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %54, i32 0, i32 4
  %56 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %56, i64 %58
  store %struct.rt_softc_tx_data* %59, %struct.rt_softc_tx_data** %5, align 8
  %60 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %61 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %86

64:                                               ; preds = %53
  %65 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %66 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %69 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %72 = call i32 @bus_dmamap_sync(i32 %67, i32 %70, i32 %71)
  %73 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %74 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %77 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bus_dmamap_unload(i32 %75, i32 %78)
  %80 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %81 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @m_freem(i32* %82)
  %84 = load %struct.rt_softc_tx_data*, %struct.rt_softc_tx_data** %5, align 8
  %85 = getelementptr inbounds %struct.rt_softc_tx_data, %struct.rt_softc_tx_data* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %64, %53
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %49

90:                                               ; preds = %49
  %91 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %92 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %94 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.rt_softc_tx_ring*, %struct.rt_softc_tx_ring** %4, align 8
  %96 = getelementptr inbounds %struct.rt_softc_tx_ring, %struct.rt_softc_tx_ring* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
