; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_ratectl_tx_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_ratectl_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.bwn_txstatus = type { i32, i64 }
%struct.ieee80211_ratectl_tx_status = type { i32, i32, i32 }

@IEEE80211_RATECTL_STATUS_LONG_RETRY = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_SUCCESS = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.bwn_txstatus*)* @bwn_ratectl_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_ratectl_tx_complete(%struct.ieee80211_node* %0, %struct.bwn_txstatus* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.bwn_txstatus*, align 8
  %5 = alloca %struct.ieee80211_ratectl_tx_status, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.bwn_txstatus* %1, %struct.bwn_txstatus** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @IEEE80211_RATECTL_STATUS_LONG_RETRY, align 4
  %8 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %5, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %10 = getelementptr inbounds %struct.bwn_txstatus, %struct.bwn_txstatus* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @IEEE80211_RATECTL_TX_SUCCESS, align 4
  %15 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %17 = getelementptr inbounds %struct.bwn_txstatus, %struct.bwn_txstatus* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED, align 4
  %22 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %24 = getelementptr inbounds %struct.bwn_txstatus, %struct.bwn_txstatus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %20
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %34 = call i32 @ieee80211_ratectl_tx_complete(%struct.ieee80211_node* %33, %struct.ieee80211_ratectl_tx_status* %5)
  ret void
}

declare dso_local i32 @ieee80211_ratectl_tx_complete(%struct.ieee80211_node*, %struct.ieee80211_ratectl_tx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
