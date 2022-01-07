; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_action_meshpeering_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_action_meshpeering_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_meshpeer_ie = type { i32, i32 }

@IEEE80211_ACTION_MESHPEERING_OPEN = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_MESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"recv PEER OPEN, lid 0x%x\00", align 1
@IEEE80211_MESH_MAX_NEIGHBORS = common dso_local global i32 0, align 4
@IEEE80211_REASON_MESH_MAX_PEERS = common dso_local global i32 0, align 4
@IEEE80211_ACTION_CAT_SELF_PROT = common dso_local global i32 0, align 4
@IEEE80211_ACTION_MESHPEERING_CLOSE = common dso_local global i32 0, align 4
@IEEE80211_ACTION_MESHPEERING_CONFIRM = common dso_local global i32 0, align 4
@IEEE80211_REASON_PEER_LINK_CANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*)* @mesh_recv_action_meshpeering_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_recv_action_meshpeering_open(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_frame*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211vap*, align 8
  %11 = alloca %struct.ieee80211_mesh_state*, align 8
  %12 = alloca %struct.ieee80211_meshpeer_ie, align 4
  %13 = alloca %struct.ieee80211_meshpeer_ie*, align 8
  %14 = alloca [3 x i32], align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %6, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 3
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %16, align 8
  store %struct.ieee80211vap* %17, %struct.ieee80211vap** %10, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %19, align 8
  store %struct.ieee80211_mesh_state* %20, %struct.ieee80211_mesh_state** %11, align 8
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %22 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_OPEN, align 4
  %28 = call %struct.ieee80211_meshpeer_ie* @mesh_parse_meshpeering_action(%struct.ieee80211_node* %21, %struct.ieee80211_frame* %22, i32* %25, i32* %26, %struct.ieee80211_meshpeer_ie* %12, i32 %27)
  store %struct.ieee80211_meshpeer_ie* %28, %struct.ieee80211_meshpeer_ie** %13, align 8
  %29 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %30 = icmp eq %struct.ieee80211_meshpeer_ie* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %287

32:                                               ; preds = %4
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %34 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %35 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %38 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %39 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %33, i32 %36, %struct.ieee80211_node* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %286 [
    i32 130, label %45
    i32 129, label %106
    i32 128, label %148
    i32 133, label %169
    i32 132, label %228
    i32 131, label %270
  ]

45:                                               ; preds = %32
  %46 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_MESH_MAX_NEIGHBORS, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %53 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* @IEEE80211_REASON_MESH_MAX_PEERS, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %57, i32* %58, align 4
  %59 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %60 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %61 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %63 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %59, i32 %60, i32 %61, i32* %62)
  store i32 0, i32* %5, align 4
  br label %287

64:                                               ; preds = %45
  %65 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %66 = call i32 @mesh_linkchange(%struct.ieee80211_node* %65, i32 129)
  %67 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %68 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %73 = call i32 @mesh_generateid(%struct.ieee80211vap* %72)
  %74 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %287

81:                                               ; preds = %64
  %82 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %84, i32* %85, align 4
  %86 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %87 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %88 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_OPEN, align 4
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %90 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %86, i32 %87, i32 %88, i32* %89)
  %91 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %93, i32* %94, align 4
  %95 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %97, i32* %98, align 4
  %99 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %100 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %101 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CONFIRM, align 4
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %103 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %99, i32 %100, i32 %101, i32* %102)
  %104 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %105 = call i32 @mesh_peer_timeout_setup(%struct.ieee80211_node* %104)
  br label %286

106:                                              ; preds = %32
  %107 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %108 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %111 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %106
  %115 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %116 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %117, i32* %118, align 4
  %119 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %120 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @IEEE80211_REASON_PEER_LINK_CANCELED, align 4
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %123, i32* %124, align 4
  %125 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %126 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %127 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %129 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %125, i32 %126, i32 %127, i32* %128)
  %130 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %131 = call i32 @mesh_linkchange(%struct.ieee80211_node* %130, i32 131)
  %132 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %133 = call i32 @mesh_peer_timeout_setup(%struct.ieee80211_node* %132)
  br label %286

134:                                              ; preds = %106
  %135 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %136 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %137, i32* %138, align 4
  %139 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %140 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %141, i32* %142, align 4
  %143 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %144 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %145 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CONFIRM, align 4
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %147 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %143, i32 %144, i32 %145, i32* %146)
  br label %286

