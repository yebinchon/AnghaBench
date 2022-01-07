; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_sta_beacon_miss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_sta_beacon_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i64, i64, i64, i64, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i32, %struct.ieee80211com* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211com = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"scanning\00", align 1
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"wrong state %s\00", align 1
@ieee80211_state_name = common dso_local global i32* null, align 8
@IEEE80211_MSG_STATE = common dso_local global i32 0, align 4
@IEEE80211_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"beacon miss, mode %s state %s\0A\00", align 1
@ieee80211_opmode_name = common dso_local global i32* null, align 8
@IEEE80211_S_CSA = common dso_local global i64 0, align 8
@IEEE80211_ROAMING_AUTO = common dso_local global i64 0, align 8
@IEEE80211_S_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_S_SCAN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_TURBO = common dso_local global i32 0, align 4
@IEEE80211_NODE_TURBOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @sta_beacon_miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_beacon_miss(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %4, i32 0, i32 9
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %8 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %7)
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_S_RUN, align 8
  %21 = icmp uge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** @ieee80211_state_name, align 8
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %22, i8* %30)
  %32 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %33 = load i32, i32* @IEEE80211_MSG_STATE, align 4
  %34 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %35 = or i32 %33, %34
  %36 = load i32*, i32** @ieee80211_opmode_name, align 8
  %37 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** @ieee80211_state_name, align 8
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %32, i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %47)
  %49 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IEEE80211_S_CSA, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %1
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %56 = call i32 @ieee80211_csa_completeswitch(%struct.ieee80211com* %55)
  br label %118

57:                                               ; preds = %1
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %59 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %63 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %57
  %67 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %68 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %67, i32 0, i32 5
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %71 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %74 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %73, i32 0, i32 5
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %79 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %78, i32 0, i32 5
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %84 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %83, i32 0, i32 5
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %89 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %88, i32 0, i32 5
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ieee80211_send_probereq(%struct.TYPE_7__* %69, i32 %72, i32 %77, i32 %82, i32 %87, i32 %92)
  br label %118

94:                                               ; preds = %57
  %95 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %96 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %95, i32 0, i32 7
  %97 = call i32 @callout_stop(i32* %96)
  %98 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %99 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %101 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %106 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IEEE80211_ROAMING_AUTO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %94
  %111 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %112 = load i32, i32* @IEEE80211_S_ASSOC, align 4
  %113 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %111, i32 %112, i32 1)
  br label %118

114:                                              ; preds = %94
  %115 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %116 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %117 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %115, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %54, %66, %114, %110
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_DPRINTF(%struct.ieee80211vap*, i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_csa_completeswitch(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_send_probereq(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ieee80211_new_state(%struct.ieee80211vap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
