; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_alq.c_ieee80211_alq_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_alq.c_ieee80211_alq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale = type { i32 }

@ieee80211_alq = common dso_local global i32 0, align 4
@ALQ_NOWAIT = common dso_local global i32 0, align 4
@ieee80211_alq_lost = common dso_local global i32 0, align 4
@ieee80211_alq_logged = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ale* (i64)* @ieee80211_alq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ale* @ieee80211_alq_get(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ale*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @ieee80211_alq, align 4
  %5 = load i64, i64* %2, align 8
  %6 = add i64 %5, 4
  %7 = load i32, i32* @ALQ_NOWAIT, align 4
  %8 = call %struct.ale* @alq_getn(i32 %4, i64 %6, i32 %7)
  store %struct.ale* %8, %struct.ale** %3, align 8
  %9 = load %struct.ale*, %struct.ale** %3, align 8
  %10 = icmp ne %struct.ale* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ieee80211_alq_lost, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @ieee80211_alq_lost, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ieee80211_alq_logged, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @ieee80211_alq_logged, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.ale*, %struct.ale** %3, align 8
  ret %struct.ale* %18
}

declare dso_local %struct.ale* @alq_getn(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
