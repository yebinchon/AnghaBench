; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_tx_ring_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_tx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { %struct.TYPE_3__, %struct.vr_ring_data }
%struct.TYPE_3__ = type { i32, i32, %struct.vr_txdesc*, i64, i64, i64, i64 }
%struct.vr_txdesc = type { i32* }
%struct.vr_ring_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@VR_TX_RING_SIZE = common dso_local global i32 0, align 4
@VR_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vr_softc*)* @vr_tx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_tx_ring_init(%struct.vr_softc* %0) #0 {
  %2 = alloca %struct.vr_softc*, align 8
  %3 = alloca %struct.vr_ring_data*, align 8
  %4 = alloca %struct.vr_txdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %2, align 8
  %7 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %14 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %17 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %20 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %19, i32 0, i32 1
  store %struct.vr_ring_data* %20, %struct.vr_ring_data** %3, align 8
  %21 = load %struct.vr_ring_data*, %struct.vr_ring_data** %3, align 8
  %22 = getelementptr inbounds %struct.vr_ring_data, %struct.vr_ring_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* @VR_TX_RING_SIZE, align 4
  %25 = call i32 @bzero(%struct.TYPE_4__* %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %63, %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @VR_TX_RING_CNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @VR_TX_RING_CNT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %37 = call i32 @VR_TX_RING_ADDR(%struct.vr_softc* %36, i32 0)
  store i32 %37, i32* %5, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @VR_TX_RING_ADDR(%struct.vr_softc* %39, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @VR_ADDR_LO(i32 %44)
  %46 = call i32 @htole32(i32 %45)
  %47 = load %struct.vr_ring_data*, %struct.vr_ring_data** %3, align 8
  %48 = getelementptr inbounds %struct.vr_ring_data, %struct.vr_ring_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  %54 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %55 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load %struct.vr_txdesc*, %struct.vr_txdesc** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vr_txdesc, %struct.vr_txdesc* %57, i64 %59
  store %struct.vr_txdesc* %60, %struct.vr_txdesc** %4, align 8
  %61 = load %struct.vr_txdesc*, %struct.vr_txdesc** %4, align 8
  %62 = getelementptr inbounds %struct.vr_txdesc, %struct.vr_txdesc* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %43
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %26

66:                                               ; preds = %26
  %67 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %68 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %72 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %76 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @bus_dmamap_sync(i32 %70, i32 %74, i32 %77)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @VR_TX_RING_ADDR(%struct.vr_softc*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @VR_ADDR_LO(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
