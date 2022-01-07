; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_tx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_softc = type { %struct.bwn_mac* }
%struct.bwn_mac = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_MIN_LEN = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@BWN_MAC_FLAG_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_softc*, %struct.ieee80211_node*, %struct.mbuf*)* @bwn_tx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_tx_start(%struct.bwn_softc* %0, %struct.ieee80211_node* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.bwn_mac*, align 8
  %9 = alloca i32, align 4
  store %struct.bwn_softc* %0, %struct.bwn_softc** %5, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %11 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %10, i32 0, i32 0
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %11, align 8
  store %struct.bwn_mac* %12, %struct.bwn_mac** %8, align 8
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %14 = call i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc* %13)
  %15 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IEEE80211_MIN_LEN, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %8, align 8
  %23 = icmp eq %struct.bwn_mac* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %3
  %25 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %26 = call i32 @m_freem(%struct.mbuf* %25)
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %4, align 4
  br label %52

28:                                               ; preds = %21
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %8, align 8
  %30 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BWN_MAC_FLAG_DMA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %8, align 8
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %38 = call i32 @bwn_dma_tx_start(%struct.bwn_mac* %36, %struct.ieee80211_node* %37, %struct.mbuf** %7)
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %8, align 8
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %42 = call i32 @bwn_pio_tx_start(%struct.bwn_mac* %40, %struct.ieee80211_node* %41, %struct.mbuf** %7)
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %38, %35 ], [ %42, %39 ]
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %49 = call i32 @m_freem(%struct.mbuf* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %47, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bwn_dma_tx_start(%struct.bwn_mac*, %struct.ieee80211_node*, %struct.mbuf**) #1

declare dso_local i32 @bwn_pio_tx_start(%struct.bwn_mac*, %struct.ieee80211_node*, %struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
