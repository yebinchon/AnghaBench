; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_cac_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_cac_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, %struct.TYPE_3__*, %struct.ieee80211_channel*, %struct.ieee80211_dfs_state }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211_dfs_state = type { i32 }

@IEEE80211_S_CAC = common dso_local global i64 0, align 8
@IEEE80211_NOTIFY_CAC_RADAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"CAC timer on channel %u (%u MHz) stopped due to radar\0A\00", align 1
@IEEE80211_S_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"CAC timer on channel %u (%u MHz) expired; no radar detected\0A\00", align 1
@IEEE80211_CHANSTATE_CACDONE = common dso_local global i32 0, align 4
@IEEE80211_NOTIFY_CAC_EXPIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cac_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cac_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211_dfs_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_channel*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ieee80211vap*
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %3, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 3
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %4, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 3
  store %struct.ieee80211_dfs_state* %14, %struct.ieee80211_dfs_state** %5, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %16 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %15)
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_S_CAC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %114

23:                                               ; preds = %1
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i64 @IEEE80211_IS_CHAN_RADAR(%struct.TYPE_3__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* @IEEE80211_NOTIFY_CAC_RADAR, align 4
  %35 = call i32 @ieee80211_notify_cac(%struct.ieee80211com* %30, %struct.TYPE_3__* %33, i32 %34)
  %36 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @if_printf(i32 %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %48)
  %50 = load %struct.ieee80211_dfs_state*, %struct.ieee80211_dfs_state** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_dfs_state, %struct.ieee80211_dfs_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %54 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %56 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %57 = call i32 @ieee80211_new_state_locked(%struct.ieee80211vap* %55, i32 %56, i32 0)
  br label %114

58:                                               ; preds = %23
  %59 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @if_printf(i32 %61, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %102, %58
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73
  %80 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %80, i32 0, i32 2
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %82, i64 %84
  store %struct.ieee80211_channel* %85, %struct.ieee80211_channel** %7, align 8
  %86 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %88, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %79
  %96 = load i32, i32* @IEEE80211_CHANSTATE_CACDONE, align 4
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %79
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %73

105:                                              ; preds = %73
  %106 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %107 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %108 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* @IEEE80211_NOTIFY_CAC_EXPIRE, align 4
  %111 = call i32 @ieee80211_notify_cac(%struct.ieee80211com* %106, %struct.TYPE_3__* %109, i32 %110)
  %112 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %113 = call i32 @ieee80211_cac_completeswitch(%struct.ieee80211vap* %112)
  br label %114

114:                                              ; preds = %22, %105, %29
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_RADAR(%struct.TYPE_3__*) #1

declare dso_local i32 @ieee80211_notify_cac(%struct.ieee80211com*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @if_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_new_state_locked(%struct.ieee80211vap*, i32, i32) #1

declare dso_local i32 @ieee80211_cac_completeswitch(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
