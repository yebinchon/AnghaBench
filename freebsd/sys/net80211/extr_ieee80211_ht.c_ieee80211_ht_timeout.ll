; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i64 }

@IEEE80211_FHT_NONHT_PR = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@IEEE80211_NONHT_PRESENT_AGE = common dso_local global i64 0, align 8
@IEEE80211_MSG_11N = common dso_local global i32 0, align 4
@ni = common dso_local global i32 0, align 4
@vap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_timeout(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %3 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %4 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %3)
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IEEE80211_FHT_NONHT_PR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @ticks, align 4
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IEEE80211_NONHT_PRESENT_AGE, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @ieee80211_time_after(i32 %12, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load i32, i32* @IEEE80211_FHT_NONHT_PR, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %28 = call i32 @htinfo_update(%struct.ieee80211com* %27)
  br label %29

29:                                               ; preds = %20, %11, %1
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i64 @ieee80211_time_after(i32, i64) #1

declare dso_local i32 @htinfo_update(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
