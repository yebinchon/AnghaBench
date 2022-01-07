; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_ampdu = type { i32, i32 }
%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rx_ampdu*, %struct.ieee80211_node*)* @ampdu_rx_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ampdu_rx_dispatch(%struct.ieee80211_rx_ampdu* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca %struct.ieee80211_rx_ampdu*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_rx_ampdu* %0, %struct.ieee80211_rx_ampdu** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 0
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %5, align 8
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %3, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @ampdu_dispatch_slot(%struct.ieee80211_rx_ampdu* %17, %struct.ieee80211_node* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %27

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %10

27:                                               ; preds = %22, %10
  %28 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %3, align 8
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ampdu_rx_moveup(%struct.ieee80211_rx_ampdu* %28, %struct.ieee80211_node* %29, i32 %30, i32 -1)
  %32 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @IEEE80211_SEQ_ADD(i32 %34, i32 %35)
  %37 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %39
  store i32 %44, i32* %42, align 4
  ret void
}

declare dso_local i64 @ampdu_dispatch_slot(%struct.ieee80211_rx_ampdu*, %struct.ieee80211_node*, i32) #1

declare dso_local i32 @ampdu_rx_moveup(%struct.ieee80211_rx_ampdu*, %struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @IEEE80211_SEQ_ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
