; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32, %struct.et_txdesc_ring, %struct.et_txbuf_data }
%struct.et_txdesc_ring = type { i32 }
%struct.et_txbuf_data = type { %struct.et_txbuf* }
%struct.et_txbuf = type { i32*, i32 }

@ET_TX_NDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_free_tx_ring(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.et_txdesc_ring*, align 8
  %4 = alloca %struct.et_txbuf_data*, align 8
  %5 = alloca %struct.et_txbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %7 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %8 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %7, i32 0, i32 3
  store %struct.et_txbuf_data* %8, %struct.et_txbuf_data** %4, align 8
  %9 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %10 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %9, i32 0, i32 2
  store %struct.et_txdesc_ring* %10, %struct.et_txdesc_ring** %3, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ET_TX_NDESC, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %17 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %16, i32 0, i32 0
  %18 = load %struct.et_txbuf*, %struct.et_txbuf** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %18, i64 %20
  store %struct.et_txbuf* %21, %struct.et_txbuf** %5, align 8
  %22 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %23 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %15
  %27 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %28 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %31 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %34 = call i32 @bus_dmamap_sync(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %36 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %39 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bus_dmamap_unload(i32 %37, i32 %40)
  %42 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %43 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @m_freem(i32* %44)
  %46 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %47 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %26, %15
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %11

52:                                               ; preds = %11
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
