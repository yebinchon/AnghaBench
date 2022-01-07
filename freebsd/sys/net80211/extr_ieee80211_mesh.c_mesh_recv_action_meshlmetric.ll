; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_action_meshlmetric.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_action_meshlmetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_meshlmetric_ie = type { i32, i32 }

@IEEE80211_MESH_LMETRIC_FLAGS_REQ = common dso_local global i32 0, align 4
@IEEE80211_ACTION_CAT_MESH = common dso_local global i32 0, align 4
@IEEE80211_ACTION_MESH_LMETRIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*)* @mesh_recv_action_meshlmetric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_recv_action_meshlmetric(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211_meshlmetric_ie*, align 8
  %10 = alloca %struct.ieee80211_meshlmetric_ie, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = bitcast i32* %12 to %struct.ieee80211_meshlmetric_ie*
  store %struct.ieee80211_meshlmetric_ie* %13, %struct.ieee80211_meshlmetric_ie** %9, align 8
  %14 = load %struct.ieee80211_meshlmetric_ie*, %struct.ieee80211_meshlmetric_ie** %9, align 8
  %15 = getelementptr inbounds %struct.ieee80211_meshlmetric_ie, %struct.ieee80211_meshlmetric_ie* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_MESH_LMETRIC_FLAGS_REQ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.ieee80211_meshlmetric_ie, %struct.ieee80211_meshlmetric_ie* %10, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %23 = call i32 @mesh_airtime_calc(%struct.ieee80211_node* %22)
  %24 = getelementptr inbounds %struct.ieee80211_meshlmetric_ie, %struct.ieee80211_meshlmetric_ie* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %26 = load i32, i32* @IEEE80211_ACTION_CAT_MESH, align 4
  %27 = load i32, i32* @IEEE80211_ACTION_MESH_LMETRIC, align 4
  %28 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %25, i32 %26, i32 %27, %struct.ieee80211_meshlmetric_ie* %10)
  br label %29

29:                                               ; preds = %20, %4
  ret i32 0
}

declare dso_local i32 @mesh_airtime_calc(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_send_action(%struct.ieee80211_node*, i32, i32, %struct.ieee80211_meshlmetric_ie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
