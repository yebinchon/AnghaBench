; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_tx_ring_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_tx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.are_softc = type { %struct.TYPE_3__, %struct.are_ring_data }
%struct.TYPE_3__ = type { i32, i32, %struct.are_txdesc*, i64, i64, i64, i64 }
%struct.are_txdesc = type { i32* }
%struct.are_ring_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }

@ARE_TX_RING_SIZE = common dso_local global i32 0, align 4
@ARE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.are_softc*)* @are_tx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_tx_ring_init(%struct.are_softc* %0) #0 {
  %2 = alloca %struct.are_softc*, align 8
  %3 = alloca %struct.are_ring_data*, align 8
  %4 = alloca %struct.are_txdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.are_softc* %0, %struct.are_softc** %2, align 8
  %7 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %8 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %11 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %14 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %17 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %20 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %19, i32 0, i32 1
  store %struct.are_ring_data* %20, %struct.are_ring_data** %3, align 8
  %21 = load %struct.are_ring_data*, %struct.are_ring_data** %3, align 8
  %22 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* @ARE_TX_RING_SIZE, align 4
  %25 = call i32 @bzero(%struct.TYPE_4__* %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %82, %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ARE_TX_RING_CNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ARE_TX_RING_CNT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %37 = call i32 @ARE_TX_RING_ADDR(%struct.are_softc* %36, i32 0)
  store i32 %37, i32* %5, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @ARE_TX_RING_ADDR(%struct.are_softc* %39, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.are_ring_data*, %struct.are_ring_data** %3, align 8
  %45 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.are_ring_data*, %struct.are_ring_data** %3, align 8
  %52 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.are_ring_data*, %struct.are_ring_data** %3, align 8
  %59 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.are_ring_data*, %struct.are_ring_data** %3, align 8
  %67 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 8
  %73 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %74 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load %struct.are_txdesc*, %struct.are_txdesc** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %76, i64 %78
  store %struct.are_txdesc* %79, %struct.are_txdesc** %4, align 8
  %80 = load %struct.are_txdesc*, %struct.are_txdesc** %4, align 8
  %81 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %43
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %26

85:                                               ; preds = %26
  %86 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %87 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %91 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %95 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @bus_dmamap_sync(i32 %89, i32 %93, i32 %96)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ARE_TX_RING_ADDR(%struct.are_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
