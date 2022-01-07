; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_ieee80211_dfs_cac_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_ieee80211_dfs_cac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.TYPE_2__*, %struct.ieee80211_dfs_state }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_dfs_state = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"stop CAC timer on channel %u (%u MHz)\0A\00", align 1
@IEEE80211_NOTIFY_CAC_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_dfs_cac_stop(%struct.ieee80211vap* %0) #0 {
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
  %14 = call i64 @callout_pending(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @if_printf(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* @IEEE80211_NOTIFY_CAC_STOP, align 4
  %36 = call i32 @ieee80211_notify_cac(%struct.ieee80211com* %31, %struct.TYPE_2__* %34, i32 %35)
  br label %37

37:                                               ; preds = %16, %1
  %38 = load %struct.ieee80211_dfs_state*, %struct.ieee80211_dfs_state** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_dfs_state, %struct.ieee80211_dfs_state* %38, i32 0, i32 0
  %40 = call i32 @callout_stop(i32* %39)
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @if_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_notify_cac(%struct.ieee80211com*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
