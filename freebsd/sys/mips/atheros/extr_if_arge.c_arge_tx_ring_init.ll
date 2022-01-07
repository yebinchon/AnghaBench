; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_tx_ring_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_tx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { %struct.TYPE_3__, %struct.arge_ring_data }
%struct.TYPE_3__ = type { i32, i32, %struct.arge_txdesc*, i64, i64, i64 }
%struct.arge_txdesc = type { i32* }
%struct.arge_ring_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ARGE_TX_RING_COUNT = common dso_local global i32 0, align 4
@ARGE_DESC_EMPTY = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arge_softc*)* @arge_tx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arge_tx_ring_init(%struct.arge_softc* %0) #0 {
  %2 = alloca %struct.arge_softc*, align 8
  %3 = alloca %struct.arge_ring_data*, align 8
  %4 = alloca %struct.arge_txdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.arge_softc* %0, %struct.arge_softc** %2, align 8
  %7 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %14 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %16, i32 0, i32 1
  store %struct.arge_ring_data* %17, %struct.arge_ring_data** %3, align 8
  %18 = load %struct.arge_ring_data*, %struct.arge_ring_data** %3, align 8
  %19 = getelementptr inbounds %struct.arge_ring_data, %struct.arge_ring_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @bzero(%struct.TYPE_4__* %20, i32 8)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %65, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ARGE_TX_RING_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ARGE_TX_RING_COUNT, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %33 = call i32 @ARGE_TX_RING_ADDR(%struct.arge_softc* %32, i32 0)
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @ARGE_TX_RING_ADDR(%struct.arge_softc* %35, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* @ARGE_DESC_EMPTY, align 4
  %41 = load %struct.arge_ring_data*, %struct.arge_ring_data** %3, align 8
  %42 = getelementptr inbounds %struct.arge_ring_data, %struct.arge_ring_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %40, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.arge_ring_data*, %struct.arge_ring_data** %3, align 8
  %50 = getelementptr inbounds %struct.arge_ring_data, %struct.arge_ring_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 4
  %56 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %57 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load %struct.arge_txdesc*, %struct.arge_txdesc** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %59, i64 %61
  store %struct.arge_txdesc* %62, %struct.arge_txdesc** %4, align 8
  %63 = load %struct.arge_txdesc*, %struct.arge_txdesc** %4, align 8
  %64 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %39
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %70 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %74 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %78 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @bus_dmamap_sync(i32 %72, i32 %76, i32 %79)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ARGE_TX_RING_ADDR(%struct.arge_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
