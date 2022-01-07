; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_ieee80211_dfs_cac_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_ieee80211_dfs_cac_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }

@IEEE80211_CHANSTATE_CACDONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_dfs_cac_clear(%struct.ieee80211com* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %7
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %16, i64 %18
  store %struct.ieee80211_channel* %19, %struct.ieee80211_channel** %6, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %13
  %28 = load i32, i32* @IEEE80211_CHANSTATE_CACDONE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %27, %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %7

38:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
