; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_free_rx_ring32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_free_rx_ring32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, %struct.bwi_rxbuf_data, %struct.bwi_ring_data }
%struct.bwi_rxbuf_data = type { %struct.bwi_rxbuf* }
%struct.bwi_rxbuf = type { i32*, i32 }
%struct.bwi_ring_data = type { i32 }

@BWI_RX_NDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*)* @bwi_free_rx_ring32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_free_rx_ring32(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca %struct.bwi_ring_data*, align 8
  %4 = alloca %struct.bwi_rxbuf_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwi_rxbuf*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  %7 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %7, i32 0, i32 2
  store %struct.bwi_ring_data* %8, %struct.bwi_ring_data** %3, align 8
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %9, i32 0, i32 1
  store %struct.bwi_rxbuf_data* %10, %struct.bwi_rxbuf_data** %4, align 8
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %12 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %3, align 8
  %13 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bwi_reset_rx_ring32(%struct.bwi_softc* %11, i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %46, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BWI_RX_NDESC, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load %struct.bwi_rxbuf_data*, %struct.bwi_rxbuf_data** %4, align 8
  %22 = getelementptr inbounds %struct.bwi_rxbuf_data, %struct.bwi_rxbuf_data* %21, i32 0, i32 0
  %23 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %23, i64 %25
  store %struct.bwi_rxbuf* %26, %struct.bwi_rxbuf** %6, align 8
  %27 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %6, align 8
  %28 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %20
  %32 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %6, align 8
  %36 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bus_dmamap_unload(i32 %34, i32 %37)
  %39 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %6, align 8
  %40 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @m_freem(i32* %41)
  %43 = load %struct.bwi_rxbuf*, %struct.bwi_rxbuf** %6, align 8
  %44 = getelementptr inbounds %struct.bwi_rxbuf, %struct.bwi_rxbuf* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %31, %20
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %16

49:                                               ; preds = %16
  ret void
}

declare dso_local i32 @bwi_reset_rx_ring32(%struct.bwi_softc*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
