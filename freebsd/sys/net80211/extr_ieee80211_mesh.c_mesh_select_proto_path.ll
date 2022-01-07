; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_select_proto_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_select_proto_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ieee80211vap = type { %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { %struct.TYPE_3__* }

@mesh_proto_paths = common dso_local global %struct.TYPE_3__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i8*)* @mesh_select_proto_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_select_proto_path(%struct.ieee80211vap* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_mesh_state*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %9, align 8
  store %struct.ieee80211_mesh_state* %10, %struct.ieee80211_mesh_state** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mesh_proto_paths, align 8
  %14 = call i32 @nitems(%struct.TYPE_3__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mesh_proto_paths, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcasecmp(i32 %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mesh_proto_paths, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %31, i32 0, i32 0
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %32, align 8
  store i32 0, i32* %3, align 4
  br label %39

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* @ENOENT, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
