; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { i64, %struct.sta_table* }
%struct.sta_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_scan_state*)* @sta_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_flush(%struct.ieee80211_scan_state* %0) #0 {
  %2 = alloca %struct.ieee80211_scan_state*, align 8
  %3 = alloca %struct.sta_table*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %2, align 8
  %4 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %4, i32 0, i32 1
  %6 = load %struct.sta_table*, %struct.sta_table** %5, align 8
  store %struct.sta_table* %6, %struct.sta_table** %3, align 8
  %7 = load %struct.sta_table*, %struct.sta_table** %3, align 8
  %8 = call i32 @IEEE80211_SCAN_TABLE_LOCK(%struct.sta_table* %7)
  %9 = load %struct.sta_table*, %struct.sta_table** %3, align 8
  %10 = call i32 @sta_flush_table(%struct.sta_table* %9)
  %11 = load %struct.sta_table*, %struct.sta_table** %3, align 8
  %12 = call i32 @IEEE80211_SCAN_TABLE_UNLOCK(%struct.sta_table* %11)
  %13 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret i32 0
}

declare dso_local i32 @IEEE80211_SCAN_TABLE_LOCK(%struct.sta_table*) #1

declare dso_local i32 @sta_flush_table(%struct.sta_table*) #1

declare dso_local i32 @IEEE80211_SCAN_TABLE_UNLOCK(%struct.sta_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
