; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_peer_timeout_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_peer_timeout_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, i32, i32, i32, i32 }

@IEEE80211_MSG_MESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"mesh link timeout, state %d, retry counter %d\00", align 1
@ieee80211_mesh_maxretries = common dso_local global i32 0, align 4
@IEEE80211_REASON_MESH_MAX_RETRIES = common dso_local global i32 0, align 4
@IEEE80211_ACTION_CAT_SELF_PROT = common dso_local global i32 0, align 4
@IEEE80211_ACTION_MESHPEERING_CLOSE = common dso_local global i32 0, align 4
@IEEE80211_ACTION_MESHPEERING_OPEN = common dso_local global i32 0, align 4
@IEEE80211_REASON_MESH_CONFIRM_TIMEOUT = common dso_local global i32 0, align 4
@ieee80211_mesh_maxholding = common dso_local global i32 0, align 4
@ieee80211_mesh_backofftimeout = common dso_local global i32 0, align 4
@mesh_peer_backoff_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mesh_peer_timeout_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_peer_timeout_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca [3 x i32], align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %6, %struct.ieee80211_node** %3, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IEEE80211_NOTE(i32 %9, i32 %10, %struct.ieee80211_node* %11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %100 [
    i32 130, label %22
    i32 132, label %22
    i32 128, label %23
    i32 129, label %23
    i32 133, label %64
    i32 131, label %80
  ]

22:                                               ; preds = %1, %1
  br label %100

23:                                               ; preds = %1, %1
  %24 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ieee80211_mesh_maxretries, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @IEEE80211_REASON_MESH_MAX_RETRIES, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %37 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %38 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %40 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %36, i32 %37, i32 %38, i32* %39)
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %41, i32 0, i32 4
  store i32 0, i32* %42, align 4
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %44 = call i32 @mesh_linkchange(%struct.ieee80211_node* %43, i32 131)
  %45 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %46 = call i32 @mesh_peer_timeout_setup(%struct.ieee80211_node* %45)
  br label %63

47:                                               ; preds = %23
  %48 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %53 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %54 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_OPEN, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %56 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %52, i32 %53, i32 %54, i32* %55)
  %57 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %62 = call i32 @mesh_peer_timeout_backoff(%struct.ieee80211_node* %61)
  br label %63

63:                                               ; preds = %47, %29
  br label %100

64:                                               ; preds = %1
  %65 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @IEEE80211_REASON_MESH_CONFIRM_TIMEOUT, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %72 = load i32, i32* @IEEE80211_ACTION_CAT_SELF_PROT, align 4
  %73 = load i32, i32* @IEEE80211_ACTION_MESHPEERING_CLOSE, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %75 = call i32 @ieee80211_send_action(%struct.ieee80211_node* %71, i32 %72, i32 %73, i32* %74)
  %76 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %77 = call i32 @mesh_linkchange(%struct.ieee80211_node* %76, i32 131)
  %78 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %79 = call i32 @mesh_peer_timeout_setup(%struct.ieee80211_node* %78)
  br label %100

80:                                               ; preds = %1
  %81 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %82 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ieee80211_mesh_maxholding, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %92 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %91, i32 0, i32 1
  %93 = load i32, i32* @ieee80211_mesh_backofftimeout, align 4
  %94 = load i32, i32* @mesh_peer_backoff_cb, align 4
  %95 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %96 = call i32 @callout_reset(i32* %92, i32 %93, i32 %94, %struct.ieee80211_node* %95)
  br label %97

97:                                               ; preds = %90, %80
  %98 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %99 = call i32 @mesh_linkchange(%struct.ieee80211_node* %98, i32 130)
  br label %100

100:                                              ; preds = %1, %97, %64, %63, %22
  ret void
}

declare dso_local i32 @IEEE80211_NOTE(i32, i32, %struct.ieee80211_node*, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_send_action(%struct.ieee80211_node*, i32, i32, i32*) #1

declare dso_local i32 @mesh_linkchange(%struct.ieee80211_node*, i32) #1

declare dso_local i32 @mesh_peer_timeout_setup(%struct.ieee80211_node*) #1

declare dso_local i32 @mesh_peer_timeout_backoff(%struct.ieee80211_node*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
