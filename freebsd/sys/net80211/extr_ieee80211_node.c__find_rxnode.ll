; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c__find_rxnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c__find_rxnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ieee80211_node_table = type { i32 }
%struct.ieee80211_frame_min = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_node* (%struct.ieee80211_node_table*, %struct.ieee80211_frame_min*)* @_find_rxnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_node* @_find_rxnode(%struct.ieee80211_node_table* %0, %struct.ieee80211_frame_min* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.ieee80211_node_table*, align 8
  %5 = alloca %struct.ieee80211_frame_min*, align 8
  store %struct.ieee80211_node_table* %0, %struct.ieee80211_node_table** %4, align 8
  store %struct.ieee80211_frame_min* %1, %struct.ieee80211_frame_min** %5, align 8
  %6 = load %struct.ieee80211_frame_min*, %struct.ieee80211_frame_min** %5, align 8
  %7 = call i64 @IS_BCAST_PROBEREQ(%struct.ieee80211_frame_min* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.ieee80211_node* null, %struct.ieee80211_node** %3, align 8
  br label %16

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %4, align 8
  %12 = load %struct.ieee80211_frame_min*, %struct.ieee80211_frame_min** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_frame_min, %struct.ieee80211_frame_min* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ieee80211_node* @ieee80211_find_node_locked(%struct.ieee80211_node_table* %11, i32 %14)
  store %struct.ieee80211_node* %15, %struct.ieee80211_node** %3, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  ret %struct.ieee80211_node* %17
}

declare dso_local i64 @IS_BCAST_PROBEREQ(%struct.ieee80211_frame_min*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_find_node_locked(%struct.ieee80211_node_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
