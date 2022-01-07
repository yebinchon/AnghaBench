; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_rootmode_rann_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hwmp.c_hwmp_rootmode_rann_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_2__, i32, i32, %struct.ieee80211_mesh_state*, %struct.ieee80211_hwmp_state* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_mesh_state = type { i32, i32 }
%struct.ieee80211_hwmp_state = type { i64 }
%struct.ieee80211_meshrann_ie = type { i32, i32, i32, i64, i32, i32, i64 }

@IEEE80211_MSG_HWMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"send broadcast RANN\00", align 1
@IEEE80211_MESHFLAGS_GATE = common dso_local global i32 0, align 4
@ieee80211_hwmp_rannint = common dso_local global i32 0, align 4
@IEEE80211_MESHLMETRIC_INITIALVAL = common dso_local global i32 0, align 4
@broadcastaddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hwmp_rootmode_rann_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwmp_rootmode_rann_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_hwmp_state*, align 8
  %5 = alloca %struct.ieee80211_mesh_state*, align 8
  %6 = alloca %struct.ieee80211_meshrann_ie, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ieee80211vap*
  store %struct.ieee80211vap* %8, %struct.ieee80211vap** %3, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 4
  %11 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %10, align 8
  store %struct.ieee80211_hwmp_state* %11, %struct.ieee80211_hwmp_state** %4, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 3
  %14 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %13, align 8
  store %struct.ieee80211_mesh_state* %14, %struct.ieee80211_mesh_state** %5, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = load i32, i32* @IEEE80211_MSG_HWMP, align 4
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.ieee80211_meshrann_ie, %struct.ieee80211_meshrann_ie* %6, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IEEE80211_MESHFLAGS_GATE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @IEEE80211_MESHFLAGS_GATE, align 4
  %30 = getelementptr inbounds %struct.ieee80211_meshrann_ie, %struct.ieee80211_meshrann_ie* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %1
  %34 = getelementptr inbounds %struct.ieee80211_meshrann_ie, %struct.ieee80211_meshrann_ie* %6, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.ieee80211_mesh_state*, %struct.ieee80211_mesh_state** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_mesh_state, %struct.ieee80211_mesh_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_meshrann_ie, %struct.ieee80211_meshrann_ie* %6, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.ieee80211_meshrann_ie, %struct.ieee80211_meshrann_ie* %6, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IEEE80211_ADDR_COPY(i32 %40, i32 %43)
  %45 = load %struct.ieee80211_hwmp_state*, %struct.ieee80211_hwmp_state** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hwmp_state, %struct.ieee80211_hwmp_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds %struct.ieee80211_meshrann_ie, %struct.ieee80211_meshrann_ie* %6, i32 0, i32 3
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* @ieee80211_hwmp_rannint, align 4
  %51 = getelementptr inbounds %struct.ieee80211_meshrann_ie, %struct.ieee80211_meshrann_ie* %6, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* @IEEE80211_MESHLMETRIC_INITIALVAL, align 4
  %53 = getelementptr inbounds %struct.ieee80211_meshrann_ie, %struct.ieee80211_meshrann_ie* %6, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %60 = load i32, i32* @broadcastaddr, align 4
  %61 = call i32 @hwmp_send_rann(%struct.ieee80211vap* %59, i32 %60, %struct.ieee80211_meshrann_ie* %6)
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %63 = call i32 @hwmp_rootmode_setup(%struct.ieee80211vap* %62)
  ret void
}

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, i32, i8*, i8*) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @hwmp_send_rann(%struct.ieee80211vap*, i32, %struct.ieee80211_meshrann_ie*) #1

declare dso_local i32 @hwmp_rootmode_setup(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
