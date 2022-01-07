; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_demote11b.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_demote11b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32 }
%struct.ieee80211_channel = type { i32, i32 }

@IEEE80211_MODE_AUTO = common dso_local global i64 0, align 8
@IEEE80211_CHAN_PUREG = common dso_local global i32 0, align 4
@IEEE80211_CHAN_G = common dso_local global i32 0, align 4
@IEEE80211_CHAN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.ieee80211vap*, %struct.ieee80211_channel*)* @demote11b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @demote11b(%struct.ieee80211vap* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %7 = call i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_MODE_AUTO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_CHAN_PUREG, align 4
  %26 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = load i32, i32* @IEEE80211_CHAN_B, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.ieee80211_channel* @ieee80211_find_channel(i32 %18, i32 %21, i32 %31)
  store %struct.ieee80211_channel* %32, %struct.ieee80211_channel** %5, align 8
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %34 = icmp ne %struct.ieee80211_channel* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %15
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  store %struct.ieee80211_channel* %36, %struct.ieee80211_channel** %4, align 8
  br label %37

37:                                               ; preds = %35, %15
  br label %38

38:                                               ; preds = %37, %9, %2
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  ret %struct.ieee80211_channel* %39
}

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel*) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_find_channel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
