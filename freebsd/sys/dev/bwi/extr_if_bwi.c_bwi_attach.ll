; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, %struct.bwi_mac*, i32, i64, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bwi_mac = type { %struct.bwi_phy, %struct.bwi_regwin }
%struct.bwi_phy = type { i64 }
%struct.bwi_regwin = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bwi_softc*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"bwi_taskq\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@bwi_restart = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@BWI_FW_VERSION3 = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@BWI_CLOCK_MODE_FAST = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@IEEE80211_T_DS = common dso_local global i32 0, align 4
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@BWI_SPROM_11BG_EADDR = common dso_local global i32 0, align 4
@BWI_SPROM_11A_EADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid MAC address: %6D\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown phymode %d\0A\00", align 1
@BWI_SPROM_CARD_INFO = common dso_local global i32 0, align 4
@BWI_SPROM_CARD_INFO_LOCALE = common dso_local global i32 0, align 4
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"locale: %d\0A\00", align 1
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@bwi_vap_create = common dso_local global i32 0, align 4
@bwi_vap_delete = common dso_local global i32 0, align 4
@bwi_raw_xmit = common dso_local global i32 0, align 4
@bwi_updateslot = common dso_local global i32 0, align 4
@bwi_scan_start = common dso_local global i32 0, align 4
@bwi_scan_end = common dso_local global i32 0, align 4
@bwi_set_channel = common dso_local global i32 0, align 4
@bwi_transmit = common dso_local global i32 0, align 4
@bwi_parent = common dso_local global i32 0, align 4
@BWI_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@BWI_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Firmware version\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"led_idle\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"# ticks before LED enters idle state\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"led_blink\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Allow LED to blink\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"txpwr_calib\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Enable software TX power calibration\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@bwi_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_attach(%struct.bwi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwi_mac*, align 8
  %7 = alloca %struct.bwi_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bwi_regwin*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %11, i32 0, i32 20
  store %struct.ieee80211com* %12, %struct.ieee80211com** %4, align 8
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %13, i32 0, i32 19
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %17 = call i32 @BWI_LOCK_INIT(%struct.bwi_softc* %16)
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %22, i32 0, i32 18
  %24 = call i32 @taskqueue_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32* %23)
  %25 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %25, i32 0, i32 18
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %27, i32 0, i32 18
  %29 = load i32, i32* @PI_NET, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @device_get_nameunit(i32 %30)
  %32 = call i32 @taskqueue_start_threads(i32* %28, i32 1, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %33, i32 0, i32 17
  %35 = load i32, i32* @bwi_restart, align 4
  %36 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %37 = call i32 @TASK_INIT(i32* %34, i32 0, i32 %35, %struct.bwi_softc* %36)
  %38 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %38, i32 0, i32 16
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %41 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %40, i32 0, i32 10
  %42 = call i32 @callout_init_mtx(i32* %39, i32* %41, i32 0)
  %43 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %43, i32 0, i32 15
  %45 = load i32, i32* @ifqmaxlen, align 4
  %46 = call i32 @mbufq_init(i32* %44, i32 %45)
  %47 = load i32, i32* @BWI_FW_VERSION3, align 4
  %48 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @hz, align 4
  %51 = mul nsw i32 2350, %50
  %52 = sdiv i32 %51, 1000
  %53 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %54 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* @ticks, align 8
  %56 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %57 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %55, %59
  %61 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %62 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %61, i32 0, i32 14
  store i64 %60, i64* %62, align 8
  %63 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %64 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %66 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  %67 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %68 = call i32 @bwi_power_on(%struct.bwi_softc* %67, i32 1)
  %69 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %70 = call i32 @bwi_bbp_attach(%struct.bwi_softc* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %1
  br label %391

74:                                               ; preds = %1
  %75 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %76 = load i32, i32* @BWI_CLOCK_MODE_FAST, align 4
  %77 = call i32 @bwi_bbp_power_on(%struct.bwi_softc* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %391

81:                                               ; preds = %74
  %82 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %83 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %82, i32 0, i32 13
  %84 = call i64 @BWI_REGWIN_EXIST(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %88 = call i32 @bwi_set_clock_delay(%struct.bwi_softc* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %391

92:                                               ; preds = %86
  %93 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %94 = load i32, i32* @BWI_CLOCK_MODE_FAST, align 4
  %95 = call i32 @bwi_set_clock_mode(%struct.bwi_softc* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %391

99:                                               ; preds = %92
  %100 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %101 = call i32 @bwi_get_pwron_delay(%struct.bwi_softc* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %391

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %81
  %107 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %108 = call i32 @bwi_bus_attach(%struct.bwi_softc* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %391

112:                                              ; preds = %106
  %113 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %114 = call i32 @bwi_get_card_flags(%struct.bwi_softc* %113)
  %115 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %116 = call i32 @bwi_led_attach(%struct.bwi_softc* %115)
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %151, %112
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %120 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %154

123:                                              ; preds = %117
  %124 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %125 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %124, i32 0, i32 12
  %126 = load %struct.bwi_mac*, %struct.bwi_mac** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %126, i64 %128
  store %struct.bwi_mac* %129, %struct.bwi_mac** %6, align 8
  %130 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %131 = load %struct.bwi_mac*, %struct.bwi_mac** %6, align 8
  %132 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %131, i32 0, i32 1
  %133 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %130, %struct.bwi_regwin* %132, %struct.bwi_regwin** %10)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  br label %391

137:                                              ; preds = %123
  %138 = load %struct.bwi_mac*, %struct.bwi_mac** %6, align 8
  %139 = call i32 @bwi_mac_lateattach(%struct.bwi_mac* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %391

143:                                              ; preds = %137
  %144 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %145 = load %struct.bwi_regwin*, %struct.bwi_regwin** %10, align 8
  %146 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %144, %struct.bwi_regwin* %145, %struct.bwi_regwin** null)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %391

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %117

154:                                              ; preds = %117
  %155 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %156 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %155, i32 0, i32 12
  %157 = load %struct.bwi_mac*, %struct.bwi_mac** %156, align 8
  %158 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %157, i64 0
  store %struct.bwi_mac* %158, %struct.bwi_mac** %6, align 8
  %159 = load %struct.bwi_mac*, %struct.bwi_mac** %6, align 8
  %160 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %159, i32 0, i32 0
  store %struct.bwi_phy* %160, %struct.bwi_phy** %7, align 8
  %161 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %162 = call i32 @bwi_bbp_power_off(%struct.bwi_softc* %161)
  %163 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %164 = call i32 @bwi_dma_alloc(%struct.bwi_softc* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  br label %391

168:                                              ; preds = %154
  %169 = load %struct.bwi_mac*, %struct.bwi_mac** %6, align 8
  %170 = call i32 @bwi_mac_fw_alloc(%struct.bwi_mac* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %391

174:                                              ; preds = %168
  %175 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %176 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %175, i32 0, i32 11
  %177 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %178 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %177, i32 0, i32 10
  %179 = call i32 @callout_init_mtx(i32* %176, i32* %178, i32 0)
  %180 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %181 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %174
  %186 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %187 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %237

191:                                              ; preds = %185, %174
  %192 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %193 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i32, i32* @IEEE80211_T_DS, align 4
  %199 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %200 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %199, i32 0, i32 19
  store i32 %198, i32* %200, align 4
  br label %205

201:                                              ; preds = %191
  %202 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %203 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %204 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %203, i32 0, i32 19
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %201, %197
  %206 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %207 = load i32, i32* @BWI_SPROM_11BG_EADDR, align 4
  %208 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %209 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %208, i32 0, i32 18
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @bwi_get_eaddr(%struct.bwi_softc* %206, i32 %207, i32 %210)
  %212 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %213 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %212, i32 0, i32 18
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @IEEE80211_IS_MULTICAST(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %205
  %218 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %219 = load i32, i32* @BWI_SPROM_11A_EADDR, align 4
  %220 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %221 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %220, i32 0, i32 18
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @bwi_get_eaddr(%struct.bwi_softc* %218, i32 %219, i32 %222)
  %224 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %225 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %224, i32 0, i32 18
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @IEEE80211_IS_MULTICAST(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %217
  %230 = load i32, i32* %5, align 4
  %231 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %232 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %231, i32 0, i32 18
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @device_printf(i32 %230, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %235

235:                                              ; preds = %229, %217
  br label %236

236:                                              ; preds = %235, %205
  br label %251

237:                                              ; preds = %185
  %238 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %239 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* @ENXIO, align 4
  store i32 %244, i32* %9, align 4
  br label %391

245:                                              ; preds = %237
  %246 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %247 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %248)
  br label %250

250:                                              ; preds = %245
  br label %251

251:                                              ; preds = %250, %236
  %252 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %253 = load i32, i32* @BWI_SPROM_CARD_INFO, align 4
  %254 = call i32 @bwi_read_sprom(%struct.bwi_softc* %252, i32 %253)
  %255 = load i32, i32* @BWI_SPROM_CARD_INFO_LOCALE, align 4
  %256 = call i32 @__SHIFTOUT(i32 %254, i32 %255)
  %257 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %258 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %257, i32 0, i32 9
  store i32 %256, i32* %258, align 4
  %259 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %260 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %261 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %262 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @DPRINTF(%struct.bwi_softc* %259, i32 %260, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %263)
  %265 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %266 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %267 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %266, i32 0, i32 17
  store %struct.bwi_softc* %265, %struct.bwi_softc** %267, align 8
  %268 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %269 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %270 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %271 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %270, i32 0, i32 16
  %272 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %273 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %272, i32 0, i32 15
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @bwi_getradiocaps(%struct.ieee80211com* %268, i32 %269, i32* %271, i32 %274)
  %276 = load i32, i32* %5, align 4
  %277 = call i32 @device_get_nameunit(i32 %276)
  %278 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %279 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %278, i32 0, i32 14
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* @IEEE80211_C_STA, align 4
  %281 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @IEEE80211_C_WPA, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @IEEE80211_C_BGSCAN, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %290 = or i32 %288, %289
  %291 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %292 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  %293 = load i32, i32* @IEEE80211_M_STA, align 4
  %294 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %295 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %294, i32 0, i32 13
  store i32 %293, i32* %295, align 8
  %296 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %297 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %296)
  %298 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %299 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %298, i32 0, i32 1
  store i32 4, i32* %299, align 4
  %300 = load i32, i32* @bwi_vap_create, align 4
  %301 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %302 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %301, i32 0, i32 12
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* @bwi_vap_delete, align 4
  %304 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %305 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %304, i32 0, i32 11
  store i32 %303, i32* %305, align 8
  %306 = load i32, i32* @bwi_raw_xmit, align 4
  %307 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %308 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %307, i32 0, i32 10
  store i32 %306, i32* %308, align 4
  %309 = load i32, i32* @bwi_updateslot, align 4
  %310 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %311 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %310, i32 0, i32 9
  store i32 %309, i32* %311, align 8
  %312 = load i32, i32* @bwi_scan_start, align 4
  %313 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %314 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %313, i32 0, i32 8
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* @bwi_scan_end, align 4
  %316 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %317 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %316, i32 0, i32 7
  store i32 %315, i32* %317, align 8
  %318 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %319 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %318, i32 0, i32 6
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @bwi_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %319, align 8
  %320 = load i32, i32* @bwi_set_channel, align 4
  %321 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %322 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %321, i32 0, i32 5
  store i32 %320, i32* %322, align 4
  %323 = load i32, i32* @bwi_transmit, align 4
  %324 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %325 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 8
  %326 = load i32, i32* @bwi_parent, align 4
  %327 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %328 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %327, i32 0, i32 3
  store i32 %326, i32* %328, align 4
  %329 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %330 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @ieee80211_get_ratetable(i32 %331)
  %333 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %334 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %333, i32 0, i32 8
  store i32 %332, i32* %334, align 8
  %335 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %336 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %337 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %336, i32 0, i32 7
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 0
  %339 = load i32, i32* @BWI_TX_RADIOTAP_PRESENT, align 4
  %340 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %341 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %340, i32 0, i32 6
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = load i32, i32* @BWI_RX_RADIOTAP_PRESENT, align 4
  %344 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %335, i32* %338, i32 4, i32 %339, i32* %342, i32 4, i32 %343)
  %345 = load i32, i32* %5, align 4
  %346 = call i32 @device_get_sysctl_ctx(i32 %345)
  %347 = load i32, i32* %5, align 4
  %348 = call i32 @device_get_sysctl_tree(i32 %347)
  %349 = call i32 @SYSCTL_CHILDREN(i32 %348)
  %350 = load i32, i32* @OID_AUTO, align 4
  %351 = load i32, i32* @CTLFLAG_RD, align 4
  %352 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %353 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %352, i32 0, i32 0
  %354 = call i32 @SYSCTL_ADD_INT(i32 %346, i32 %349, i32 %350, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %351, i32* %353, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %355 = load i32, i32* %5, align 4
  %356 = call i32 @device_get_sysctl_ctx(i32 %355)
  %357 = load i32, i32* %5, align 4
  %358 = call i32 @device_get_sysctl_tree(i32 %357)
  %359 = call i32 @SYSCTL_CHILDREN(i32 %358)
  %360 = load i32, i32* @OID_AUTO, align 4
  %361 = load i32, i32* @CTLFLAG_RW, align 4
  %362 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %363 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %362, i32 0, i32 1
  %364 = call i32 @SYSCTL_ADD_INT(i32 %356, i32 %359, i32 %360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %361, i32* %363, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %365 = load i32, i32* %5, align 4
  %366 = call i32 @device_get_sysctl_ctx(i32 %365)
  %367 = load i32, i32* %5, align 4
  %368 = call i32 @device_get_sysctl_tree(i32 %367)
  %369 = call i32 @SYSCTL_CHILDREN(i32 %368)
  %370 = load i32, i32* @OID_AUTO, align 4
  %371 = load i32, i32* @CTLFLAG_RW, align 4
  %372 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %373 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %372, i32 0, i32 2
  %374 = call i32 @SYSCTL_ADD_INT(i32 %366, i32 %369, i32 %370, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %371, i32* %373, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %375 = load i32, i32* %5, align 4
  %376 = call i32 @device_get_sysctl_ctx(i32 %375)
  %377 = load i32, i32* %5, align 4
  %378 = call i32 @device_get_sysctl_tree(i32 %377)
  %379 = call i32 @SYSCTL_CHILDREN(i32 %378)
  %380 = load i32, i32* @OID_AUTO, align 4
  %381 = load i32, i32* @CTLFLAG_RW, align 4
  %382 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %383 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %382, i32 0, i32 3
  %384 = call i32 @SYSCTL_ADD_INT(i32 %376, i32 %379, i32 %380, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %381, i32* %383, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %385 = load i64, i64* @bootverbose, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %251
  %388 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %389 = call i32 @ieee80211_announce(%struct.ieee80211com* %388)
  br label %390

390:                                              ; preds = %387, %251
  store i32 0, i32* %2, align 4
  br label %395

391:                                              ; preds = %243, %173, %167, %149, %142, %136, %111, %104, %98, %91, %80, %73
  %392 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %393 = call i32 @BWI_LOCK_DESTROY(%struct.bwi_softc* %392)
  %394 = load i32, i32* %9, align 4
  store i32 %394, i32* %2, align 4
  br label %395

395:                                              ; preds = %391, %390
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local i32 @BWI_LOCK_INIT(%struct.bwi_softc*) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.bwi_softc*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @bwi_power_on(%struct.bwi_softc*, i32) #1

declare dso_local i32 @bwi_bbp_attach(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_bbp_power_on(%struct.bwi_softc*, i32) #1

declare dso_local i64 @BWI_REGWIN_EXIST(i32*) #1

declare dso_local i32 @bwi_set_clock_delay(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_set_clock_mode(%struct.bwi_softc*, i32) #1

declare dso_local i32 @bwi_get_pwron_delay(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_bus_attach(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_get_card_flags(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_led_attach(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_regwin_switch(%struct.bwi_softc*, %struct.bwi_regwin*, %struct.bwi_regwin**) #1

declare dso_local i32 @bwi_mac_lateattach(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_bbp_power_off(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_dma_alloc(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_mac_fw_alloc(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_get_eaddr(%struct.bwi_softc*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_MULTICAST(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @bwi_read_sprom(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32) #1

declare dso_local i32 @bwi_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_get_ratetable(i32) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @BWI_LOCK_DESTROY(%struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
