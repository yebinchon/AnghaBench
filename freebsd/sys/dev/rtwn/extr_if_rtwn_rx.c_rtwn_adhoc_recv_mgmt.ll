; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_adhoc_recv_mgmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_adhoc_recv_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_4__, %struct.ieee80211vap* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211vap = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rtwn_softc* }
%struct.rtwn_softc = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_rx_stats = type { i32 }
%struct.rtwn_vap = type { i32, i32 (%struct.ieee80211_node.0*, %struct.mbuf.1*, i32, %struct.ieee80211_rx_stats.2*, i32, i32)* }
%struct.ieee80211_node.0 = type opaque
%struct.mbuf.1 = type opaque
%struct.ieee80211_rx_stats.2 = type opaque

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@IEEE80211_FC0_SUBTYPE_BEACON = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_PROBE_RESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtwn_adhoc_recv_mgmt(%struct.ieee80211_node* %0, %struct.mbuf* %1, i32 %2, %struct.ieee80211_rx_stats* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rx_stats*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211vap*, align 8
  %14 = alloca %struct.rtwn_softc*, align 8
  %15 = alloca %struct.rtwn_vap*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ieee80211_rx_stats* %3, %struct.ieee80211_rx_stats** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %18, i32 0, i32 1
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %19, align 8
  store %struct.ieee80211vap* %20, %struct.ieee80211vap** %13, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %24, align 8
  store %struct.rtwn_softc* %25, %struct.rtwn_softc** %14, align 8
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %27 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %26)
  store %struct.rtwn_vap* %27, %struct.rtwn_vap** %15, align 8
  %28 = load %struct.rtwn_vap*, %struct.rtwn_vap** %15, align 8
  %29 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %28, i32 0, i32 1
  %30 = load i32 (%struct.ieee80211_node.0*, %struct.mbuf.1*, i32, %struct.ieee80211_rx_stats.2*, i32, i32)*, i32 (%struct.ieee80211_node.0*, %struct.mbuf.1*, i32, %struct.ieee80211_rx_stats.2*, i32, i32)** %29, align 8
  %31 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %32 = bitcast %struct.ieee80211_node* %31 to %struct.ieee80211_node.0*
  %33 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %34 = bitcast %struct.mbuf* %33 to %struct.mbuf.1*
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %37 = bitcast %struct.ieee80211_rx_stats* %36 to %struct.ieee80211_rx_stats.2*
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 %30(%struct.ieee80211_node.0* %32, %struct.mbuf.1* %34, i32 %35, %struct.ieee80211_rx_stats.2* %37, i32 %38, i32 %39)
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IEEE80211_S_RUN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %6
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @IEEE80211_FC0_SUBTYPE_BEACON, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @IEEE80211_FC0_SUBTYPE_PROBE_RESP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50, %46
  %55 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @le64toh(i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.rtwn_softc*, %struct.rtwn_softc** %14, align 8
  %61 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %60)
  %62 = load %struct.rtwn_softc*, %struct.rtwn_softc** %14, align 8
  %63 = load %struct.rtwn_vap*, %struct.rtwn_vap** %15, align 8
  %64 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @rtwn_get_tsf(%struct.rtwn_softc* %62, i32* %17, i32 %65)
  %67 = load %struct.rtwn_softc*, %struct.rtwn_softc** %14, align 8
  %68 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %67)
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %54
  %73 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %74 = call i32 @ieee80211_ibss_merge(%struct.ieee80211_node* %73)
  br label %75

75:                                               ; preds = %72, %54
  br label %76

76:                                               ; preds = %75, %50, %6
  ret void
}

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_get_tsf(%struct.rtwn_softc*, i32*, i32) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @ieee80211_ibss_merge(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
