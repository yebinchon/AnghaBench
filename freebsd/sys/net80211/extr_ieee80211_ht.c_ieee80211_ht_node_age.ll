; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_node_age.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_node_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211_rx_ampdu*, %struct.ieee80211vap* }
%struct.ieee80211_rx_ampdu = type { i32, i64, i64 }
%struct.ieee80211vap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"not an HT sta\00", align 1
@WME_NUM_TID = common dso_local global i64 0, align 8
@IEEE80211_AGGR_XCHGPEND = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@ieee80211_ampdu_age = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_node_age(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211_rx_ampdu*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 2
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  store %struct.ieee80211vap* %8, %struct.ieee80211vap** %3, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %61, %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @WME_NUM_TID, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %20, i32 0, i32 1
  %22 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %22, i64 %23
  store %struct.ieee80211_rx_ampdu* %24, %struct.ieee80211_rx_ampdu** %5, align 8
  %25 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IEEE80211_AGGR_XCHGPEND, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %61

32:                                               ; preds = %19
  %33 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %61

38:                                               ; preds = %32
  %39 = load i64, i64* @ticks, align 8
  %40 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load i64, i64* @ieee80211_ampdu_age, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %49
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %58 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %59 = call i32 @ampdu_rx_flush(%struct.ieee80211_node* %57, %struct.ieee80211_rx_ampdu* %58)
  br label %60

60:                                               ; preds = %46, %38
  br label %61

61:                                               ; preds = %60, %37, %31
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %15

64:                                               ; preds = %15
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ampdu_rx_flush(%struct.ieee80211_node*, %struct.ieee80211_rx_ampdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
