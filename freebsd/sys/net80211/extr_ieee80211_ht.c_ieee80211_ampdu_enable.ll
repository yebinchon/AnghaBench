; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ampdu_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ampdu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i64* }
%struct.ieee80211_tx_ampdu = type { i64, i64, i32, i32, i32 }

@ieee80211_addba_maxtries = common dso_local global i64 0, align 8
@ticks = common dso_local global i32 0, align 4
@IEEE80211_MSG_11N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"enable AMPDU on tid %d (%s), avgpps %d pkts %d attempt %d\00", align 1
@ieee80211_wme_acnames = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_tx_ampdu*)* @ieee80211_ampdu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ampdu_enable(%struct.ieee80211_node* %0, %struct.ieee80211_tx_ampdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211_tx_ampdu*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.ieee80211_tx_ampdu* %1, %struct.ieee80211_tx_ampdu** %5, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 0
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %6, align 8
  %10 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @TID_TO_WME_AC(i32 %18)
  %20 = getelementptr inbounds i64, i64* %15, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %12, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

24:                                               ; preds = %2
  %25 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ieee80211_addba_maxtries, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* @ticks, align 4
  %32 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @ieee80211_time_after(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %62

38:                                               ; preds = %30, %24
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %40 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %42 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @ieee80211_wme_acnames, align 8
  %46 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @TID_TO_WME_AC(i32 %48)
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %39, i32 %40, %struct.ieee80211_node* %41, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %51, i64 %54, i32 %57, i64 %60)
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %38, %37, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @TID_TO_WME_AC(i32) #1

declare dso_local i64 @ieee80211_time_after(i32, i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
