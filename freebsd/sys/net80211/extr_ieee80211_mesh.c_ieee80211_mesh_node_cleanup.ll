; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_mesh_node_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_mesh_node_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ieee80211_node*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mesh_node_cleanup(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_mesh_state*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %5 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %5, i32 0, i32 2
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  store %struct.ieee80211vap* %7, %struct.ieee80211vap** %3, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %9, align 8
  store %struct.ieee80211_mesh_state* %10, %struct.ieee80211_mesh_state** %4, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 1
  %13 = call i32 @callout_drain(i32* %12)
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 0
  %16 = call i32 @callout_drain(i32* %15)
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %18, align 8
  %20 = icmp ne %struct.ieee80211_mesh_state* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ieee80211_node*)*, i32 (%struct.ieee80211_node*)** %25, align 8
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %28 = call i32 %26(%struct.ieee80211_node* %27)
  br label %29

29:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
