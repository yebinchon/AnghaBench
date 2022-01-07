; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_node_getrssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_node_getrssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64 }

@IEEE80211_RSSI_DUMMY_MARKER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*)* @node_getrssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_getrssi(%struct.ieee80211_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @IEEE80211_RSSI_DUMMY_MARKER, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @IEEE80211_RSSI_GET(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %27

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 127
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 127, %22 ], [ %24, %23 ]
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ 0, %18 ], [ %26, %25 ]
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @IEEE80211_RSSI_GET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
