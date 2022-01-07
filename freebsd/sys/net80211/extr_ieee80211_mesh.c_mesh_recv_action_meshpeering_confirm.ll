; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_action_meshpeering_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_action_meshpeering_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_meshpeer_ie = type { i32, i32 }

@IEEE80211_ACTION_MESHPEERING_CONFIRM = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_MESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"recv PEER CONFIRM, local id 0x%x, peer id 0x%x\00", align 1
@IEEE80211_NODE_MESH_ESTABLISHED = common dso_local global i32 0, align 4
@IEEE80211_REASON_PEER_LINK_CANCELED = common dso_local global i32 0, align 4
@IEEE80211_ACTION_CAT_SELF_PROT = common dso_local global i32 0, align 4
@IEEE80211_ACTION_MESHPEERING_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"received confirm in invalid state %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*)* @mesh_recv_action_meshpeering_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_recv_action_meshpeering_confirm(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_frame*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211vap*, align 8
  %11 = alloca %struct.ieee80211_meshpeer_ie, align 4
  %12 = alloca %struct.ieee80211_meshpeer_ie*, align 8
  %13 = alloca [3 x i32], align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %6, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 3
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %15, align 8
  store %struct.ieee80211vap* %16, %struct.ieee80211vap** %10, align 8
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %18 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CONFIRM, align 4
  %26 = call %struct.ieee80211_meshpeer_ie* @mesh_parse_meshpeering_action(%struct.ieee80211_node* %17, %struct.ieee80211_frame* %18, i32* %23, i32* %24, %struct.ieee80211_meshpeer_ie* %11, i32 %25)
  store %struct.ieee80211_meshpeer_ie* %26, %struct.ieee80211_meshpeer_ie** %12, align 8
  %27 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %12, align 8
  %28 = icmp eq %struct.ieee80211_meshpeer_ie* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %118

30:                                               ; preds = %4
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %32 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %33 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %36 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %12, align 8
  %37 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %12, align 8
  %40 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %31, i32 %34, %struct.ieee80211_node* %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %102 [
    i32 129, label %46
    i32 128, label %52
    i32 130, label %57
    i32 131, label %73
  ]

46:                                               ; preds = %30
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %48 = load i32, i32* @IEEE80211_NODE_MESH_ESTABLISHED, align 4
  %49 = call i32 @mesh_linkchange(%struct.ieee80211_node* %47, i32 %48)
  %50 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %51 = call i32 @mesh_peer_timeout_stop(%struct.ieee80211_node* %50)
  br label %117

52:                                               ; preds = %30
  %53 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %54 = call i32 @mesh_linkchange(%struct.ieee80211_node* %53, i32 131)
  %55 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %56 = call i32 @mesh_peer_timeout_setup(%struct.ieee80211_node* %55)
  br label %117

57:                                               ; preds = %30
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %12, align 8
  %63 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @IEEE80211_REASON_PEER_LINK_CANCELED, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %69 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %70 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %72 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %68, i32 %69, i32 %70, i32* %71)
  br label %117

73:                                               ; preds = %30
  %74 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %12, align 8
  %78 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %73
  %82 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %84, i32* %85, align 4
  %86 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @IEEE80211_REASON_PEER_LINK_CANCELED, align 4
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %90, i32* %91, align 4
  %92 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %93 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %94 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %96 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %92, i32 %93, i32 %94, i32* %95)
  %97 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %98 = call i32 @mesh_linkchange(%struct.ieee80211_node* %97, i32 130)
  %99 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %100 = call i32 @mesh_peer_timeout_setup(%struct.ieee80211_node* %99)
  br label %101

101:                                              ; preds = %81, %73
  br label %117

102:                                              ; preds = %30
  %103 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %104 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %105 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %108 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %109 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @IEEE80211_DISCARD(%struct.ieee80211vap* %103, i32 %106, %struct.ieee80211_frame* %107, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %113 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %102, %101, %57, %52, %46
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %29
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.ieee80211_meshpeer_ie* @mesh_parse_meshpeering_action(%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*, %struct.ieee80211_meshpeer_ie*, i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32, i32) #1

declare dso_local i32 @mesh_linkchange(%struct.ieee80211_node*, i32) #1

declare dso_local i32 @mesh_peer_timeout_stop(%struct.ieee80211_node*) #1

declare dso_local i32 @mesh_peer_timeout_setup(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_send_action(%struct.ieee80211_node*, i32, i32, i32*) #1

declare dso_local i32 @IEEE80211_DISCARD(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
