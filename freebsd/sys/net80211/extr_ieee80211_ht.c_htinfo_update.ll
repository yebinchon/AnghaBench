; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_htinfo_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_htinfo_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i64, i32, i64, i64, i32 }

@IEEE80211_HTINFO_OPMODE_MIXED = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_NONHT_PRESENT = common dso_local global i32 0, align 4
@IEEE80211_FHT_NONHT_PR = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_OPMODE_PROTOPT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANYC = common dso_local global i64 0, align 8
@IEEE80211_HTINFO_OPMODE_HT20PR = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_OPMODE_PURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @htinfo_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htinfo_update(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @IEEE80211_HTINFO_OPMODE_MIXED, align 4
  %13 = load i32, i32* @IEEE80211_HTINFO_NONHT_PRESENT, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IEEE80211_FHT_NONHT_PR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @IEEE80211_HTINFO_OPMODE_PROTOPT, align 4
  %24 = load i32, i32* @IEEE80211_HTINFO_NONHT_PRESENT, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %15
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE80211_CHAN_ANYC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @IEEE80211_IS_CHAN_HT40(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @IEEE80211_HTINFO_OPMODE_HT20PR, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %38, %32, %26
  %49 = load i32, i32* @IEEE80211_HTINFO_OPMODE_PURE, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %22
  br label %52

52:                                               ; preds = %51, %11
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %63 = call i32 @htinfo_notify(%struct.ieee80211com* %62)
  br label %64

64:                                               ; preds = %58, %52
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(i64) #1

declare dso_local i32 @htinfo_notify(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
