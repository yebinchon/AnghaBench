; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_tx_update_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_tx_update_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211_amrr_node* }
%struct.ieee80211_amrr_node = type { i32, i32, i32 }
%struct.ieee80211_ratectl_tx_stats = type { i32, i32, i32, i32 }

@IEEE80211_RATECTL_TX_STATS_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @amrr_tx_update_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amrr_tx_update_cb(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211_ratectl_tx_stats*, align 8
  %6 = alloca %struct.ieee80211_amrr_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ieee80211_ratectl_tx_stats*
  store %struct.ieee80211_ratectl_tx_stats* %11, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %13, align 8
  store %struct.ieee80211_amrr_node* %14, %struct.ieee80211_amrr_node** %6, align 8
  %15 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %16 = icmp ne %struct.ieee80211_amrr_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_RATECTL_TX_STATS_RETRIES, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %18
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %35, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
