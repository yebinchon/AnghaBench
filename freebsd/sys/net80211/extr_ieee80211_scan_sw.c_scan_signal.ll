; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_scan_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_scan_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_scan_state*, i32)* @scan_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_signal(%struct.ieee80211_scan_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %6, i32 0, i32 0
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  store %struct.ieee80211com* %8, %struct.ieee80211com** %5, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %10 = call i32 @IEEE80211_UNLOCK_ASSERT(%struct.ieee80211com* %9)
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %12 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %11)
  %13 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @scan_signal_locked(%struct.ieee80211_scan_state* %13, i32 %14)
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %17 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %16)
  ret void
}

declare dso_local i32 @IEEE80211_UNLOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @scan_signal_locked(%struct.ieee80211_scan_state*, i32) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
