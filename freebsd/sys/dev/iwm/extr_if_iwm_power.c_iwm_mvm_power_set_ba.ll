; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_set_ba.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_set_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iwm_vap = type { %struct.ieee80211vap }
%struct.ieee80211vap = type { i32, %struct.ieee80211_node* }
%struct.ieee80211_node = type { i32 }
%struct.iwm_beacon_filter_cmd = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@IEEE80211_F_PMGTON = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@IWM_BF_CMD_CONFIG_DEFAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_vap*)* @iwm_mvm_power_set_ba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_power_set_ba(%struct.iwm_softc* %0, %struct.iwm_vap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_vap*, align 8
  %6 = alloca %struct.iwm_beacon_filter_cmd, align 4
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca i64, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_vap* %1, %struct.iwm_vap** %5, align 8
  %10 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %6, i32 0, i32 0
  %11 = call i32 @htole32(i32 1)
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %6, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %14 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %13, i32 0, i32 0
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %7, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 1
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %16, align 8
  store %struct.ieee80211_node* %17, %struct.ieee80211_node** %8, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %27 = icmp ne %struct.ieee80211_node* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %30 = call %struct.TYPE_4__* @IWM_NODE(%struct.ieee80211_node* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IEEE80211_F_PMGTON, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %34, %28, %25
  %44 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %45 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i1 [ false, %43 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %55 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %58 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %59 = call i32 @_iwm_mvm_enable_beacon_filter(%struct.iwm_softc* %57, %struct.iwm_vap* %58, %struct.iwm_beacon_filter_cmd* %6)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @htole32(i32) #1

declare dso_local %struct.TYPE_4__* @IWM_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @_iwm_mvm_enable_beacon_filter(%struct.iwm_softc*, %struct.iwm_vap*, %struct.iwm_beacon_filter_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
