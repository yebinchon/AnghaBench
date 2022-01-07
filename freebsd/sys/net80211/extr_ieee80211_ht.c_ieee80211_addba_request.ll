; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_addba_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_addba_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ieee80211_tx_ampdu = type { i32, i32, i32 }

@IEEE80211_AGGR_IMMEDIATE = common dso_local global i32 0, align 4
@IEEE80211_BAPS_BUFSIZ = common dso_local global i32 0, align 4
@IEEE80211_AGGR_BAWMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_tx_ampdu*, i32, i32, i32)* @ieee80211_addba_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_addba_request(%struct.ieee80211_node* %0, %struct.ieee80211_tx_ampdu* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_tx_ampdu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %6, align 8
  store %struct.ieee80211_tx_ampdu* %1, %struct.ieee80211_tx_ampdu** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IEEE80211_AGGR_IMMEDIATE, align 4
  %16 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @IEEE80211_BAPS_BUFSIZ, align 4
  %22 = call i32 @MS(i32 %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @IEEE80211_AGGR_BAWMAX, align 4
  br label %31

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @IEEE80211_AGGR_BAWMAX, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ %26, %25 ], [ %30, %27 ]
  %33 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %7, align 8
  %36 = call i32 @addba_start_timeout(%struct.ieee80211_tx_ampdu* %35)
  ret i32 1
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @addba_start_timeout(%struct.ieee80211_tx_ampdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
