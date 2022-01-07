; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_isucastforme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_isucastforme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.ieee80211_frame = type { i32*, i32 }
%struct.ieee80211_meshcntl = type { i32 }
%struct.ieee80211_meshcntl_ae10 = type { i32 }
%struct.ieee80211_mesh_route = type { i32 }

@IEEE80211_FC1_DIR_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC1_DIR_DSTODS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad dir 0x%x:0x%x\00", align 1
@IEEE80211_MESH_AE_00 = common dso_local global i32 0, align 4
@IEEE80211_MESH_AE_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"bad AE %d\00", align 1
@IEEE80211_MESHRT_FLAGS_PROXY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_frame*, %struct.ieee80211_meshcntl*)* @mesh_isucastforme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_isucastforme(%struct.ieee80211vap* %0, %struct.ieee80211_frame* %1, %struct.ieee80211_meshcntl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca %struct.ieee80211_meshcntl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_meshcntl_ae10*, align 8
  %10 = alloca %struct.ieee80211_mesh_route*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store %struct.ieee80211_meshcntl* %2, %struct.ieee80211_meshcntl** %7, align 8
  %11 = load %struct.ieee80211_meshcntl*, %struct.ieee80211_meshcntl** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_meshcntl, %struct.ieee80211_meshcntl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 3
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_FC1_DIR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @IEEE80211_FC1_DIR_DSTODS, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @KASSERT(i32 %24, i8* %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @IEEE80211_MESH_AE_00, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IEEE80211_MESH_AE_10, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %3
  %46 = phi i1 [ true, %3 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @KASSERT(i32 %47, i8* %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @IEEE80211_MESH_AE_10, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %45
  %56 = load %struct.ieee80211_meshcntl*, %struct.ieee80211_meshcntl** %7, align 8
  %57 = bitcast %struct.ieee80211_meshcntl* %56 to %struct.ieee80211_meshcntl_ae10*
  store %struct.ieee80211_meshcntl_ae10* %57, %struct.ieee80211_meshcntl_ae10** %9, align 8
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %59 = load %struct.ieee80211_meshcntl_ae10*, %struct.ieee80211_meshcntl_ae10** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_meshcntl_ae10, %struct.ieee80211_meshcntl_ae10* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap* %58, i32 %61)
  store %struct.ieee80211_mesh_route* %62, %struct.ieee80211_mesh_route** %10, align 8
  %63 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %10, align 8
  %64 = icmp ne %struct.ieee80211_mesh_route* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %10, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE80211_MESHRT_FLAGS_PROXY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %65, %55
  %73 = phi i1 [ false, %55 ], [ %71, %65 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %83

75:                                               ; preds = %45
  %76 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @IEEE80211_ADDR_EQ(i32 %78, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %75, %72
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @IEEE80211_ADDR_EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
