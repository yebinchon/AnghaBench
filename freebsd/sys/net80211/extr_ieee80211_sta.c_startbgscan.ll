; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_startbgscan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_startbgscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, i64, i64, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i64, i64, i32 }

@IEEE80211_F_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_F_CSAPENDING = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@IEEE80211_FEXT_SCAN_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*)* @startbgscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startbgscan(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %4, i32 0, i32 4
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IEEE80211_F_BGSCAN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %1
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IEEE80211_F_CSAPENDING, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %13
  %21 = load i32, i32* @ticks, align 4
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i64 @ieee80211_time_after(i32 %21, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %20
  %32 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_FEXT_SCAN_OFFLOAD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ticks, align 4
  %40 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = call i64 @ieee80211_time_after(i32 %39, i64 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %38, %31
  %50 = phi i1 [ true, %31 ], [ %48, %38 ]
  br label %51

51:                                               ; preds = %49, %20, %13, %1
  %52 = phi i1 [ false, %20 ], [ false, %13 ], [ false, %1 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  ret i32 %53
}

declare dso_local i64 @ieee80211_time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
