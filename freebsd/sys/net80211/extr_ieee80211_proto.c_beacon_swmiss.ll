; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_beacon_swmiss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_beacon_swmiss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32 (%struct.ieee80211vap*)*, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @beacon_swmiss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beacon_swmiss(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ieee80211vap*
  store %struct.ieee80211vap* %8, %struct.ieee80211vap** %5, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 2
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %13 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %12)
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IEEE80211_S_RUN, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 1
  %22 = load i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)** %21, align 8
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %24 = call i32 %22(%struct.ieee80211vap* %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %27 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %26)
  ret void
}

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
