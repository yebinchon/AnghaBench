; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_rt_cleanup_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_rt_cleanup_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mesh_rt_cleanup_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_rt_cleanup_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_mesh_state*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ieee80211vap*
  store %struct.ieee80211vap* %6, %struct.ieee80211vap** %3, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %8, align 8
  store %struct.ieee80211_mesh_state* %9, %struct.ieee80211_mesh_state** %4, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %11 = call i32 @mesh_rt_flush_invalid(%struct.ieee80211vap* %10)
  %12 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %20 = call i32 @callout_reset(i32* %13, i32 %18, void (i8*)* @mesh_rt_cleanup_cb, %struct.ieee80211vap* %19)
  ret void
}

declare dso_local i32 @mesh_rt_flush_invalid(%struct.ieee80211vap*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
