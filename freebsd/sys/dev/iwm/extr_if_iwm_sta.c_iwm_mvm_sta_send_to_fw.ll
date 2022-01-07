; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_sta_send_to_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_sta_send_to_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwm_vap = type { i32, i32 }
%struct.iwm_mvm_add_sta_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IWM_STA_FLG_FAT_EN_MSK = common dso_local global i32 0, align 4
@IWM_STA_FLG_MIMO_EN_MSK = common dso_local global i32 0, align 4
@IWM_STATION_ID = common dso_local global i32 0, align 4
@WME_NUM_AC = common dso_local global i32 0, align 4
@iwm_mvm_ac_to_tx_fifo = common dso_local global i32* null, align 8
@IWM_STA_FLG_MAX_AGG_SIZE_SHIFT = common dso_local global i32 0, align 4
@IWM_STA_FLG_AGG_MPDU_DENS_SHIFT = common dso_local global i32 0, align 4
@IWM_ADD_STA = common dso_local global i32 0, align 4
@IWM_ADD_STA_STATUS_MASK = common dso_local global i32 0, align 4
@IWM_DEBUG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"IWM_ADD_STA PASSED\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"IWM_ADD_STA failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_sta_send_to_fw(%struct.iwm_softc* %0, %struct.iwm_node* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca %struct.iwm_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwm_vap*, align 8
  %9 = alloca %struct.iwm_mvm_add_sta_cmd, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store %struct.iwm_node* %1, %struct.iwm_node** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.iwm_node*, %struct.iwm_node** %6, align 8
  %16 = getelementptr inbounds %struct.iwm_node, %struct.iwm_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.iwm_vap* @IWM_VAP(i32 %18)
  store %struct.iwm_vap* %19, %struct.iwm_vap** %8, align 8
  %20 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %20, align 4
  %25 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 4
  %29 = call i32 @htole16(i32 65535)
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 5
  %31 = load i32, i32* @IWM_STA_FLG_FAT_EN_MSK, align 4
  %32 = load i32, i32* @IWM_STA_FLG_MIMO_EN_MSK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @htole32(i32 %33)
  store i32 %34, i32* %30, align 4
  %35 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 6
  %36 = load %struct.iwm_vap*, %struct.iwm_vap** %8, align 8
  %37 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iwm_vap*, %struct.iwm_vap** %8, align 8
  %40 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IWM_FW_CMD_ID_AND_COLOR(i32 %38, i32 %41)
  %43 = call i32 @htole32(i32 %42)
  store i32 %43, i32* %35, align 4
  %44 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 7
  %45 = load i32, i32* @IWM_STATION_ID, align 4
  store i32 %45, i32* %44, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @WME_NUM_AC, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i32*, i32** @iwm_mvm_ac_to_tx_fifo, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 1, %58
  %60 = call i32 @htole32(i32 %59)
  %61 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %49

67:                                               ; preds = %49
  %68 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 2
  %69 = load %struct.iwm_node*, %struct.iwm_node** %6, align 8
  %70 = getelementptr inbounds %struct.iwm_node, %struct.iwm_node* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @IEEE80211_ADDR_COPY(i32* %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %3
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @IWM_STA_FLG_MAX_AGG_SIZE_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = call i32 @htole32(i32 %77)
  %79 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @IWM_STA_FLG_AGG_MPDU_DENS_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = call i32 @htole32(i32 %84)
  %86 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %9, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 4
  store i32 128, i32* %11, align 4
  %89 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %90 = load i32, i32* @IWM_ADD_STA, align 4
  %91 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %92 = call i32 @iwm_mvm_add_sta_cmd_size(%struct.iwm_softc* %91)
  %93 = call i32 @iwm_mvm_send_cmd_pdu_status(%struct.iwm_softc* %89, i32 %90, i32 %92, %struct.iwm_mvm_add_sta_cmd* %9, i32* %11)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %74
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %114

98:                                               ; preds = %74
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @IWM_ADD_STA_STATUS_MASK, align 4
  %101 = and i32 %99, %100
  switch i32 %101, label %106 [
    i32 128, label %102
  ]

102:                                              ; preds = %98
  %103 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %104 = load i32, i32* @IWM_DEBUG_NODE, align 4
  %105 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %103, i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %112

106:                                              ; preds = %98
  %107 = load i32, i32* @EIO, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %109 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %106, %102
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %96
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.iwm_vap* @IWM_VAP(i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @IWM_FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32*, i32) #1

declare dso_local i32 @iwm_mvm_send_cmd_pdu_status(%struct.iwm_softc*, i32, i32, %struct.iwm_mvm_add_sta_cmd*, i32*) #1

declare dso_local i32 @iwm_mvm_add_sta_cmd_size(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
