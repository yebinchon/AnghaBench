; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_rx_ring_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_rx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { %struct.TYPE_3__, %struct.vr_ring_data }
%struct.TYPE_3__ = type { i32, i32, %struct.vr_rxdesc*, i64 }
%struct.vr_rxdesc = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.vr_ring_data = type { %struct.TYPE_4__* }

@VR_RX_RING_SIZE = common dso_local global i32 0, align 4
@VR_RX_RING_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vr_softc*)* @vr_rx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_rx_ring_init(%struct.vr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vr_softc*, align 8
  %4 = alloca %struct.vr_ring_data*, align 8
  %5 = alloca %struct.vr_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %3, align 8
  %8 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %11, i32 0, i32 1
  store %struct.vr_ring_data* %12, %struct.vr_ring_data** %4, align 8
  %13 = load %struct.vr_ring_data*, %struct.vr_ring_data** %4, align 8
  %14 = getelementptr inbounds %struct.vr_ring_data, %struct.vr_ring_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* @VR_RX_RING_SIZE, align 4
  %17 = call i32 @bzero(%struct.TYPE_4__* %15, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %70, %1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @VR_RX_RING_CNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %24 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load %struct.vr_rxdesc*, %struct.vr_rxdesc** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.vr_rxdesc, %struct.vr_rxdesc* %26, i64 %28
  store %struct.vr_rxdesc* %29, %struct.vr_rxdesc** %5, align 8
  %30 = load %struct.vr_rxdesc*, %struct.vr_rxdesc** %5, align 8
  %31 = getelementptr inbounds %struct.vr_rxdesc, %struct.vr_rxdesc* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.vr_ring_data*, %struct.vr_ring_data** %4, align 8
  %33 = getelementptr inbounds %struct.vr_ring_data, %struct.vr_ring_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = load %struct.vr_rxdesc*, %struct.vr_rxdesc** %5, align 8
  %39 = getelementptr inbounds %struct.vr_rxdesc, %struct.vr_rxdesc* %38, i32 0, i32 0
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @VR_RX_RING_CNT, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %22
  %45 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %46 = call i32 @VR_RX_RING_ADDR(%struct.vr_softc* %45, i32 0)
  store i32 %46, i32* %6, align 4
  br label %52

47:                                               ; preds = %22
  %48 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @VR_RX_RING_ADDR(%struct.vr_softc* %48, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @VR_ADDR_LO(i32 %53)
  %55 = call i32 @htole32(i32 %54)
  %56 = load %struct.vr_ring_data*, %struct.vr_ring_data** %4, align 8
  %57 = getelementptr inbounds %struct.vr_ring_data, %struct.vr_ring_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @vr_newbuf(%struct.vr_softc* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* @ENOBUFS, align 4
  store i32 %68, i32* %2, align 4
  br label %86

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %18

73:                                               ; preds = %18
  %74 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %75 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %79 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %83 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @bus_dmamap_sync(i32 %77, i32 %81, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %73, %67
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @VR_RX_RING_ADDR(%struct.vr_softc*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @VR_ADDR_LO(i32) #1

declare dso_local i64 @vr_newbuf(%struct.vr_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
