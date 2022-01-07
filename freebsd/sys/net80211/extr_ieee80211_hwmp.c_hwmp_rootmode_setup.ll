; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_rootmode_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_rootmode_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_mesh_state*, %struct.ieee80211_hwmp_state* }
%struct.ieee80211_mesh_state = type { i32 }
%struct.ieee80211_hwmp_state = type { i32, i32 }

@IEEE80211_MESHFLAGS_ROOT = common dso_local global i32 0, align 4
@ieee80211_hwmp_rootint = common dso_local global i32 0, align 4
@hwmp_rootmode_cb = common dso_local global i32 0, align 4
@ieee80211_hwmp_rannint = common dso_local global i32 0, align 4
@hwmp_rootmode_rann_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @hwmp_rootmode_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwmp_rootmode_setup(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211_hwmp_state*, align 8
  %4 = alloca %struct.ieee80211_mesh_state*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 1
  %7 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %6, align 8
  store %struct.ieee80211_hwmp_state* %7, %struct.ieee80211_hwmp_state** %3, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %9, align 8
  store %struct.ieee80211_mesh_state* %10, %struct.ieee80211_mesh_state** %4, align 8
  %11 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hwmp_state, %struct.ieee80211_hwmp_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %48 [
    i32 131, label %14
    i32 130, label %24
    i32 129, label %24
    i32 128, label %36
  ]

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hwmp_state, %struct.ieee80211_hwmp_state* %15, i32 0, i32 1
  %17 = call i32 @callout_drain(i32* %16)
  %18 = load i32, i32* @IEEE80211_MESHFLAGS_ROOT, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %48

24:                                               ; preds = %1, %1
  %25 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hwmp_state, %struct.ieee80211_hwmp_state* %25, i32 0, i32 1
  %27 = load i32, i32* @ieee80211_hwmp_rootint, align 4
  %28 = load i32, i32* @hwmp_rootmode_cb, align 4
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %30 = call i32 @callout_reset(i32* %26, i32 %27, i32 %28, %struct.ieee80211vap* %29)
  %31 = load i32, i32* @IEEE80211_MESHFLAGS_ROOT, align 4
  %32 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %48

36:                                               ; preds = %1
  %37 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hwmp_state, %struct.ieee80211_hwmp_state* %37, i32 0, i32 1
  %39 = load i32, i32* @ieee80211_hwmp_rannint, align 4
  %40 = load i32, i32* @hwmp_rootmode_rann_cb, align 4
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %42 = call i32 @callout_reset(i32* %38, i32 %39, i32 %40, %struct.ieee80211vap* %41)
  %43 = load i32, i32* @IEEE80211_MESHFLAGS_ROOT, align 4
  %44 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %1, %36, %24, %14
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
