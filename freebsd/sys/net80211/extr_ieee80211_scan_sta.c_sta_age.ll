; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_age.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i64, i64, i32, i64 }

@IEEE80211_M_STA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"wrong mode %u\00", align 1
@IEEE80211_ROAMING_AUTO = common dso_local global i64 0, align 8
@IEEE80211_F_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_scan_state*)* @sta_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_age(%struct.ieee80211_scan_state* %0) #0 {
  %2 = alloca %struct.ieee80211_scan_state*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %2, align 8
  %4 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %4, i32 0, i32 0
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211vap* %6, %struct.ieee80211vap** %3, align 8
  %7 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %8 = call i32 @adhoc_age(%struct.ieee80211_scan_state* %7)
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IEEE80211_M_STA, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(i32 %14, i8* %18)
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_ROAMING_AUTO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IEEE80211_F_BGSCAN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IEEE80211_S_RUN, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %40 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %41 = call i32 @sta_roam_check(%struct.ieee80211_scan_state* %39, %struct.ieee80211vap* %40)
  br label %42

42:                                               ; preds = %38, %32, %25, %1
  ret void
}

declare dso_local i32 @adhoc_age(%struct.ieee80211_scan_state*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sta_roam_check(%struct.ieee80211_scan_state*, %struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
