; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.vte_rx_desc*, i64, %struct.vte_rxdesc*, i64 }
%struct.vte_rx_desc = type { i32 }
%struct.vte_rxdesc = type { %struct.vte_rx_desc*, i32* }

@VTE_RX_RING_SZ = common dso_local global i32 0, align 4
@VTE_RX_RING_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vte_softc*)* @vte_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_init_rx_ring(%struct.vte_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vte_softc*, align 8
  %4 = alloca %struct.vte_rx_desc*, align 8
  %5 = alloca %struct.vte_rxdesc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %3, align 8
  %8 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %9 = call i32 @VTE_LOCK_ASSERT(%struct.vte_softc* %8)
  %10 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.vte_rx_desc*, %struct.vte_rx_desc** %15, align 8
  store %struct.vte_rx_desc* %16, %struct.vte_rx_desc** %4, align 8
  %17 = load %struct.vte_rx_desc*, %struct.vte_rx_desc** %4, align 8
  %18 = load i32, i32* @VTE_RX_RING_SZ, align 4
  %19 = call i32 @bzero(%struct.vte_rx_desc* %17, i32 %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %76, %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @VTE_RX_RING_CNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %20
  %25 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %26 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %28, i64 %30
  store %struct.vte_rxdesc* %31, %struct.vte_rxdesc** %5, align 8
  %32 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %5, align 8
  %33 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @VTE_RX_RING_CNT, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %40 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = add i64 %42, %46
  store i64 %47, i64* %6, align 8
  br label %54

48:                                               ; preds = %24
  %49 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %50 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 0
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %48, %38
  %55 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %56 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load %struct.vte_rx_desc*, %struct.vte_rx_desc** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.vte_rx_desc, %struct.vte_rx_desc* %58, i64 %60
  store %struct.vte_rx_desc* %61, %struct.vte_rx_desc** %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @htole32(i64 %62)
  %64 = load %struct.vte_rx_desc*, %struct.vte_rx_desc** %4, align 8
  %65 = getelementptr inbounds %struct.vte_rx_desc, %struct.vte_rx_desc* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.vte_rx_desc*, %struct.vte_rx_desc** %4, align 8
  %67 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %5, align 8
  %68 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %67, i32 0, i32 0
  store %struct.vte_rx_desc* %66, %struct.vte_rx_desc** %68, align 8
  %69 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %70 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %5, align 8
  %71 = call i64 @vte_newbuf(%struct.vte_softc* %69, %struct.vte_rxdesc* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %54
  %74 = load i32, i32* @ENOBUFS, align 4
  store i32 %74, i32* %2, align 4
  br label %92

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %20

79:                                               ; preds = %20
  %80 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %81 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %85 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %89 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @bus_dmamap_sync(i32 %83, i32 %87, i32 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %79, %73
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @VTE_LOCK_ASSERT(%struct.vte_softc*) #1

declare dso_local i32 @bzero(%struct.vte_rx_desc*, i32) #1

declare dso_local i32 @htole32(i64) #1

declare dso_local i64 @vte_newbuf(%struct.vte_softc*, %struct.vte_rxdesc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
