; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_indiv_data_to_fwrd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_recv_indiv_data_to_fwrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_meshcntl = type { i32 }
%struct.ieee80211_qosframe_addr4 = type { i32, i32, i32 }
%struct.ieee80211_mesh_route = type { i32 }

@IEEE80211_MSG_MESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no route to meshDA(%6D)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"no route\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.mbuf*, %struct.ieee80211_frame*, %struct.ieee80211_meshcntl*)* @mesh_recv_indiv_data_to_fwrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_recv_indiv_data_to_fwrd(%struct.ieee80211vap* %0, %struct.mbuf* %1, %struct.ieee80211_frame* %2, %struct.ieee80211_meshcntl* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.ieee80211_frame*, align 8
  %9 = alloca %struct.ieee80211_meshcntl*, align 8
  %10 = alloca %struct.ieee80211_qosframe_addr4*, align 8
  %11 = alloca %struct.ieee80211_mesh_state*, align 8
  %12 = alloca %struct.ieee80211_mesh_route*, align 8
  %13 = alloca %struct.ieee80211_mesh_route*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.ieee80211_frame* %2, %struct.ieee80211_frame** %8, align 8
  store %struct.ieee80211_meshcntl* %3, %struct.ieee80211_meshcntl** %9, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %15, align 8
  store %struct.ieee80211_mesh_state* %16, %struct.ieee80211_mesh_state** %11, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IEEE80211_TX_UNLOCK_ASSERT(i32 %19)
  %21 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %22 = bitcast %struct.ieee80211_frame* %21 to %struct.ieee80211_qosframe_addr4*
  store %struct.ieee80211_qosframe_addr4* %22, %struct.ieee80211_qosframe_addr4** %10, align 8
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %24 = load %struct.ieee80211_qosframe_addr4*, %struct.ieee80211_qosframe_addr4** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_qosframe_addr4, %struct.ieee80211_qosframe_addr4* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap* %23, i32 %26)
  store %struct.ieee80211_mesh_route* %27, %struct.ieee80211_mesh_route** %12, align 8
  %28 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %12, align 8
  %29 = icmp eq %struct.ieee80211_mesh_route* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %32 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %33 = load %struct.ieee80211_qosframe_addr4*, %struct.ieee80211_qosframe_addr4** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_qosframe_addr4, %struct.ieee80211_qosframe_addr4* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee80211_qosframe_addr4*, %struct.ieee80211_qosframe_addr4** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_qosframe_addr4, %struct.ieee80211_qosframe_addr4* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %70

40:                                               ; preds = %4
  %41 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %12, align 8
  %42 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %11, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ticks_to_msecs(i32 %46)
  %48 = call i32 @ieee80211_mesh_rt_update(%struct.ieee80211_mesh_route* %41, i32 %47)
  %49 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %50 = load %struct.ieee80211_qosframe_addr4*, %struct.ieee80211_qosframe_addr4** %10, align 8
  %51 = getelementptr inbounds %struct.ieee80211_qosframe_addr4, %struct.ieee80211_qosframe_addr4* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap* %49, i32 %52)
  store %struct.ieee80211_mesh_route* %53, %struct.ieee80211_mesh_route** %13, align 8
  %54 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %13, align 8
  %55 = icmp ne %struct.ieee80211_mesh_route* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %13, align 8
  %59 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %11, align 8
  %60 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ticks_to_msecs(i32 %63)
  %65 = call i32 @ieee80211_mesh_rt_update(%struct.ieee80211_mesh_route* %58, i32 %64)
  %66 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %68 = load %struct.ieee80211_meshcntl*, %struct.ieee80211_meshcntl** %9, align 8
  %69 = call i32 @mesh_forward(%struct.ieee80211vap* %66, %struct.mbuf* %67, %struct.ieee80211_meshcntl* %68)
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %40, %30
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @IEEE80211_TX_UNLOCK_ASSERT(i32) #1

declare dso_local %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @ieee80211_mesh_rt_update(%struct.ieee80211_mesh_route*, i32) #1

declare dso_local i32 @ticks_to_msecs(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mesh_forward(%struct.ieee80211vap*, %struct.mbuf*, %struct.ieee80211_meshcntl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
