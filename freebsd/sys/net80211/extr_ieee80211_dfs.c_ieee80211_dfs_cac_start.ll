; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_ieee80211_dfs_cac_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_ieee80211_dfs_cac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.TYPE_2__*, %struct.ieee80211_dfs_state }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_dfs_state = type { i32 }

@CAC_TIMEOUT = common dso_local global i32 0, align 4
@cac_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"start %d second CAC timer on channel %u (%u MHz)\0A\00", align 1
@IEEE80211_NOTIFY_CAC_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_dfs_cac_start(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_dfs_state*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 1
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 1
  store %struct.ieee80211_dfs_state* %9, %struct.ieee80211_dfs_state** %4, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %10)
  %12 = load %struct.ieee80211_dfs_state*, %struct.ieee80211_dfs_state** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_dfs_state, %struct.ieee80211_dfs_state* %12, i32 0, i32 0
  %14 = load i32, i32* @CAC_TIMEOUT, align 4
  %15 = load i32, i32* @cac_timeout, align 4
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %17 = call i32 @callout_reset(i32* %13, i32 %14, i32 %15, %struct.ieee80211vap* %16)
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CAC_TIMEOUT, align 4
  %22 = call i32 @ticks_to_secs(i32 %21)
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @if_printf(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %32)
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %35 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* @IEEE80211_NOTIFY_CAC_START, align 4
  %39 = call i32 @ieee80211_notify_cac(%struct.ieee80211com* %34, %struct.TYPE_2__* %37, i32 %38)
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ieee80211vap*) #1

declare dso_local i32 @if_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ticks_to_secs(i32) #1

declare dso_local i32 @ieee80211_notify_cac(%struct.ieee80211com*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
