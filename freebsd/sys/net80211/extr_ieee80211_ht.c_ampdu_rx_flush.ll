; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_rx_ampdu = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_rx_ampdu*)* @ampdu_rx_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ampdu_rx_flush(%struct.ieee80211_node* %0, %struct.ieee80211_rx_ampdu* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.ieee80211_rx_ampdu*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.ieee80211_rx_ampdu* %1, %struct.ieee80211_rx_ampdu** %4, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 0
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %4, align 8
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ampdu_dispatch_slot(%struct.ieee80211_rx_ampdu* %18, %struct.ieee80211_node* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %38

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %41

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %11

41:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @ampdu_dispatch_slot(%struct.ieee80211_rx_ampdu*, %struct.ieee80211_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
