; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_add_meshconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_add_meshconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"not a MBSS vap\00", align 1
@IEEE80211_ELEMID_MESHCONF = common dso_local global i32 0, align 4
@IEEE80211_MESH_CONF_SZ = common dso_local global i32 0, align 4
@IEEE80211_MESHCONF_CC_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_MESHCONF_SYNC_NEIGHOFF = common dso_local global i32 0, align 4
@IEEE80211_MESHCONF_AUTH_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_MESH_MAX_NEIGHBORS = common dso_local global i32 0, align 4
@IEEE80211_MESHFLAGS_GATE = common dso_local global i32 0, align 4
@IEEE80211_MESHCONF_FORM_GATE = common dso_local global i32 0, align 4
@IEEE80211_MESHFLAGS_AP = common dso_local global i32 0, align 4
@IEEE80211_MESHCONF_CAP_AP = common dso_local global i32 0, align 4
@IEEE80211_MESHFLAGS_FWD = common dso_local global i32 0, align 4
@IEEE80211_MESHCONF_CAP_FWRD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_add_meshconf(i32* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_mesh_state*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %8, align 8
  store %struct.ieee80211_mesh_state* %9, %struct.ieee80211_mesh_state** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @IEEE80211_ELEMID_MESHCONF, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_MESH_CONF_SZ, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %3, align 8
  store i32 %20, i32* %21, align 4
  %23 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %3, align 8
  store i32 %27, i32* %28, align 4
  %30 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %3, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_MESHCONF_CC_DISABLED, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %3, align 8
  store i32 %37, i32* %38, align 4
  %40 = load i32, i32* @IEEE80211_MESHCONF_SYNC_NEIGHOFF, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %3, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_MESHCONF_AUTH_DISABLED, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %3, align 8
  store i32 %43, i32* %44, align 4
  %46 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IEEE80211_MESH_MAX_NEIGHBORS, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i32, i32* @IEEE80211_MESH_MAX_NEIGHBORS, align 4
  br label %57

53:                                               ; preds = %2
  %54 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi i32 [ %52, %51 ], [ %56, %53 ]
  %59 = shl i32 %58, 1
  %60 = load i32*, i32** %3, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IEEE80211_MESHFLAGS_GATE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load i32, i32* @IEEE80211_MESHCONF_FORM_GATE, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %57
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32* %74, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %75 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_MESHFLAGS_AP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32, i32* @IEEE80211_MESHCONF_CAP_AP, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %72
  %86 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  %87 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IEEE80211_MESHFLAGS_FWD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @IEEE80211_MESHCONF_CAP_FWRD, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %3, align 8
  store i32 %97, i32* %98, align 4
  %100 = load i32*, i32** %3, align 8
  ret i32* %100
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
