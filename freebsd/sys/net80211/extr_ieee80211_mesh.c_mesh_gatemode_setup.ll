; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_gatemode_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_gatemode_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { i32, i32 }

@IEEE80211_MESHFLAGS_ROOT = common dso_local global i32 0, align 4
@IEEE80211_MESHFLAGS_GATE = common dso_local global i32 0, align 4
@ieee80211_mesh_gateint = common dso_local global i32 0, align 4
@mesh_gatemode_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @mesh_gatemode_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_gatemode_setup(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211_mesh_state*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %4, i32 0, i32 0
  %6 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  store %struct.ieee80211_mesh_state* %6, %struct.ieee80211_mesh_state** %3, align 8
  %7 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IEEE80211_MESHFLAGS_ROOT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_MESHFLAGS_GATE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13, %1
  %21 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %21, i32 0, i32 1
  %23 = call i32 @callout_drain(i32* %22)
  br label %31

24:                                               ; preds = %13
  %25 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %25, i32 0, i32 1
  %27 = load i32, i32* @ieee80211_mesh_gateint, align 4
  %28 = load i32, i32* @mesh_gatemode_cb, align 4
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %30 = call i32 @callout_reset(i32* %26, i32 %27, i32 %28, %struct.ieee80211vap* %29)
  br label %31

31:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
