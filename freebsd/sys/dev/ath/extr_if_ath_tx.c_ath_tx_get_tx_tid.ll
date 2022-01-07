; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_get_tx_tid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_get_tx_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_ampdu = type { i32 }
%struct.ath_node = type { %struct.ieee80211_node }
%struct.ieee80211_node = type { %struct.ieee80211_tx_ampdu* }

@IEEE80211_NONQOS_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_tx_ampdu* @ath_tx_get_tx_tid(%struct.ath_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_tx_ampdu*, align 8
  %4 = alloca %struct.ath_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_tx_ampdu*, align 8
  store %struct.ath_node* %0, %struct.ath_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ath_node*, %struct.ath_node** %4, align 8
  %9 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %8, i32 0, i32 0
  store %struct.ieee80211_node* %9, %struct.ieee80211_node** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IEEE80211_NONQOS_TID, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.ieee80211_tx_ampdu* null, %struct.ieee80211_tx_ampdu** %3, align 8
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %17, i64 %19
  store %struct.ieee80211_tx_ampdu* %20, %struct.ieee80211_tx_ampdu** %7, align 8
  %21 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  store %struct.ieee80211_tx_ampdu* %21, %struct.ieee80211_tx_ampdu** %3, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %3, align 8
  ret %struct.ieee80211_tx_ampdu* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
