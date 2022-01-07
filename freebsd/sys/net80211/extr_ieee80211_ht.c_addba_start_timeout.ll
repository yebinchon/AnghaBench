; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_addba_start_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_addba_start_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_ampdu = type { i64, i32, i32 }

@ieee80211_addba_timeout = common dso_local global i64 0, align 8
@addba_timeout = common dso_local global i32 0, align 4
@IEEE80211_AGGR_XCHGPEND = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_tx_ampdu*)* @addba_start_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addba_start_timeout(%struct.ieee80211_tx_ampdu* %0) #0 {
  %2 = alloca %struct.ieee80211_tx_ampdu*, align 8
  store %struct.ieee80211_tx_ampdu* %0, %struct.ieee80211_tx_ampdu** %2, align 8
  %3 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %3, i32 0, i32 2
  %5 = load i64, i64* @ieee80211_addba_timeout, align 8
  %6 = load i32, i32* @addba_timeout, align 4
  %7 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %2, align 8
  %8 = call i32 @callout_reset(i32* %4, i64 %5, i32 %6, %struct.ieee80211_tx_ampdu* %7)
  %9 = load i32, i32* @IEEE80211_AGGR_XCHGPEND, align 4
  %10 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i64, i64* @ticks, align 8
  %15 = load i64, i64* @ieee80211_addba_timeout, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  ret void
}

declare dso_local i32 @callout_reset(i32*, i64, i32, %struct.ieee80211_tx_ampdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
