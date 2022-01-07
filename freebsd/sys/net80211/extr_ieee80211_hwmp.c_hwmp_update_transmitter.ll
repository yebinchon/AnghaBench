; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_update_transmitter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_update_transmitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_4__, %struct.ieee80211_mesh_state* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_mesh_state = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_node*)* }
%struct.ieee80211_node = type { i32 }
%struct.ieee80211_mesh_route = type { i32, i32, i32, i32 }

@IEEE80211_MSG_HWMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unable to add path to transmitter %6D of %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@IEEE80211_MESHRT_FLAGS_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%s path to transmitter %6D of %s, metric %d:%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"prefer\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, %struct.ieee80211_node*, i8*)* @hwmp_update_transmitter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwmp_update_transmitter(%struct.ieee80211vap* %0, %struct.ieee80211_node* %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_mesh_state*, align 8
  %8 = alloca %struct.ieee80211_mesh_route*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %11, align 8
  store %struct.ieee80211_mesh_state* %12, %struct.ieee80211_mesh_state** %7, align 8
  store %struct.ieee80211_mesh_route* null, %struct.ieee80211_mesh_route** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap* %13, i32 %16)
  store %struct.ieee80211_mesh_route* %17, %struct.ieee80211_mesh_route** %8, align 8
  %18 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %19 = icmp eq %struct.ieee80211_mesh_route* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_add(%struct.ieee80211vap* %21, i32 %24)
  store %struct.ieee80211_mesh_route* %25, %struct.ieee80211_mesh_route** %8, align 8
  %26 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %27 = icmp eq %struct.ieee80211_mesh_route* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %30 = load i32, i32* @IEEE80211_MSG_HWMP, align 4
  %31 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i8*, i8*, i8*, ...) @IEEE80211_NOTE(%struct.ieee80211vap* %29, i32 %30, %struct.ieee80211_node* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %110

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32 (%struct.ieee80211_node*)*, i32 (%struct.ieee80211_node*)** %49, align 8
  %51 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %52 = call i32 %50(%struct.ieee80211_node* %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_MESHRT_FLAGS_VALID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %110

65:                                               ; preds = %59, %45
  %66 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %67 = load i32, i32* @IEEE80211_MSG_HWMP, align 4
  %68 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %69 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_MESHRT_FLAGS_VALID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %77 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i8*, i8*, i8*, ...) @IEEE80211_NOTE(%struct.ieee80211vap* %66, i32 %67, %struct.ieee80211_node* %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %76, i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %82, i32 %85, i32 %86)
  %88 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @IEEE80211_ADDR_COPY(i32 %90, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %99 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %98, i32 0, i32 2
  store i32 1, i32* %99, align 4
  %100 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %101 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ieee80211_mesh_rt_update(%struct.ieee80211_mesh_route* %100, i32 %105)
  %107 = load i32, i32* @IEEE80211_MESHRT_FLAGS_VALID, align 4
  %108 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %8, align 8
  %109 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %28, %65, %59
  ret void
}

declare dso_local %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_find(%struct.ieee80211vap*, i32) #1

declare dso_local %struct.ieee80211_mesh_route* @ieee80211_mesh_rt_add(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @ieee80211_mesh_rt_update(%struct.ieee80211_mesh_route*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
