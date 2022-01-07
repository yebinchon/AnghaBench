; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_tx_update_ratectl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_tx_update_ratectl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { %struct.ieee80211_ratectl_tx_stats }
%struct.ieee80211_ratectl_tx_stats = type { i32, i64, i64, i64, %struct.ieee80211_node* }
%struct.ieee80211_node = type { i32 }
%struct.otus_node = type { i64, i64, i64 }

@IEEE80211_RATECTL_TX_STATS_NODE = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_STATS_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otus_softc*, %struct.ieee80211_node*)* @otus_tx_update_ratectl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otus_tx_update_ratectl(%struct.otus_softc* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca %struct.otus_softc*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211_ratectl_tx_stats*, align 8
  %6 = alloca %struct.otus_node*, align 8
  store %struct.otus_softc* %0, %struct.otus_softc** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %7 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %8 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %7, i32 0, i32 0
  store %struct.ieee80211_ratectl_tx_stats* %8, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %10 = call %struct.otus_node* @OTUS_NODE(%struct.ieee80211_node* %9)
  store %struct.otus_node* %10, %struct.otus_node** %6, align 8
  %11 = load i32, i32* @IEEE80211_RATECTL_TX_STATS_NODE, align 4
  %12 = load i32, i32* @IEEE80211_RATECTL_TX_STATS_RETRIES, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %17 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %17, i32 0, i32 4
  store %struct.ieee80211_node* %16, %struct.ieee80211_node** %18, align 8
  %19 = load %struct.otus_node*, %struct.otus_node** %6, align 8
  %20 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  %24 = load %struct.otus_node*, %struct.otus_node** %6, align 8
  %25 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.otus_node*, %struct.otus_node** %6, align 8
  %28 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.otus_node*, %struct.otus_node** %6, align 8
  %34 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %42 = call i32 @ieee80211_ratectl_tx_update(i32 %40, %struct.ieee80211_ratectl_tx_stats* %41)
  %43 = load %struct.otus_node*, %struct.otus_node** %6, align 8
  %44 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.otus_node*, %struct.otus_node** %6, align 8
  %46 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.otus_node*, %struct.otus_node** %6, align 8
  %48 = getelementptr inbounds %struct.otus_node, %struct.otus_node* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  ret void
}

declare dso_local %struct.otus_node* @OTUS_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_ratectl_tx_update(i32, %struct.ieee80211_ratectl_tx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
