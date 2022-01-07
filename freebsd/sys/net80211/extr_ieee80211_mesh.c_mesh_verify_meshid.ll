; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_verify_meshid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_verify_meshid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_mesh_state* }
%struct.ieee80211_mesh_state = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i64*)* @mesh_verify_meshid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_verify_meshid(%struct.ieee80211vap* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ieee80211_mesh_state*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %8, align 8
  store %struct.ieee80211_mesh_state* %9, %struct.ieee80211_mesh_state** %6, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12, %2
  store i32 1, i32* %3, align 4
  br label %31

21:                                               ; preds = %12
  %22 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  %27 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @memcmp(i32 %24, i64* %26, i64 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %21, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @memcmp(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
