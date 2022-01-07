; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_verify_meshconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_verify_meshconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_meshconf_ie = type { i64, i64, i64, i64, i64, i32 }

@IEEE80211_MSG_MESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unknown path selection algorithm: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unknown path metric algorithm: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"unknown congestion control algorithm: 0x%x\0A\00", align 1
@IEEE80211_MESHCONF_SYNC_NEIGHOFF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"unknown sync algorithm: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"unknown auth auth algorithm: 0x%x\0A\00", align 1
@IEEE80211_MESHCONF_CAP_AP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"not accepting peers: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32*)* @mesh_verify_meshconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_verify_meshconf(%struct.ieee80211vap* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_meshconf_ie*, align 8
  %7 = alloca %struct.ieee80211_mesh_state*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.ieee80211_meshconf_ie*
  store %struct.ieee80211_meshconf_ie* %9, %struct.ieee80211_meshconf_ie** %6, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %11, align 8
  store %struct.ieee80211_mesh_state* %12, %struct.ieee80211_mesh_state** %7, align 8
  %13 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %14 = icmp eq %struct.ieee80211_meshconf_ie* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %107

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %28 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %29 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %27, i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 1, i32* %3, align 4
  br label %107

34:                                               ; preds = %16
  %35 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %37, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %46 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %47 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %45, i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 1, i32* %3, align 4
  br label %107

52:                                               ; preds = %34
  %53 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %59 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %60 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %58, i32 %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 1, i32* %3, align 4
  br label %107

65:                                               ; preds = %52
  %66 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IEEE80211_MESHCONF_SYNC_NEIGHOFF, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %73 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %74 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %72, i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  store i32 1, i32* %3, align 4
  br label %107

79:                                               ; preds = %65
  %80 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %86 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %87 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %85, i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  store i32 1, i32* %3, align 4
  br label %107

92:                                               ; preds = %79
  %93 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %94 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IEEE80211_MESHCONF_CAP_AP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %101 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %102 = load %struct.ieee80211_meshconf_ie*, %struct.ieee80211_meshconf_ie** %6, align 8
  %103 = getelementptr inbounds %struct.ieee80211_meshconf_ie, %struct.ieee80211_meshconf_ie* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @IEEE80211_DPRINTF(%struct.ieee80211vap* %100, i32 %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  store i32 1, i32* %3, align 4
  br label %107

106:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %99, %84, %71, %57, %44, %26, %15
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @IEEE80211_DPRINTF(%struct.ieee80211vap*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
