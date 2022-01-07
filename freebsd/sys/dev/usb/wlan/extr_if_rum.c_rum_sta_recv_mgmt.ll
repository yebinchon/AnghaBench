; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_sta_recv_mgmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_sta_recv_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rum_softc* }
%struct.rum_softc = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_rx_stats = type { i32 }
%struct.rum_vap = type { i32 (%struct.ieee80211_node.0*, %struct.mbuf.1*, i32, %struct.ieee80211_rx_stats.2*, i32, i32)* }
%struct.ieee80211_node.0 = type opaque
%struct.mbuf.1 = type opaque
%struct.ieee80211_rx_stats.2 = type opaque

@IEEE80211_S_SLEEP = common dso_local global i64 0, align 8
@IEEE80211_FC0_SUBTYPE_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"beacon, mybss %d (flags %02X)\0A\00", align 1
@RT2573_RX_MYBSS = common dso_local global i32 0, align 4
@RT2573_RX_BC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.mbuf*, i32, %struct.ieee80211_rx_stats*, i32, i32)* @rum_sta_recv_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_sta_recv_mgmt(%struct.ieee80211_node* %0, %struct.mbuf* %1, i32 %2, %struct.ieee80211_rx_stats* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rx_stats*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211vap*, align 8
  %14 = alloca %struct.rum_softc*, align 8
  %15 = alloca %struct.rum_vap*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ieee80211_rx_stats* %3, %struct.ieee80211_rx_stats** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 0
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  store %struct.ieee80211vap* %18, %struct.ieee80211vap** %13, align 8
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.rum_softc*, %struct.rum_softc** %22, align 8
  store %struct.rum_softc* %23, %struct.rum_softc** %14, align 8
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %25 = call %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap* %24)
  store %struct.rum_vap* %25, %struct.rum_vap** %15, align 8
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IEEE80211_S_SLEEP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @IEEE80211_FC0_SUBTYPE_BEACON, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load %struct.rum_softc*, %struct.rum_softc** %14, align 8
  %37 = call i32 @RUM_LOCK(%struct.rum_softc* %36)
  %38 = load %struct.rum_softc*, %struct.rum_softc** %14, align 8
  %39 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RT2573_RX_MYBSS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.rum_softc*, %struct.rum_softc** %14, align 8
  %48 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DPRINTFN(i32 12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.rum_softc*, %struct.rum_softc** %14, align 8
  %52 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RT2573_RX_MYBSS, align 4
  %55 = load i32, i32* @RT2573_RX_BC, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = load i32, i32* @RT2573_RX_MYBSS, align 4
  %59 = load i32, i32* @RT2573_RX_BC, align 4
  %60 = or i32 %58, %59
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %35
  %63 = load %struct.rum_softc*, %struct.rum_softc** %14, align 8
  %64 = call i32 @rum_set_power_state(%struct.rum_softc* %63, i32 1)
  br label %65

65:                                               ; preds = %62, %35
  %66 = load %struct.rum_softc*, %struct.rum_softc** %14, align 8
  %67 = call i32 @RUM_UNLOCK(%struct.rum_softc* %66)
  br label %68

68:                                               ; preds = %65, %31, %6
  %69 = load %struct.rum_vap*, %struct.rum_vap** %15, align 8
  %70 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %69, i32 0, i32 0
  %71 = load i32 (%struct.ieee80211_node.0*, %struct.mbuf.1*, i32, %struct.ieee80211_rx_stats.2*, i32, i32)*, i32 (%struct.ieee80211_node.0*, %struct.mbuf.1*, i32, %struct.ieee80211_rx_stats.2*, i32, i32)** %70, align 8
  %72 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %73 = bitcast %struct.ieee80211_node* %72 to %struct.ieee80211_node.0*
  %74 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %75 = bitcast %struct.mbuf* %74 to %struct.mbuf.1*
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %10, align 8
  %78 = bitcast %struct.ieee80211_rx_stats* %77 to %struct.ieee80211_rx_stats.2*
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 %71(%struct.ieee80211_node.0* %73, %struct.mbuf.1* %75, i32 %76, %struct.ieee80211_rx_stats.2* %78, i32 %79, i32 %80)
  ret void
}

declare dso_local %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

declare dso_local i32 @rum_set_power_state(%struct.rum_softc*, i32) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
