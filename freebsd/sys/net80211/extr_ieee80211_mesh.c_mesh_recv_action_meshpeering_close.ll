; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_action_meshpeering_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_action_meshpeering_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, i32, i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_meshpeer_ie = type { i32 }

@IEEE80211_ACTION_MESHPEERING_CLOSE = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_MESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"recv PEER CLOSE\00", align 1
@IEEE80211_REASON_MESH_CLOSE_RCVD = common dso_local global i32 0, align 4
@IEEE80211_ACTION_CAT_SELF_PROT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*)* @mesh_recv_action_meshpeering_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_recv_action_meshpeering_close(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_frame*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_meshpeer_ie, align 4
  %11 = alloca %struct.ieee80211_meshpeer_ie*, align 8
  %12 = alloca [3 x i32], align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %6, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %14 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %19 = call %struct.ieee80211_meshpeer_ie* @mesh_parse_meshpeering_action(%struct.ieee80211_node* %13, %struct.ieee80211_frame* %14, i32* %16, i32* %17, %struct.ieee80211_meshpeer_ie* %10, i32 %18)
  store %struct.ieee80211_meshpeer_ie* %19, %struct.ieee80211_meshpeer_ie** %11, align 8
  %20 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %11, align 8
  %21 = icmp eq %struct.ieee80211_meshpeer_ie* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %62

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %28 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %31 = call i32 @IEEE80211_NOTE(i32 %26, i32 %29, %struct.ieee80211_node* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %61 [
    i32 130, label %35
    i32 129, label %36
    i32 128, label %36
    i32 133, label %36
    i32 132, label %36
    i32 131, label %56
  ]

35:                                               ; preds = %23
  br label %61

36:                                               ; preds = %23, %23, %23, %23
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @IEEE80211_REASON_MESH_CLOSE_RCVD, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %48 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %49 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %51 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %47, i32 %48, i32 %49, i32* %50)
  %52 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %53 = call i32 @mesh_linkchange(%struct.ieee80211_node* %52, i32 131)
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %55 = call i32 @mesh_peer_timeout_setup(%struct.ieee80211_node* %54)
  br label %61

56:                                               ; preds = %23
  %57 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %58 = call i32 @mesh_linkchange(%struct.ieee80211_node* %57, i32 130)
  %59 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %60 = call i32 @mesh_peer_timeout_stop(%struct.ieee80211_node* %59)
  br label %61

61:                                               ; preds = %23, %56, %36, %35
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %22
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.ieee80211_meshpeer_ie* @mesh_parse_meshpeering_action(%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*, %struct.ieee80211_meshpeer_ie*, i32) #1

declare dso_local i32 @IEEE80211_NOTE(i32, i32, %struct.ieee80211_node*, i8*, i8*) #1

declare dso_local i32 @ieee80211_send_action(%struct.ieee80211_node*, i32, i32, i32*) #1

declare dso_local i32 @mesh_linkchange(%struct.ieee80211_node*, i32) #1

declare dso_local i32 @mesh_peer_timeout_setup(%struct.ieee80211_node*) #1

declare dso_local i32 @mesh_peer_timeout_stop(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
