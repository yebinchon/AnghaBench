; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_vdetach_peers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_vdetach_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, i32, i32, i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }

@IEEE80211_NODE_MESH_ESTABLISHED = common dso_local global i64 0, align 8
@IEEE80211_REASON_PEER_LINK_CANCELED = common dso_local global i32 0, align 4
@IEEE80211_ACTION_CAT_SELF_PROT = common dso_local global i32 0, align 4
@IEEE80211_ACTION_MESHPEERING_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @mesh_vdetach_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_vdetach_peers(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca [3 x i32], align 4
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 5
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  store %struct.ieee80211com* %9, %struct.ieee80211com** %5, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_NODE_MESH_ESTABLISHED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @IEEE80211_REASON_PEER_LINK_CANCELED, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %27 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %28 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %30 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %26, i32 %27, i32 %28, i32* %29)
  br label %31

31:                                               ; preds = %15, %2
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %32, i32 0, i32 2
  %34 = call i32 @callout_drain(i32* %33)
  %35 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %35, i32 0, i32 0
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %38 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ieee80211_mac_hash(%struct.ieee80211com* %37, i32 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @ieee80211_ageq_drain_node(i32* %36, i8* %42)
  ret void
}

declare dso_local i32 @ieee80211_send_action(%struct.ieee80211_node*, i32, i32, i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ieee80211_ageq_drain_node(i32*, i8*) #1

declare dso_local i64 @ieee80211_mac_hash(%struct.ieee80211com*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
