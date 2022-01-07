; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_tx_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_tx_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_ratectl_tx_stats = type { i32, i32 }

@IEEE80211_RATECTL_TX_STATS_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, %struct.ieee80211_ratectl_tx_stats*)* @amrr_tx_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amrr_tx_update(%struct.ieee80211vap* %0, %struct.ieee80211_ratectl_tx_stats* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_ratectl_tx_stats*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211_ratectl_tx_stats* %1, %struct.ieee80211_ratectl_tx_stats** %4, align 8
  %5 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IEEE80211_RATECTL_TX_STATS_NODE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %4, align 8
  %13 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @amrr_tx_update_cb(%struct.ieee80211_ratectl_tx_stats* %12, i32 %15)
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %23 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %4, align 8
  %24 = call i32 @ieee80211_iterate_nodes_vap(i32* %21, %struct.ieee80211vap* %22, i32 (%struct.ieee80211_ratectl_tx_stats*, i32)* @amrr_tx_update_cb, %struct.ieee80211_ratectl_tx_stats* %23)
  br label %25

25:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @amrr_tx_update_cb(%struct.ieee80211_ratectl_tx_stats*, i32) #1

declare dso_local i32 @ieee80211_iterate_nodes_vap(i32*, %struct.ieee80211vap*, i32 (%struct.ieee80211_ratectl_tx_stats*, i32)*, %struct.ieee80211_ratectl_tx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
