; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_mesh_update_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_ieee80211_mesh_update_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64 }
%struct.ieee80211_beacon_offsets = type { i32, i32 }

@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"not a MBSS vap\00", align 1
@IEEE80211_BEACON_MESHCONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mesh_update_beacon(%struct.ieee80211vap* %0, %struct.ieee80211_beacon_offsets* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_beacon_offsets*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211_beacon_offsets* %1, %struct.ieee80211_beacon_offsets** %4, align 8
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ieee80211_beacon_offsets*, %struct.ieee80211_beacon_offsets** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_beacon_offsets, %struct.ieee80211_beacon_offsets* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IEEE80211_BEACON_MESHCONF, align 4
  %16 = call i64 @isset(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_beacon_offsets*, %struct.ieee80211_beacon_offsets** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_beacon_offsets, %struct.ieee80211_beacon_offsets* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %23 = call i32 @ieee80211_add_meshconf(i32 %21, %struct.ieee80211vap* %22)
  %24 = load %struct.ieee80211_beacon_offsets*, %struct.ieee80211_beacon_offsets** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_beacon_offsets, %struct.ieee80211_beacon_offsets* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IEEE80211_BEACON_MESHCONF, align 4
  %28 = call i32 @clrbit(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @isset(i32, i32) #1

declare dso_local i32 @ieee80211_add_meshconf(i32, %struct.ieee80211vap*) #1

declare dso_local i32 @clrbit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
