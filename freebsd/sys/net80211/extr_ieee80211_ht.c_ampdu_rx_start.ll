; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ieee80211_rx_ampdu = type { i32, i8*, i32 }

@IEEE80211_BAPS_BUFSIZ = common dso_local global i32 0, align 4
@IEEE80211_AGGR_RUNNING = common dso_local global i32 0, align 4
@IEEE80211_AGGR_BAWMAX = common dso_local global i32 0, align 4
@IEEE80211_BASEQ_START = common dso_local global i32 0, align 4
@IEEE80211_AGGR_XCHGPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_rx_ampdu*, i32, i32, i32)* @ampdu_rx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ampdu_rx_start(%struct.ieee80211_node* %0, %struct.ieee80211_rx_ampdu* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_rx_ampdu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %6, align 8
  store %struct.ieee80211_rx_ampdu* %1, %struct.ieee80211_rx_ampdu** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @IEEE80211_BAPS_BUFSIZ, align 4
  %14 = call i8* @MS(i32 %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IEEE80211_AGGR_RUNNING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %7, align 8
  %24 = call i32 @ampdu_rx_purge(%struct.ieee80211_rx_ampdu* %23)
  br label %25

25:                                               ; preds = %22, %5
  %26 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %7, align 8
  %27 = call i32 @memset(%struct.ieee80211_rx_ampdu* %26, i32 0, i32 24)
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @IEEE80211_AGGR_BAWMAX, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @IEEE80211_AGGR_BAWMAX, align 4
  %35 = call i32 @min(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  %38 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @IEEE80211_BASEQ_START, align 4
  %42 = call i8* @MS(i32 %40, i32 %41)
  %43 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @IEEE80211_AGGR_RUNNING, align 4
  %46 = load i32, i32* @IEEE80211_AGGR_XCHGPEND, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  ret i32 0
}

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i32 @ampdu_rx_purge(%struct.ieee80211_rx_ampdu*) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_ampdu*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
