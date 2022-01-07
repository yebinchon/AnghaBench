; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_tx_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211_amrr_node* }
%struct.ieee80211_amrr_node = type { i32, i32, i32 }
%struct.ieee80211_ratectl_tx_status = type { i32, i32, i64 }

@IEEE80211_RATECTL_STATUS_LONG_RETRY = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_ratectl_tx_status*)* @amrr_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amrr_tx_complete(%struct.ieee80211_node* %0, %struct.ieee80211_ratectl_tx_status* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.ieee80211_ratectl_tx_status*, align 8
  %5 = alloca %struct.ieee80211_amrr_node*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.ieee80211_ratectl_tx_status* %1, %struct.ieee80211_ratectl_tx_status** %4, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 0
  %9 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %8, align 8
  store %struct.ieee80211_amrr_node* %9, %struct.ieee80211_amrr_node** %5, align 8
  %10 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %11 = icmp ne %struct.ieee80211_amrr_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %45

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %14 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IEEE80211_RATECTL_STATUS_LONG_RETRY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_RATECTL_TX_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %24
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ieee80211_amrr_node*, %struct.ieee80211_amrr_node** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_amrr_node, %struct.ieee80211_amrr_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
