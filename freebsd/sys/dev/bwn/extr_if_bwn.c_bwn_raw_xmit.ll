; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, i32, %struct.bwn_mac* }
%struct.bwn_mac = type { i64 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }

@BWN_FLAG_RUNNING = common dso_local global i32 0, align 4
@BWN_MAC_STATUS_STARTED = common dso_local global i64 0, align 8
@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @bwn_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.bwn_softc*, align 8
  %10 = alloca %struct.bwn_mac*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %8, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load %struct.bwn_softc*, %struct.bwn_softc** %16, align 8
  store %struct.bwn_softc* %17, %struct.bwn_softc** %9, align 8
  %18 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  %19 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %18, i32 0, i32 2
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %19, align 8
  store %struct.bwn_mac* %20, %struct.bwn_mac** %10, align 8
  %21 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  %22 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BWN_FLAG_RUNNING, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %10, align 8
  %29 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BWN_MAC_STATUS_STARTED, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %3
  %34 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %35 = call i32 @m_freem(%struct.mbuf* %34)
  %36 = load i32, i32* @ENETDOWN, align 4
  store i32 %36, i32* %4, align 4
  br label %64

37:                                               ; preds = %27
  %38 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  %39 = call i32 @BWN_LOCK(%struct.bwn_softc* %38)
  %40 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %42 = call i64 @bwn_tx_isfull(%struct.bwn_softc* %40, %struct.mbuf* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %46 = call i32 @m_freem(%struct.mbuf* %45)
  %47 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  %48 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %47)
  %49 = load i32, i32* @ENOBUFS, align 4
  store i32 %49, i32* %4, align 4
  br label %64

50:                                               ; preds = %37
  %51 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  %52 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = call i32 @bwn_tx_start(%struct.bwn_softc* %51, %struct.ieee80211_node* %52, %struct.mbuf* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  %59 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %58, i32 0, i32 1
  store i32 5, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  %62 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %44, %33
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @BWN_LOCK(%struct.bwn_softc*) #1

declare dso_local i64 @bwn_tx_isfull(%struct.bwn_softc*, %struct.mbuf*) #1

declare dso_local i32 @BWN_UNLOCK(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_tx_start(%struct.bwn_softc*, %struct.ieee80211_node*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
