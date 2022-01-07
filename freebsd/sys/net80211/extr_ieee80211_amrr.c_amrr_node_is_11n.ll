; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_node_is_11n.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_amrr.c_amrr_node_is_11n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_CHAN_ANYC = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*)* @amrr_node_is_11n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amrr_node_is_11n(%struct.ieee80211_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  %4 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** @IEEE80211_CHAN_ANYC, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %34

16:                                               ; preds = %9
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @IEEE80211_IS_CHAN_HT(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %34

29:                                               ; preds = %22, %16
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @IEEE80211_IS_CHAN_HT(i32* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %28, %15, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @IEEE80211_IS_CHAN_HT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
