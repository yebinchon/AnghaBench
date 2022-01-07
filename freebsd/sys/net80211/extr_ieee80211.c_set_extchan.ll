; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_set_extchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_set_extchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32, i64, i64 }

@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_channel*)* @set_extchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_extchan(%struct.ieee80211_channel* %0) #0 {
  %2 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %2, align 8
  %3 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 4
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 4
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %33

30:                                               ; preds = %16
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
