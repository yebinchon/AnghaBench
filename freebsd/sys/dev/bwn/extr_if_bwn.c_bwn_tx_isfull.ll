; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_tx_isfull.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_tx_isfull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_softc = type { i32, %struct.bwn_mac* }
%struct.bwn_mac = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bwn_dma_ring = type { i32 }
%struct.bwn_pio_txqueue = type { i64, i32, i32 }

@BWN_MAC_FLAG_DMA = common dso_local global i32 0, align 4
@BWN_TX_SLOTS_PER_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_softc*, %struct.mbuf*)* @bwn_tx_isfull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_tx_isfull(%struct.bwn_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.bwn_dma_ring*, align 8
  %7 = alloca %struct.bwn_mac*, align 8
  %8 = alloca %struct.bwn_pio_txqueue*, align 8
  %9 = alloca i32, align 4
  store %struct.bwn_softc* %0, %struct.bwn_softc** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %10, i32 0, i32 1
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %11, align 8
  store %struct.bwn_mac* %12, %struct.bwn_mac** %7, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %7, align 8
  %18 = call i64 @BWN_HDRSIZE(%struct.bwn_mac* %17)
  %19 = add nsw i64 %16, %18
  %20 = call i32 @roundup(i64 %19, i32 4)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %22 = call i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc* %21)
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %7, align 8
  %24 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BWN_MAC_FLAG_DMA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %2
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %7, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = call i32 @M_WME_GETAC(%struct.mbuf* %31)
  %33 = call %struct.bwn_dma_ring* @bwn_dma_select(%struct.bwn_mac* %30, i32 %32)
  store %struct.bwn_dma_ring* %33, %struct.bwn_dma_ring** %6, align 8
  %34 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %6, align 8
  %35 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %6, align 8
  %40 = call i64 @bwn_dma_freeslot(%struct.bwn_dma_ring* %39)
  %41 = load i64, i64* @BWN_TX_SLOTS_PER_FRAME, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %29
  %44 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %6, align 8
  %45 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %75

46:                                               ; preds = %38
  br label %74

47:                                               ; preds = %2
  %48 = load %struct.bwn_mac*, %struct.bwn_mac** %7, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %50 = call i32 @M_WME_GETAC(%struct.mbuf* %49)
  %51 = call %struct.bwn_pio_txqueue* @bwn_pio_select(%struct.bwn_mac* %48, i32 %50)
  store %struct.bwn_pio_txqueue* %51, %struct.bwn_pio_txqueue** %8, align 8
  %52 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %8, align 8
  %53 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %8, align 8
  %59 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %8, align 8
  %65 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %8, align 8
  %68 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = icmp sgt i32 %63, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62, %56, %47
  br label %75

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %46
  store i32 0, i32* %3, align 4
  br label %80

75:                                               ; preds = %72, %43
  %76 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %77 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %76, i32 0, i32 0
  %78 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %79 = call i32 @mbufq_prepend(i32* %77, %struct.mbuf* %78)
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %74
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i64 @BWN_HDRSIZE(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc*) #1

declare dso_local %struct.bwn_dma_ring* @bwn_dma_select(%struct.bwn_mac*, i32) #1

declare dso_local i32 @M_WME_GETAC(%struct.mbuf*) #1

declare dso_local i64 @bwn_dma_freeslot(%struct.bwn_dma_ring*) #1

declare dso_local %struct.bwn_pio_txqueue* @bwn_pio_select(%struct.bwn_mac*, i32) #1

declare dso_local i32 @mbufq_prepend(i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
