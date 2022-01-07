; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ampdu_tx_request_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ampdu_tx_request_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211_tx_ampdu* }
%struct.ieee80211_tx_ampdu = type { i32 }

@IEEE80211_AGGR_SETUP = common dso_local global i32 0, align 4
@IEEE80211_AGGR_NAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ampdu_tx_request_ext(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_tx_ampdu*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 15
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %38

13:                                               ; preds = %9
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %16, i64 %18
  store %struct.ieee80211_tx_ampdu* %19, %struct.ieee80211_tx_ampdu** %6, align 8
  %20 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_AGGR_SETUP, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %6, align 8
  %28 = call i32 @ampdu_tx_setup(%struct.ieee80211_tx_ampdu* %27)
  br label %29

29:                                               ; preds = %26, %13
  %30 = load i32, i32* @IEEE80211_AGGR_NAK, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %6, align 8
  %37 = call i32 @addba_start_timeout(%struct.ieee80211_tx_ampdu* %36)
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %29, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ampdu_tx_setup(%struct.ieee80211_tx_ampdu*) #1

declare dso_local i32 @addba_start_timeout(%struct.ieee80211_tx_ampdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
