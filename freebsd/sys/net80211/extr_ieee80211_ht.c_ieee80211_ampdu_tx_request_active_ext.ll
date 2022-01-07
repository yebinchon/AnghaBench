; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ampdu_tx_request_active_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ampdu_tx_request_active_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211_tx_ampdu* }
%struct.ieee80211_tx_ampdu = type { i32, i64 }

@IEEE80211_AGGR_RUNNING = common dso_local global i32 0, align 4
@IEEE80211_AGGR_NAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ampdu_tx_request_active_ext(%struct.ieee80211_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_ampdu*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 15
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %41

15:                                               ; preds = %11
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %18, i64 %20
  store %struct.ieee80211_tx_ampdu* %21, %struct.ieee80211_tx_ampdu** %8, align 8
  %22 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %8, align 8
  %23 = call i32 @addba_stop_timeout(%struct.ieee80211_tx_ampdu* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load i32, i32* @IEEE80211_AGGR_RUNNING, align 4
  %28 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %40

34:                                               ; preds = %15
  %35 = load i32, i32* @IEEE80211_AGGR_NAK, align 4
  %36 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %26
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @addba_stop_timeout(%struct.ieee80211_tx_ampdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
