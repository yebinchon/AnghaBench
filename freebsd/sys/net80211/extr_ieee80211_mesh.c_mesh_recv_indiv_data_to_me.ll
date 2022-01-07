; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_indiv_data_to_me.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_indiv_data_to_me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_meshcntl = type { i32 }
%struct.ieee80211_qosframe_addr4 = type { i32, i32, i32 }
%struct.ieee80211_meshcntl_ae10 = type { i32, i32, i32 }
%struct.ieee80211_mesh_route = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"no route\00", align 1
@IEEE80211_MESH_AE_MASK = common dso_local global i32 0, align 4
@IEEE80211_MESH_AE_00 = common dso_local global i32 0, align 4
@IEEE80211_MESH_AE_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"bad AE %d\00", align 1
@IEEE80211_MESHRT_FLAGS_VALID = common dso_local global i32 0, align 4
@IEEE80211_MESHRT_FLAGS_PROXY = common dso_local global i32 0, align 4
@IEEE80211_MSG_OUTPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"forward frame to DS, SA(%6D) DA(%6D)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.mbuf*, %struct.ieee80211_frame*, %struct.ieee80211_meshcntl*)* @mesh_recv_indiv_data_to_me to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_recv_indiv_data_to_me(%struct.ieee80211vap* %0, %struct.mbuf* %1, %struct.ieee80211_frame* %2, %struct.ieee80211_meshcntl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.ieee80211_frame*, align 8
  %9 = alloca %struct.ieee80211_meshcntl*, align 8
  %10 = alloca %struct.ieee80211_qosframe_addr4*, align 8
  %11 = alloca %struct.ieee80211_meshcntl_ae10*, align 8
  %12 = alloca %struct.ieee80211_mesh_state*, align 8
  %13 = alloca %struct.ieee80211_mesh_route*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.ieee80211_frame* %2, %struct.ieee80211_frame** %8, align 8
  store %struct.ieee80211_meshcntl* %3, %struct.ieee80211_meshcntl** %9, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 1
  %17 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %16, align 8
  store %struct.ieee80211_mesh_state* %17, %struct.ieee80211_mesh_state** %12, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IEEE80211_TX_UNLOCK_ASSERT(i32 %20)
  %22 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %23 = bitcast %struct.ieee80211_frame* %22 to %struct.ieee80211_qosframe_addr4*
  store %struct.ieee80211_qosframe_addr4* %23, %struct.ieee80211_qosframe_addr4** %10, align 8
  %24 = load %struct.ieee80211_meshcntl*, %struct.ieee80211_meshcntl** %9, align 8
  %25 = bitcast %struct.ieee80211_meshcntl* %24 to %struct.ieee80211_meshcntl_ae10*
  store %struct.ieee80211_meshcntl_ae10* %25, %struct.ieee80211_meshcntl_ae10** %11, align 8
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %27 = load %struct.ieee80211_qosframe_addr4*, %struct.ieee80211_qosframe_addr4** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_qosframe_addr4, %struct.ieee80211_qosframe_addr4* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap* %26, i32 %29)
  store %struct.ieee80211_mesh_route* %30, %struct.ieee80211_mesh_route** %13, align 8
  %31 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %13, align 8
  %32 = icmp ne %struct.ieee80211_mesh_route* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %13, align 8
  %36 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %12, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ticks_to_msecs(i32 %40)
  %42 = call i32 @ieee80211_mesh_rt_update(%struct.ieee80211_mesh_route* %35, i32 %41)
  store %struct.ieee80211_mesh_route* null, %struct.ieee80211_mesh_route** %13, align 8
  %43 = load %struct.ieee80211_meshcntl_ae10*, %struct.ieee80211_meshcntl_ae10** %11, align 8
  %44 = getelementptr inbounds %struct.ieee80211_meshcntl_ae10, %struct.ieee80211_meshcntl_ae10* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_MESH_AE_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @IEEE80211_MESH_AE_00, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @IEEE80211_MESH_AE_10, align 4
  %54 = icmp eq i32 %52, %53
  br label %55

