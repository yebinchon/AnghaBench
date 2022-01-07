; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_dispatch_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_dispatch_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_ampdu = type { i32, i32, %struct.mbuf** }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_ampdu*, %struct.ieee80211_node*, i32)* @ampdu_dispatch_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ampdu_dispatch_slot(%struct.ieee80211_rx_ampdu* %0, %struct.ieee80211_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_rx_ampdu*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store %struct.ieee80211_rx_ampdu* %0, %struct.ieee80211_rx_ampdu** %5, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %9, i32 0, i32 2
  %11 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %11, i64 %13
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %16 = icmp eq %struct.mbuf* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %19, i32 0, i32 2
  %21 = load %struct.mbuf**, %struct.mbuf*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %21, i64 %23
  %25 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  store %struct.mbuf* %25, %struct.mbuf** %8, align 8
  %26 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %26, i32 0, i32 2
  %28 = load %struct.mbuf**, %struct.mbuf*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %28, i64 %30
  store %struct.mbuf* null, %struct.mbuf** %31, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %48 = call i32 @ampdu_dispatch(%struct.ieee80211_node* %46, %struct.mbuf* %47)
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %18, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ampdu_dispatch(%struct.ieee80211_node*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
