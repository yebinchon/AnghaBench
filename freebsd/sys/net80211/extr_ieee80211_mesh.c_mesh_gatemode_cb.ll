; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_gatemode_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_gatemode_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { i32, i32 }
%struct.ieee80211_meshgann_ie = type { i64, i32, i32, i32, i64, i64 }

@ieee80211_mesh_gateint = common dso_local global i32 0, align 4
@IEEE80211_MSG_MESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"send broadcast GANN (seq %u)\00", align 1
@IEEE80211_ACTION_CAT_MESH = common dso_local global i32 0, align 4
@IEEE80211_ACTION_MESH_GANN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mesh_gatemode_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_gatemode_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_mesh_state*, align 8
  %5 = alloca %struct.ieee80211_meshgann_ie, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ieee80211vap*
  store %struct.ieee80211vap* %7, %struct.ieee80211vap** %3, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 2
  %10 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %9, align 8
  store %struct.ieee80211_mesh_state* %10, %struct.ieee80211_mesh_state** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_meshgann_ie, %struct.ieee80211_meshgann_ie* %5, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.ieee80211_meshgann_ie, %struct.ieee80211_meshgann_ie* %5, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_meshgann_ie, %struct.ieee80211_meshgann_ie* %5, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ieee80211_meshgann_ie, %struct.ieee80211_meshgann_ie* %5, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IEEE80211_ADDR_COPY(i32 %18, i32 %21)
  %23 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.ieee80211_meshgann_ie, %struct.ieee80211_meshgann_ie* %5, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @ieee80211_mesh_gateint, align 4
  %30 = getelementptr inbounds %struct.ieee80211_meshgann_ie, %struct.ieee80211_meshgann_ie* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %32 = load i32, i32* @IEEE80211_MSG_MESH, align 4
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.ieee80211_meshgann_ie, %struct.ieee80211_meshgann_ie* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IEEE80211_ACTION_CAT_MESH, align 4
  %43 = load i32, i32* @IEEE80211_ACTION_MESH_GANN, align 4
  %44 = call i32 @ieee80211_send_action(i32 %41, i32 %42, i32 %43, %struct.ieee80211_meshgann_ie* %5)
  %45 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %46 = call i32 @mesh_gatemode_setup(%struct.ieee80211vap* %45)
  ret void
}

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, i32, i8*, i64) #1

declare dso_local i32 @ieee80211_send_action(i32, i32, i32, %struct.ieee80211_meshgann_ie*) #1

declare dso_local i32 @mesh_gatemode_setup(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