55:                                               ; preds = %51, %4
  %56 = phi i1 [ true, %4 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @KASSERT(i32 %57, i8* %60)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @IEEE80211_MESH_AE_10, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %123

65:                                               ; preds = %55
  %66 = load %struct.ieee80211_meshcntl_ae10*, %struct.ieee80211_meshcntl_ae10** %11, align 8
  %67 = getelementptr inbounds %struct.ieee80211_meshcntl_ae10, %struct.ieee80211_meshcntl_ae10* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211_qosframe_addr4*, %struct.ieee80211_qosframe_addr4** %10, align 8
  %70 = getelementptr inbounds %struct.ieee80211_qosframe_addr4, %struct.ieee80211_qosframe_addr4* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IEEE80211_ADDR_EQ(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %124

75:                                               ; preds = %65
  %76 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %77 = load %struct.ieee80211_meshcntl_ae10*, %struct.ieee80211_meshcntl_ae10** %11, align 8
  %78 = getelementptr inbounds %struct.ieee80211_meshcntl_ae10, %struct.ieee80211_meshcntl_ae10* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap* %76, i32 %79)
  store %struct.ieee80211_mesh_route* %80, %struct.ieee80211_mesh_route** %13, align 8
  %81 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %13, align 8
  %82 = icmp ne %struct.ieee80211_mesh_route* %81, null
  br i1 %82, label %83, label %110

83:                                               ; preds = %75
  %84 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %13, align 8
  %85 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IEEE80211_MESHRT_FLAGS_VALID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %13, align 8
  %92 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IEEE80211_MESHRT_FLAGS_PROXY, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load %struct.ieee80211_qosframe_addr4*, %struct.ieee80211_qosframe_addr4** %10, align 8
  %99 = getelementptr inbounds %struct.ieee80211_qosframe_addr4, %struct.ieee80211_qosframe_addr4* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ieee80211_meshcntl_ae10*, %struct.ieee80211_meshcntl_ae10** %11, align 8
  %102 = getelementptr inbounds %struct.ieee80211_meshcntl_ae10, %struct.ieee80211_meshcntl_ae10* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @IEEE80211_ADDR_COPY(i32 %100, i32 %103)
  %105 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %107 = load %struct.ieee80211_meshcntl_ae10*, %struct.ieee80211_meshcntl_ae10** %11, align 8
  %108 = bitcast %struct.ieee80211_meshcntl_ae10* %107 to %struct.ieee80211_meshcntl*
  %109 = call i32 @mesh_forward(%struct.ieee80211vap* %105, %struct.mbuf* %106, %struct.ieee80211_meshcntl* %108)
  store i32 1, i32* %5, align 4
  br label %124

110:                                              ; preds = %90, %83, %75
  %111 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %112 = load i32, i32* @IEEE80211_MSG_OUTPUT, align 4
  %113 = load %struct.ieee80211_qosframe_addr4*, %struct.ieee80211_qosframe_addr4** %10, align 8
  %114 = getelementptr inbounds %struct.ieee80211_qosframe_addr4, %struct.ieee80211_qosframe_addr4* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ieee80211_meshcntl_ae10*, %struct.ieee80211_meshcntl_ae10** %11, align 8
  %117 = getelementptr inbounds %struct.ieee80211_meshcntl_ae10, %struct.ieee80211_meshcntl_ae10* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ieee80211_meshcntl_ae10*, %struct.ieee80211_meshcntl_ae10** %11, align 8
  %120 = getelementptr inbounds %struct.ieee80211_meshcntl_ae10, %struct.ieee80211_meshcntl_ae10* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap* %111, i32 %112, i32 %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %110, %55
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %97, %74
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @IEEE80211_TX_UNLOCK_ASSERT(i32) #1

declare dso_local %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ieee80211_mesh_rt_update(%struct.ieee80211_mesh_route*, i32) #1

declare dso_local i32 @ticks_to_msecs(i32) #1

declare dso_local i64 @IEEE80211_ADDR_EQ(i32, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @mesh_forward(%struct.ieee80211vap*, %struct.mbuf*, %struct.ieee80211_meshcntl*) #1

declare dso_local i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap*, i32, i32, i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
