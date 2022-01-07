; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_tx_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_rssadapt.c_rssadapt_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211_rssadapt_node* }
%struct.ieee80211_rssadapt_node = type { i64, i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_ratectl_tx_status = type { i32, i32, i32, i64 }

@IEEE80211_RATECTL_STATUS_PKTLEN = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_STATUS_RSSI = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_SUCCESS = common dso_local global i64 0, align 8
@ticks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_ratectl_tx_status*)* @rssadapt_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rssadapt_tx_complete(%struct.ieee80211_node* %0, %struct.ieee80211_ratectl_tx_status* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.ieee80211_ratectl_tx_status*, align 8
  %5 = alloca %struct.ieee80211_rssadapt_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.ieee80211_ratectl_tx_status* %1, %struct.ieee80211_ratectl_tx_status** %4, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %9, align 8
  store %struct.ieee80211_rssadapt_node* %10, %struct.ieee80211_rssadapt_node** %5, align 8
  %11 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %5, align 8
  %12 = icmp ne %struct.ieee80211_rssadapt_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE80211_RATECTL_STATUS_PKTLEN, align 4
  %19 = load i32, i32* @IEEE80211_RATECTL_STATUS_RSSI, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @IEEE80211_RATECTL_STATUS_PKTLEN, align 4
  %23 = load i32, i32* @IEEE80211_RATECTL_STATUS_RSSI, align 4
  %24 = or i32 %22, %23
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %78

27:                                               ; preds = %14
  %28 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IEEE80211_RATECTL_TX_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %27
  %40 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %39
  %54 = load i64, i64* @ticks, align 8
  %55 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @rssadapt_raise_rate(%struct.ieee80211_rssadapt_node* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %53, %39
  br label %78

69:                                               ; preds = %27
  %70 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rssadapt_node, %struct.ieee80211_rssadapt_node* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.ieee80211_rssadapt_node*, %struct.ieee80211_rssadapt_node** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @rssadapt_lower_rate(%struct.ieee80211_rssadapt_node* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %13, %26, %69, %68
  ret void
}

declare dso_local i32 @rssadapt_raise_rate(%struct.ieee80211_rssadapt_node*, i32, i32) #1

declare dso_local i32 @rssadapt_lower_rate(%struct.ieee80211_rssadapt_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
