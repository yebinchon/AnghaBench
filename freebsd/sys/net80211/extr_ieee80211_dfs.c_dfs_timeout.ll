; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_dfs_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_dfs_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.ieee80211_channel*, %struct.ieee80211_dfs_state }
%struct.ieee80211_channel = type { i32, i32, i32 }
%struct.ieee80211_dfs_state = type { i32*, i32 }

@ticks = common dso_local global i32 0, align 4
@NOL_TIMEOUT = common dso_local global i64 0, align 8
@IEEE80211_CHANSTATE_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHANSTATE_NORADAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"radar on channel %u (%u MHz) cleared after timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dfs_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfs_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_dfs_state*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ieee80211com*
  store %struct.ieee80211com* %10, %struct.ieee80211com** %3, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 2
  store %struct.ieee80211_dfs_state* %12, %struct.ieee80211_dfs_state** %4, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %14 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %13)
  %15 = load i32, i32* @ticks, align 4
  store i32 %15, i32* %7, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %99, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %102

22:                                               ; preds = %16
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 1
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %25, i64 %27
  store %struct.ieee80211_channel* %28, %struct.ieee80211_channel** %5, align 8
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_RADAR(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %98

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ieee80211_dfs_state*, %struct.ieee80211_dfs_state** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_dfs_state, %struct.ieee80211_dfs_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @NOL_TIMEOUT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 @ieee80211_time_after_eq(i32 %33, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %32
  %47 = load i32, i32* @IEEE80211_CHANSTATE_RADAR, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_CHANSTATE_NORADAR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %46
  %60 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ic_printf(%struct.ieee80211com* %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* @IEEE80211_CHANSTATE_NORADAR, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %76 = call i32 @ieee80211_notify_radar(%struct.ieee80211com* %74, %struct.ieee80211_channel* %75)
  br label %77

77:                                               ; preds = %59, %46
  br label %97

78:                                               ; preds = %32
  %79 = load %struct.ieee80211_dfs_state*, %struct.ieee80211_dfs_state** %4, align 8
  %80 = getelementptr inbounds %struct.ieee80211_dfs_state, %struct.ieee80211_dfs_state* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load %struct.ieee80211_dfs_state*, %struct.ieee80211_dfs_state** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_dfs_state, %struct.ieee80211_dfs_state* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %88, %78
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97, %22
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %16

102:                                              ; preds = %16
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load %struct.ieee80211_dfs_state*, %struct.ieee80211_dfs_state** %4, align 8
  %108 = getelementptr inbounds %struct.ieee80211_dfs_state, %struct.ieee80211_dfs_state* %107, i32 0, i32 1
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @NOL_TIMEOUT, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = call i32 @callout_schedule(i32* %108, i64 %115)
  br label %117

117:                                              ; preds = %106, %102
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_RADAR(%struct.ieee80211_channel*) #1

declare dso_local i64 @ieee80211_time_after_eq(i32, i64) #1

declare dso_local i32 @ic_printf(%struct.ieee80211com*, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_notify_radar(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i32 @callout_schedule(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
