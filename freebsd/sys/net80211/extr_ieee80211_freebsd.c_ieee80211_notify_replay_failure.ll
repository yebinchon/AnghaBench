; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_notify_replay_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_notify_replay_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.ieee80211_frame = type { i32, i32 }
%struct.ieee80211_key = type { i64, i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_replay_event = type { i64, i64, i64, i32, i32, i32 }

@IEEE80211_MSG_CRYPTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%s replay detected tid %d <rsc %ju, csc %ju, keyix %u rxkeyix %u>\00", align 1
@IEEE80211_KEYIX_NONE = common dso_local global i64 0, align 8
@RTM_IEEE80211_REPLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_notify_replay_failure(%struct.ieee80211vap* %0, %struct.ieee80211_frame* %1, %struct.ieee80211_key* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.ieee80211_frame*, align 8
  %8 = alloca %struct.ieee80211_key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca %struct.ieee80211_replay_event, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %6, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %7, align 8
  store %struct.ieee80211_key* %2, %struct.ieee80211_key** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 0
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %11, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %17 = load i32, i32* @IEEE80211_MSG_CRYPTO, align 4
  %18 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %38 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap* %16, i32 %17, i32 %20, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %28, i32 %36, i64 %39, i64 %42)
  %44 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %45 = icmp ne %struct.ifnet* %44, null
  br i1 %45, label %46, label %99

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.ieee80211_replay_event, %struct.ieee80211_replay_event* %12, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IEEE80211_ADDR_COPY(i32 %48, i32 %51)
  %53 = getelementptr inbounds %struct.ieee80211_replay_event, %struct.ieee80211_replay_event* %12, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IEEE80211_ADDR_COPY(i32 %54, i32 %57)
  %59 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ieee80211_replay_event, %struct.ieee80211_replay_event* %12, i32 0, i32 3
  store i32 %63, i32* %64, align 8
  %65 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %46
  %71 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.ieee80211_replay_event, %struct.ieee80211_replay_event* %12, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  br label %80

75:                                               ; preds = %46
  %76 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.ieee80211_replay_event, %struct.ieee80211_replay_event* %12, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.ieee80211_replay_event, %struct.ieee80211_replay_event* %12, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_replay_event, %struct.ieee80211_replay_event* %12, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  %91 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @CURVNET_SET(i32 %93)
  %95 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %96 = load i32, i32* @RTM_IEEE80211_REPLAY, align 4
  %97 = call i32 @rt_ieee80211msg(%struct.ifnet* %95, i32 %96, %struct.ieee80211_replay_event* %12, i32 40)
  %98 = call i32 (...) @CURVNET_RESTORE()
  br label %99

99:                                               ; preds = %80, %5
  ret void
}

declare dso_local i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap*, i32, i32, i8*, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @rt_ieee80211msg(%struct.ifnet*, i32, %struct.ieee80211_replay_event*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