148:                                              ; preds = %32
  %149 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %150 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %153 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %155 = call i32 @mesh_linkchange(%struct.ieee80211_node* %154, i32 129)
  %156 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %157 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %158, i32* %159, align 4
  %160 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %161 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %162, i32* %163, align 4
  %164 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %165 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %166 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CONFIRM, align 4
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %168 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %164, i32 %165, i32 %166, i32* %167)
  br label %286

169:                                              ; preds = %32
  %170 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %171 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %174 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %172, %175
  br i1 %176, label %185, label %177

177:                                              ; preds = %169
  %178 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %179 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %182 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %180, %183
  br i1 %184, label %185, label %205

185:                                              ; preds = %177, %169
  %186 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %187 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %188, i32* %189, align 4
  %190 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %191 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* @IEEE80211_REASON_PEER_LINK_CANCELED, align 4
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %194, i32* %195, align 4
  %196 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %197 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %198 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %199 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %200 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %196, i32 %197, i32 %198, i32* %199)
  %201 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %202 = call i32 @mesh_linkchange(%struct.ieee80211_node* %201, i32 131)
  %203 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %204 = call i32 @mesh_peer_timeout_setup(%struct.ieee80211_node* %203)
  br label %286

205:                                              ; preds = %177
  %206 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %207 = call i32 @mesh_linkchange(%struct.ieee80211_node* %206, i32 132)
  %208 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %209 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %212 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %214 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %215, i32* %216, align 4
  %217 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %218 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %219, i32* %220, align 4
  %221 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %222 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %223 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CONFIRM, align 4
  %224 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %225 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %221, i32 %222, i32 %223, i32* %224)
  %226 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %227 = call i32 @mesh_peer_timeout_stop(%struct.ieee80211_node* %226)
  br label %286

228:                                              ; preds = %32
  %229 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %230 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %233 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %231, %234
  br i1 %235, label %236, label %256

236:                                              ; preds = %228
  %237 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %238 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %239, i32* %240, align 4
  %241 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %242 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %243, i32* %244, align 4
  %245 = load i32, i32* @IEEE80211_REASON_PEER_LINK_CANCELED, align 4
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %245, i32* %246, align 4
  %247 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %248 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %249 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %250 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %251 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %247, i32 %248, i32 %249, i32* %250)
  %252 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %253 = call i32 @mesh_linkchange(%struct.ieee80211_node* %252, i32 131)
  %254 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %255 = call i32 @mesh_peer_timeout_setup(%struct.ieee80211_node* %254)
  br label %286

256:                                              ; preds = %228
  %257 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %258 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %259, i32* %260, align 4
  %261 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %262 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %263, i32* %264, align 4
  %265 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %266 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %267 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CONFIRM, align 4
  %268 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %269 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %265, i32 %266, i32 %267, i32* %268)
  br label %286

270:                                              ; preds = %32
  %271 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %272 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %273, i32* %274, align 4
  %275 = load %struct.ieee80211_meshpeer_ie*, %struct.ieee80211_meshpeer_ie** %13, align 8
  %276 = getelementptr inbounds %struct.ieee80211_meshpeer_ie, %struct.ieee80211_meshpeer_ie* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %277, i32* %278, align 4
  %279 = load i32, i32* @IEEE80211_REASON_PEER_LINK_CANCELED, align 4
  %280 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %279, i32* %280, align 4
  %281 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %282 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %283 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %284 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %285 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %281, i32 %282, i32 %283, i32* %284)
  br label %286

286:                                              ; preds = %32, %270, %256, %236, %205, %185, %148, %134, %114, %81
  store i32 0, i32* %5, align 4
  br label %287

287:                                              ; preds = %286, %80, %51, %31
  %288 = load i32, i32* %5, align 4
  ret i32 %288
}

declare dso_local %struct.ieee80211_meshpeer_ie* @mesh_parse_meshpeering_action(%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*, %struct.ieee80211_meshpeer_ie*, i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32) #1

declare dso_local i32 @ieee80211_send_action(%struct.ieee80211_node*, i32, i32, i32*) #1

declare dso_local i32 @mesh_linkchange(%struct.ieee80211_node*, i32) #1

declare dso_local i32 @mesh_generateid(%struct.ieee80211vap*) #1

declare dso_local i32 @mesh_peer_timeout_setup(%struct.ieee80211_node*) #1

declare dso_local i32 @mesh_peer_timeout_stop(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
