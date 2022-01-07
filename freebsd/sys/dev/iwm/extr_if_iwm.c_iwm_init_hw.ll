; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, %struct.TYPE_2__*, i32*, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211com = type { i32* }

@IWM_SF_UNINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"iwm_start_hw: failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"iwm_run_init_mvm_ucode: failed %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not initialize hardware\0A\00", align 1
@IWM_UCODE_REGULAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"could not load firmware\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to initialize Smart Fifo\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"bt init conf failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"antenna config failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"phy_cfg_cmd failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"add_aux_sta failed\0A\00", align 1
@IWM_NUM_PHY_CTX = common dso_local global i32 0, align 4
@IWM_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"PCIe LTR configuration failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ZZ\00", align 1
@IWM_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4
@WME_NUM_AC = common dso_local global i32 0, align 4
@IWM_STATION_ID = common dso_local global i32 0, align 4
@iwm_mvm_ac_to_tx_fifo = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to disable beacon filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_init_hw(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %8 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %9 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %8, i32 0, i32 6
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load i32, i32* @IWM_SF_UNINIT, align 4
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %12 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %14 = call i32 @iwm_start_hw(%struct.iwm_softc* %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %213

20:                                               ; preds = %1
  %21 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %22 = call i32 @iwm_run_init_mvm_ucode(%struct.iwm_softc* %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %213

28:                                               ; preds = %20
  %29 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %30 = call i32 @iwm_stop_device(%struct.iwm_softc* %29)
  %31 = load i32, i32* @FALSE, align 4
  %32 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %33 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %35 = call i32 @iwm_start_hw(%struct.iwm_softc* %34)
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %39 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %213

43:                                               ; preds = %28
  %44 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %45 = load i32, i32* @IWM_UCODE_REGULAR, align 4
  %46 = call i32 @iwm_mvm_load_ucode_wait_alive(%struct.iwm_softc* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %51 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %209

54:                                               ; preds = %43
  %55 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @iwm_mvm_sf_update(%struct.iwm_softc* %55, i32* null, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %62 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %54
  %66 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %67 = call i32 @iwm_send_bt_init_conf(%struct.iwm_softc* %66)
  store i32 %67, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %71 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %209

74:                                               ; preds = %65
  %75 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %76 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %77 = call i32 @iwm_mvm_get_valid_tx_ant(%struct.iwm_softc* %76)
  %78 = call i32 @iwm_send_tx_ant_cfg(%struct.iwm_softc* %75, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %83 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %209

86:                                               ; preds = %74
  %87 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %88 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @iwm_send_phy_db_data(i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %209

93:                                               ; preds = %86
  %94 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %95 = call i32 @iwm_send_phy_cfg_cmd(%struct.iwm_softc* %94)
  store i32 %95, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %99 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %209

102:                                              ; preds = %93
  %103 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %104 = call i32 @iwm_mvm_add_aux_sta(%struct.iwm_softc* %103)
  store i32 %104, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %108 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %209

111:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %132, %111
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @IWM_NUM_PHY_CTX, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %118 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %119 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %125 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = call i32 @iwm_mvm_phy_ctxt_add(%struct.iwm_softc* %117, i32* %123, i32* %127, i32 1, i32 1)
  store i32 %128, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %209

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %112

135:                                              ; preds = %112
  %136 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %137 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @IWM_DEVICE_FAMILY_7000, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %145 = call i32 @iwm_mvm_tt_tx_backoff(%struct.iwm_softc* %144, i32 0)
  br label %146

146:                                              ; preds = %143, %135
  %147 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %148 = call i64 @iwm_mvm_config_ltr(%struct.iwm_softc* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %152 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %155

155:                                              ; preds = %150, %146
  %156 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %157 = call i32 @iwm_mvm_power_update_device(%struct.iwm_softc* %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %209

161:                                              ; preds = %155
  %162 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %163 = call i32 @iwm_send_update_mcc_cmd(%struct.iwm_softc* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 %163, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %209

166:                                              ; preds = %161
  %167 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %168 = load i32, i32* @IWM_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %169 = call i64 @iwm_fw_has_capa(%struct.iwm_softc* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %173 = call i32 @iwm_mvm_config_umac_scan(%struct.iwm_softc* %172)
  store i32 %173, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %209

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176, %166
  store i32 0, i32* %7, align 4
  br label %178

178:                                              ; preds = %196, %177
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @WME_NUM_AC, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %178
  %183 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %184 = load i32, i32* @IWM_STATION_ID, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32*, i32** @iwm_mvm_ac_to_tx_fifo, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @iwm_enable_txq(%struct.iwm_softc* %183, i32 %184, i32 %185, i32 %190)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %182
  br label %209

195:                                              ; preds = %182
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %178

199:                                              ; preds = %178
  %200 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %201 = call i32 @iwm_mvm_disable_beacon_filter(%struct.iwm_softc* %200)
  store i32 %201, i32* %5, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %205 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @device_printf(i32 %206, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %209

208:                                              ; preds = %199
  store i32 0, i32* %2, align 4
  br label %213

209:                                              ; preds = %203, %194, %175, %165, %160, %130, %106, %97, %92, %81, %69, %49
  %210 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %211 = call i32 @iwm_stop_device(%struct.iwm_softc* %210)
  %212 = load i32, i32* %5, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %209, %208, %37, %24, %16
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i32 @iwm_start_hw(%struct.iwm_softc*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @iwm_run_init_mvm_ucode(%struct.iwm_softc*, i32) #1

declare dso_local i32 @iwm_stop_device(%struct.iwm_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iwm_mvm_load_ucode_wait_alive(%struct.iwm_softc*, i32) #1

declare dso_local i32 @iwm_mvm_sf_update(%struct.iwm_softc*, i32*, i32) #1

declare dso_local i32 @iwm_send_bt_init_conf(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_send_tx_ant_cfg(%struct.iwm_softc*, i32) #1

declare dso_local i32 @iwm_mvm_get_valid_tx_ant(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_send_phy_db_data(i32) #1

declare dso_local i32 @iwm_send_phy_cfg_cmd(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_add_aux_sta(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_phy_ctxt_add(%struct.iwm_softc*, i32*, i32*, i32, i32) #1

declare dso_local i32 @iwm_mvm_tt_tx_backoff(%struct.iwm_softc*, i32) #1

declare dso_local i64 @iwm_mvm_config_ltr(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_power_update_device(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_send_update_mcc_cmd(%struct.iwm_softc*, i8*) #1

declare dso_local i64 @iwm_fw_has_capa(%struct.iwm_softc*, i32) #1

declare dso_local i32 @iwm_mvm_config_umac_scan(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_enable_txq(%struct.iwm_softc*, i32, i32, i32) #1

declare dso_local i32 @iwm_mvm_disable_beacon_filter(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
