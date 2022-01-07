; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_monitor.c_monitor_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_monitor.c_monitor_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_rx_stats = type { i32 }

@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_rx_stats*, i32, i32)* @monitor_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_input(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_rx_stats* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.ieee80211_rx_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211vap*, align 8
  %12 = alloca %struct.ifnet*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.ieee80211_rx_stats* %2, %struct.ieee80211_rx_stats** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 0
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %11, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 0
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %12, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %20 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %21 = call i32 @if_inc_counter(%struct.ifnet* %19, i32 %20, i32 1)
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %23 = call i64 @ieee80211_radiotap_active_vap(%struct.ieee80211vap* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %28 = call i32 @ieee80211_radiotap_rx(%struct.ieee80211vap* %26, %struct.mbuf* %27)
  br label %29

29:                                               ; preds = %25, %5
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = call i32 @m_freem(%struct.mbuf* %30)
  ret i32 -1
}

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @ieee80211_radiotap_active_vap(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_radiotap_rx(%struct.ieee80211vap*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
