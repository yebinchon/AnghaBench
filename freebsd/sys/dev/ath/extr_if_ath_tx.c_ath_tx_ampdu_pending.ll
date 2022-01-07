; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_ampdu_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_ampdu_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32 }
%struct.ieee80211_tx_ampdu = type { i32 }

@IEEE80211_NONQOS_TID = common dso_local global i32 0, align 4
@IEEE80211_AGGR_XCHGPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ath_node*, i32)* @ath_tx_ampdu_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_tx_ampdu_pending(%struct.ath_softc* %0, %struct.ath_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_ampdu*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ath_node* %1, %struct.ath_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @IEEE80211_NONQOS_TID, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

13:                                               ; preds = %3
  %14 = load %struct.ath_node*, %struct.ath_node** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.ieee80211_tx_ampdu* @ath_tx_get_tx_tid(%struct.ath_node* %14, i32 %15)
  store %struct.ieee80211_tx_ampdu* %16, %struct.ieee80211_tx_ampdu** %8, align 8
  %17 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %8, align 8
  %18 = icmp eq %struct.ieee80211_tx_ampdu* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %30

20:                                               ; preds = %13
  %21 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IEEE80211_AGGR_XCHGPEND, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %20, %19, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.ieee80211_tx_ampdu* @ath_tx_get_tx_tid(%struct.ath_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
