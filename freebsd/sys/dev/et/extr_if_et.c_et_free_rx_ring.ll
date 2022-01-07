; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, %struct.et_rxbuf_data*, %struct.et_rxdesc_ring*, i32 }
%struct.et_rxbuf_data = type { %struct.et_rxbuf* }
%struct.et_rxbuf = type { i32*, i32 }
%struct.et_rxdesc_ring = type { i32 }

@ET_RX_NDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_free_rx_ring(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.et_rxbuf_data*, align 8
  %4 = alloca %struct.et_rxdesc_ring*, align 8
  %5 = alloca %struct.et_rxbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %7 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %8 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %7, i32 0, i32 2
  %9 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %8, align 8
  %10 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %9, i64 0
  store %struct.et_rxdesc_ring* %10, %struct.et_rxdesc_ring** %4, align 8
  %11 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %12 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %11, i32 0, i32 1
  %13 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %12, align 8
  %14 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %13, i64 0
  store %struct.et_rxbuf_data* %14, %struct.et_rxbuf_data** %3, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %53, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ET_RX_NDESC, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %3, align 8
  %21 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %20, i32 0, i32 0
  %22 = load %struct.et_rxbuf*, %struct.et_rxbuf** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %22, i64 %24
  store %struct.et_rxbuf* %25, %struct.et_rxbuf** %5, align 8
  %26 = load %struct.et_rxbuf*, %struct.et_rxbuf** %5, align 8
  %27 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %19
  %31 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %32 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %35 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %38 = call i32 @bus_dmamap_sync(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %40 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.et_rxbuf*, %struct.et_rxbuf** %5, align 8
  %43 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bus_dmamap_unload(i32 %41, i32 %44)
  %46 = load %struct.et_rxbuf*, %struct.et_rxbuf** %5, align 8
  %47 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @m_freem(i32* %48)
  %50 = load %struct.et_rxbuf*, %struct.et_rxbuf** %5, align 8
  %51 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %30, %19
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %58 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %57, i32 0, i32 2
  %59 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %58, align 8
  %60 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %59, i64 1
  store %struct.et_rxdesc_ring* %60, %struct.et_rxdesc_ring** %4, align 8
  %61 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %62 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %61, i32 0, i32 1
  %63 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %62, align 8
  %64 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %63, i64 1
  store %struct.et_rxbuf_data* %64, %struct.et_rxbuf_data** %3, align 8
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %103, %56
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ET_RX_NDESC, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %65
  %70 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %3, align 8
  %71 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %70, i32 0, i32 0
  %72 = load %struct.et_rxbuf*, %struct.et_rxbuf** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %72, i64 %74
  store %struct.et_rxbuf* %75, %struct.et_rxbuf** %5, align 8
  %76 = load %struct.et_rxbuf*, %struct.et_rxbuf** %5, align 8
  %77 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %69
  %81 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %82 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %4, align 8
  %85 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %88 = call i32 @bus_dmamap_sync(i32 %83, i32 %86, i32 %87)
  %89 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %90 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.et_rxbuf*, %struct.et_rxbuf** %5, align 8
  %93 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @bus_dmamap_unload(i32 %91, i32 %94)
  %96 = load %struct.et_rxbuf*, %struct.et_rxbuf** %5, align 8
  %97 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @m_freem(i32* %98)
  %100 = load %struct.et_rxbuf*, %struct.et_rxbuf** %5, align 8
  %101 = getelementptr inbounds %struct.et_rxbuf, %struct.et_rxbuf* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %80, %69
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %65

106:                                              ; preds = %65
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
