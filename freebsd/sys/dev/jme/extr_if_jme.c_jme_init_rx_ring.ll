; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { %struct.TYPE_2__, %struct.jme_ring_data, i64 }
%struct.TYPE_2__ = type { i32, i32, %struct.jme_rxdesc*, i64 }
%struct.jme_rxdesc = type { i32*, i32* }
%struct.jme_ring_data = type { i32* }

@JME_RX_RING_SIZE = common dso_local global i32 0, align 4
@JME_RX_RING_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_softc*)* @jme_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_init_rx_ring(%struct.jme_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_softc*, align 8
  %4 = alloca %struct.jme_ring_data*, align 8
  %5 = alloca %struct.jme_rxdesc*, align 8
  %6 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %3, align 8
  %7 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %8 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %11 = call i32 @JME_RXCHAIN_RESET(%struct.jme_softc* %10)
  %12 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %13 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %15 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %14, i32 0, i32 1
  store %struct.jme_ring_data* %15, %struct.jme_ring_data** %4, align 8
  %16 = load %struct.jme_ring_data*, %struct.jme_ring_data** %4, align 8
  %17 = getelementptr inbounds %struct.jme_ring_data, %struct.jme_ring_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @JME_RX_RING_SIZE, align 4
  %20 = call i32 @bzero(i32* %18, i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %50, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @JME_RX_RING_CNT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %27 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %29, i64 %31
  store %struct.jme_rxdesc* %32, %struct.jme_rxdesc** %5, align 8
  %33 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %34 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.jme_ring_data*, %struct.jme_ring_data** %4, align 8
  %36 = getelementptr inbounds %struct.jme_ring_data, %struct.jme_ring_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %42 = getelementptr inbounds %struct.jme_rxdesc, %struct.jme_rxdesc* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %44 = load %struct.jme_rxdesc*, %struct.jme_rxdesc** %5, align 8
  %45 = call i64 @jme_newbuf(%struct.jme_softc* %43, %struct.jme_rxdesc* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %25
  %48 = load i32, i32* @ENOBUFS, align 4
  store i32 %48, i32* %2, align 4
  br label %66

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %55 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %59 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %63 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @bus_dmamap_sync(i32 %57, i32 %61, i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %53, %47
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @JME_RXCHAIN_RESET(%struct.jme_softc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @jme_newbuf(%struct.jme_softc*, %struct.jme_rxdesc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
