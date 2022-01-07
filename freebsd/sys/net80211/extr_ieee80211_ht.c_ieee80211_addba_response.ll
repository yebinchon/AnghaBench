; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_addba_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_addba_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ieee80211_tx_ampdu = type { i32, i64, i32 }

@IEEE80211_STATUS_SUCCESS = common dso_local global i32 0, align 4
@IEEE80211_BAPS_BUFSIZ = common dso_local global i32 0, align 4
@IEEE80211_AGGR_BAWMAX = common dso_local global i32 0, align 4
@IEEE80211_BAPS_TID = common dso_local global i32 0, align 4
@IEEE80211_AGGR_RUNNING = common dso_local global i32 0, align 4
@IEEE80211_AGGR_NAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_tx_ampdu*, i32, i32, i32)* @ieee80211_addba_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_addba_response(%struct.ieee80211_node* %0, %struct.ieee80211_tx_ampdu* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_tx_ampdu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %6, align 8
  store %struct.ieee80211_tx_ampdu* %1, %struct.ieee80211_tx_ampdu** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  %14 = call i32 @addba_stop_timeout(%struct.ieee80211_tx_ampdu* %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IEEE80211_STATUS_SUCCESS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @IEEE80211_BAPS_BUFSIZ, align 4
  %21 = call i32 @MS(i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @IEEE80211_AGGR_BAWMAX, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @IEEE80211_AGGR_BAWMAX, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  %32 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IEEE80211_BAPS_TID, align 4
  %36 = call i32 @MS(i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @IEEE80211_AGGR_RUNNING, align 4
  %38 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %50

44:                                               ; preds = %5
  %45 = load i32, i32* @IEEE80211_AGGR_NAK, align 4
  %46 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %30
  ret i32 1
}

declare dso_local i32 @addba_stop_timeout(%struct.ieee80211_tx_ampdu*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
