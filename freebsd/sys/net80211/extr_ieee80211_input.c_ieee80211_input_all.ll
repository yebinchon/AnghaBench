; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_input.c_ieee80211_input_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_input.c_ieee80211_input_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i32, i32 }

@IEEE80211_R_NF = common dso_local global i32 0, align 4
@IEEE80211_R_RSSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_input_all(%struct.ieee80211com* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rx_stats, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @IEEE80211_R_NF, align 4
  %12 = load i32, i32* @IEEE80211_R_RSSI, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %10, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %10, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %20 = call i32 @ieee80211_add_rx_params(%struct.mbuf* %19, %struct.ieee80211_rx_stats* %10)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %27

23:                                               ; preds = %4
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %26 = call i32 @ieee80211_input_mimo_all(%struct.ieee80211com* %24, %struct.mbuf* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @ieee80211_add_rx_params(%struct.mbuf*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @ieee80211_input_mimo_all(%struct.ieee80211com*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
