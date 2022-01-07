; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_contbgscan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_contbgscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i64, i64, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i32, i64 }

@IEEE80211_FEXT_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_F_CSAPENDING = common dso_local global i32 0, align 4
@IEEE80211_FEXT_SCAN_OFFLOAD = common dso_local global i32 0, align 4
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*)* @contbgscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contbgscan(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %4, i32 0, i32 3
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IEEE80211_FEXT_BGSCAN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_F_CSAPENDING, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %13
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IEEE80211_FEXT_SCAN_OFFLOAD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %20
  %28 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE80211_S_RUN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32, i32* @ticks, align 4
  %35 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i64 @ieee80211_time_after(i32 %34, i64 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %33, %27, %20, %13, %1
  %45 = phi i1 [ false, %27 ], [ false, %20 ], [ false, %13 ], [ false, %1 ], [ %43, %33 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local i64 @ieee80211_time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
