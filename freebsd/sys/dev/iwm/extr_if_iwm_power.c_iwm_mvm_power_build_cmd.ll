; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_build_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_build_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i64 }
%struct.iwm_vap = type { i32, i32, %struct.ieee80211vap }
%struct.ieee80211vap = type { i32, i64, %struct.ieee80211_node* }
%struct.ieee80211_node = type { i32 }
%struct.iwm_mac_power_cmd = type { i8*, i8*, i32, i32, i8* }
%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@IWM_POWER_KEEP_ALIVE_PERIOD_SEC = common dso_local global i32 0, align 4
@IWM_POWER_FLAGS_POWER_SAVE_ENA_MSK = common dso_local global i32 0, align 4
@IEEE80211_F_PMGTON = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IWM_POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK = common dso_local global i32 0, align 4
@IWM_MVM_DEFAULT_PS_RX_DATA_TIMEOUT = common dso_local global i32 0, align 4
@IWM_MVM_DEFAULT_PS_TX_DATA_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, %struct.iwm_vap*, %struct.iwm_mac_power_cmd*)* @iwm_mvm_power_build_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_mvm_power_build_cmd(%struct.iwm_softc* %0, %struct.iwm_vap* %1, %struct.iwm_mac_power_cmd* %2) #0 {
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_vap*, align 8
  %6 = alloca %struct.iwm_mac_power_cmd*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_vap* %1, %struct.iwm_vap** %5, align 8
  store %struct.iwm_mac_power_cmd* %2, %struct.iwm_mac_power_cmd** %6, align 8
  %13 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %14 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %13, i32 0, i32 2
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %7, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %16, align 8
  store %struct.ieee80211_node* %17, %struct.ieee80211_node** %8, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %20 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iwm_vap*, %struct.iwm_vap** %5, align 8
  %23 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @IWM_FW_CMD_ID_AND_COLOR(i32 %21, i32 %24)
  %26 = call i8* @htole32(i32 %25)
  %27 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %33
  %36 = phi i64 [ %31, %33 ], [ 1, %34 ]
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 3, %43
  %45 = load i32, i32* @IWM_POWER_KEEP_ALIVE_PERIOD_SEC, align 4
  %46 = mul nsw i32 1000, %45
  %47 = call i32 @imax(i32 %44, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @roundup(i32 %48, i32 1000)
  %50 = sdiv i32 %49, 1000
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @htole16(i32 %51)
  %53 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %56 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %35
  br label %103

60:                                               ; preds = %35
  %61 = load i32, i32* @IWM_POWER_FLAGS_POWER_SAVE_ENA_MSK, align 4
  %62 = call i32 @htole16(i32 %61)
  %63 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %68 = call %struct.TYPE_2__* @IWM_NODE(%struct.ieee80211_node* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %60
  %73 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IEEE80211_F_PMGTON, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %72, %60
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %103

85:                                               ; preds = %81
  %86 = load i32, i32* @IWM_POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK, align 4
  %87 = call i32 @htole16(i32 %86)
  %88 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %93 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %6, align 8
  %94 = call i32 @iwm_mvm_power_config_skip_dtim(%struct.iwm_softc* %92, %struct.iwm_mac_power_cmd* %93)
  %95 = load i32, i32* @IWM_MVM_DEFAULT_PS_RX_DATA_TIMEOUT, align 4
  %96 = call i8* @htole32(i32 %95)
  %97 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %6, align 8
  %98 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* @IWM_MVM_DEFAULT_PS_TX_DATA_TIMEOUT, align 4
  %100 = call i8* @htole32(i32 %99)
  %101 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %6, align 8
  %102 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %85, %84, %59
  ret void
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @IWM_FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local %struct.TYPE_2__* @IWM_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @iwm_mvm_power_config_skip_dtim(%struct.iwm_softc*, %struct.iwm_mac_power_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
