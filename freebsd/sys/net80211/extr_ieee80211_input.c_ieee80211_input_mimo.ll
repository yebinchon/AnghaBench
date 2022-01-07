; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_input.c_ieee80211_input_mimo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_input.c_ieee80211_input_mimo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_rx_stats*, i32, i32)* }
%struct.ieee80211_rx_stats = type { i32, i32 }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_input_mimo(%struct.ieee80211_node* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ieee80211_rx_stats, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %7 = call i32 @bzero(%struct.ieee80211_rx_stats* %6, i32 8)
  %8 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %9 = call i64 @ieee80211_get_rx_params(%struct.mbuf* %8, %struct.ieee80211_rx_stats* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %14 = call i32 @ieee80211_process_mimo(%struct.ieee80211_node* %13, %struct.ieee80211_rx_stats* %6)
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_rx_stats*, i32, i32)*, i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_rx_stats*, i32, i32)** %18, align 8
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %19(%struct.ieee80211_node* %20, %struct.mbuf* %21, %struct.ieee80211_rx_stats* %6, i32 %23, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @bzero(%struct.ieee80211_rx_stats*, i32) #1

declare dso_local i64 @ieee80211_get_rx_params(%struct.mbuf*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @ieee80211_process_mimo(%struct.ieee80211_node*, %struct.ieee80211_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
