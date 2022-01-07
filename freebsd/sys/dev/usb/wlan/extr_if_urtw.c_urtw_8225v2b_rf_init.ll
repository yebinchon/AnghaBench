; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2b_rf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2b_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.urtw_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32*, i32 }
%struct.ieee80211vap = type { i32* }

@URTW_EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@URTW_BRSR_8187B = common dso_local global i32 0, align 4
@URTW_CW_CONF = common dso_local global i32 0, align 4
@URTW_CW_CONF_PERPACKET_RETRY = common dso_local global i32 0, align 4
@URTW_TX_AGC_CTL = common dso_local global i32 0, align 4
@URTW_TX_AGC_CTL_PERPACKET_GAIN = common dso_local global i32 0, align 4
@URTW_RATE_FALLBACK = common dso_local global i32 0, align 4
@URTW_RATE_FALLBACK_ENABLE = common dso_local global i32 0, align 4
@URTW_MSR = common dso_local global i32 0, align 4
@URTW_MSR_LINK_ENEDCA = common dso_local global i32 0, align 4
@URTW_ACM_CONTROL = common dso_local global i32 0, align 4
@URTW_ATIM_WND = common dso_local global i32 0, align 4
@URTW_BEACON_INTERVAL = common dso_local global i32 0, align 4
@URTW_CONFIG1 = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@URTW_WPA_CONFIG = common dso_local global i32 0, align 4
@urtw_8225v2b_rf_part1 = common dso_local global %struct.TYPE_5__* null, align 8
@URTW_TID_AC_MAP = common dso_local global i32 0, align 4
@URTW_INT_MIG = common dso_local global i32 0, align 4
@URTW_RF_TIMING = common dso_local global i32 0, align 4
@URTW_CONFIG3 = common dso_local global i32 0, align 4
@URTW_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@URTW_RF_PINS_OUTPUT = common dso_local global i32 0, align 4
@URTW_RF_PINS_SELECT = common dso_local global i32 0, align 4
@URTW_RF_PINS_ENABLE = common dso_local global i32 0, align 4
@urtw_8225v2b_rf_part0 = common dso_local global %struct.TYPE_5__* null, align 8
@URTW_8225_ADDR_1_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_2_MAGIC = common dso_local global i32 0, align 4
@urtw_8225v2b_rxgain = common dso_local global i32* null, align 8
@URTW_8225_ADDR_3_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_5_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_0_MAGIC = common dso_local global i32 0, align 4
@URTW_TX_GAIN_CCK = common dso_local global i32 0, align 4
@URTW_TX_GAIN_OFDM = common dso_local global i32 0, align 4
@URTW_TX_ANTENNA = common dso_local global i32 0, align 4
@urtw_8225z2_agc = common dso_local global i32* null, align 8
@urtw_8225v2b_rf_part2 = common dso_local global %struct.TYPE_5__* null, align 8
@URTW_8187B_AC_VO = common dso_local global i32 0, align 4
@URTW_8187B_AC_VI = common dso_local global i32 0, align 4
@URTW_8187B_AC_BE = common dso_local global i32 0, align 4
@URTW_8187B_AC_BK = common dso_local global i32 0, align 4
@URTW_ARFR = common dso_local global i32 0, align 4
@URTW_FEMR_FOR_8187B = common dso_local global i32 0, align 4
@URTW_RFSW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_8225v2b_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_8225v2b_rf_init(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %11 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %12 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %11, i32 0, i32 2
  store %struct.ieee80211com* %12, %struct.ieee80211com** %3, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 1
  %15 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %14)
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %4, align 8
  %16 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %17 = load i32, i32* @URTW_EPROM_CMD_CONFIG, align 4
  %18 = call i64 @urtw_set_mode(%struct.urtw_softc* %16, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %385

22:                                               ; preds = %1
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %24 = load i32, i32* @URTW_BRSR_8187B, align 4
  %25 = call i32 @urtw_write16_m(%struct.urtw_softc* %23, i32 %24, i32 4095)
  %26 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %27 = load i32, i32* @URTW_CW_CONF, align 4
  %28 = call i32 @urtw_read8_m(%struct.urtw_softc* %26, i32 %27, i32* %7)
  %29 = load i32, i32* @URTW_CW_CONF_PERPACKET_RETRY, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %33 = load i32, i32* @URTW_CW_CONF, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @urtw_write8_m(%struct.urtw_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %37 = load i32, i32* @URTW_TX_AGC_CTL, align 4
  %38 = call i32 @urtw_read8_m(%struct.urtw_softc* %36, i32 %37, i32* %7)
  %39 = load i32, i32* @URTW_TX_AGC_CTL_PERPACKET_GAIN, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %43 = load i32, i32* @URTW_TX_AGC_CTL, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @urtw_write8_m(%struct.urtw_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %47 = call i32 @urtw_write16_m(%struct.urtw_softc* %46, i32 480, i32 4095)
  %48 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %49 = load i32, i32* @URTW_RATE_FALLBACK, align 4
  %50 = call i32 @urtw_read8_m(%struct.urtw_softc* %48, i32 %49, i32* %7)
  %51 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %52 = load i32, i32* @URTW_RATE_FALLBACK, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @URTW_RATE_FALLBACK_ENABLE, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @urtw_write8_m(%struct.urtw_softc* %51, i32 %52, i32 %55)
  %57 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %58 = load i32, i32* @URTW_MSR, align 4
  %59 = call i32 @urtw_read8_m(%struct.urtw_softc* %57, i32 %58, i32* %7)
  %60 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %61 = load i32, i32* @URTW_MSR, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 243
  %64 = call i32 @urtw_write8_m(%struct.urtw_softc* %60, i32 %61, i32 %63)
  %65 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %66 = load i32, i32* @URTW_MSR, align 4
  %67 = call i32 @urtw_read8_m(%struct.urtw_softc* %65, i32 %66, i32* %7)
  %68 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %69 = load i32, i32* @URTW_MSR, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @URTW_MSR_LINK_ENEDCA, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @urtw_write8_m(%struct.urtw_softc* %68, i32 %69, i32 %72)
  %74 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %75 = load i32, i32* @URTW_ACM_CONTROL, align 4
  %76 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %77 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @urtw_write8_m(%struct.urtw_softc* %74, i32 %75, i32 %78)
  %80 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %81 = load i32, i32* @URTW_ATIM_WND, align 4
  %82 = call i32 @urtw_write16_m(%struct.urtw_softc* %80, i32 %81, i32 2)
  %83 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %84 = load i32, i32* @URTW_BEACON_INTERVAL, align 4
  %85 = call i32 @urtw_write16_m(%struct.urtw_softc* %83, i32 %84, i32 100)
  %86 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %87 = call i32 @urtw_write16_m(%struct.urtw_softc* %86, i32 468, i32 65535)
  %88 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %89 = load i32, i32* @URTW_CONFIG1, align 4
  %90 = call i32 @urtw_read8_m(%struct.urtw_softc* %88, i32 %89, i32* %7)
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, 63
  %93 = or i32 %92, 128
  store i32 %93, i32* %7, align 4
  %94 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %95 = load i32, i32* @URTW_CONFIG1, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @urtw_write8_m(%struct.urtw_softc* %94, i32 %95, i32 %96)
  %98 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %99 = icmp ne %struct.ieee80211vap* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %22
  %101 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %102 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  br label %108

104:                                              ; preds = %22
  %105 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %106 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i32* [ %103, %100 ], [ %107, %104 ]
  store i32* %109, i32** %5, align 8
  %110 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i64 @urtw_set_macaddr(%struct.urtw_softc* %110, i32* %111)
  store i64 %112, i64* %8, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %385

116:                                              ; preds = %108
  %117 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %118 = load i32, i32* @URTW_EPROM_CMD_NORMAL, align 4
  %119 = call i64 @urtw_set_mode(%struct.urtw_softc* %117, i32 %118)
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %8, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %385

123:                                              ; preds = %116
  %124 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %125 = load i32, i32* @URTW_WPA_CONFIG, align 4
  %126 = call i32 @urtw_write8_m(%struct.urtw_softc* %124, i32 %125, i32 0)
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %147, %123
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2b_rf_part1, align 8
  %130 = call i32 @nitems(%struct.TYPE_5__* %129)
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %127
  %133 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2b_rf_part1, align 8
  %135 = load i32, i32* %6, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2b_rf_part1, align 8
  %141 = load i32, i32* %6, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @urtw_write8_m(%struct.urtw_softc* %133, i32 %139, i32 %145)
  br label %147

147:                                              ; preds = %132
  %148 = load i32, i32* %6, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %127

150:                                              ; preds = %127
  %151 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %152 = load i32, i32* @URTW_TID_AC_MAP, align 4
  %153 = call i32 @urtw_write16_m(%struct.urtw_softc* %151, i32 %152, i32 64080)
  %154 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %155 = load i32, i32* @URTW_INT_MIG, align 4
  %156 = call i32 @urtw_write16_m(%struct.urtw_softc* %154, i32 %155, i32 0)
  %157 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %158 = call i32 @urtw_write32_m(%struct.urtw_softc* %157, i32 496, i32 0)
  %159 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %160 = call i32 @urtw_write32_m(%struct.urtw_softc* %159, i32 500, i32 0)
  %161 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %162 = call i32 @urtw_write8_m(%struct.urtw_softc* %161, i32 504, i32 0)
  %163 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %164 = load i32, i32* @URTW_RF_TIMING, align 4
  %165 = call i32 @urtw_write32_m(%struct.urtw_softc* %163, i32 %164, i32 16385)
  %166 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %167 = call i32 @urtw_write16_m(%struct.urtw_softc* %166, i32 626, i32 22170)
  %168 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %169 = load i32, i32* @URTW_EPROM_CMD_CONFIG, align 4
  %170 = call i64 @urtw_set_mode(%struct.urtw_softc* %168, i32 %169)
  store i64 %170, i64* %8, align 8
  %171 = load i64, i64* %8, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %150
  br label %385

174:                                              ; preds = %150
  %175 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %176 = load i32, i32* @URTW_CONFIG3, align 4
  %177 = call i32 @urtw_read8_m(%struct.urtw_softc* %175, i32 %176, i32* %7)
  %178 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %179 = load i32, i32* @URTW_CONFIG3, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @URTW_CONFIG3_ANAPARAM_WRITE, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @urtw_write8_m(%struct.urtw_softc* %178, i32 %179, i32 %182)
  %184 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %185 = load i32, i32* @URTW_EPROM_CMD_NORMAL, align 4
  %186 = call i64 @urtw_set_mode(%struct.urtw_softc* %184, i32 %185)
  store i64 %186, i64* %8, align 8
  %187 = load i64, i64* %8, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %174
  br label %385

190:                                              ; preds = %174
  %191 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %192 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %193 = call i32 @urtw_write16_m(%struct.urtw_softc* %191, i32 %192, i32 1152)
  %194 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %195 = load i32, i32* @URTW_RF_PINS_SELECT, align 4
  %196 = call i32 @urtw_write16_m(%struct.urtw_softc* %194, i32 %195, i32 9352)
  %197 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %198 = load i32, i32* @URTW_RF_PINS_ENABLE, align 4
  %199 = call i32 @urtw_write16_m(%struct.urtw_softc* %197, i32 %198, i32 8191)
  %200 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %201 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %200, i32 0, i32 1
  %202 = call i32 @usb_pause_mtx(i32* %201, i32 1100)
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %226, %190
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2b_rf_part0, align 8
  %206 = call i32 @nitems(%struct.TYPE_5__* %205)
  %207 = icmp ult i32 %204, %206
  br i1 %207, label %208, label %229

208:                                              ; preds = %203
  %209 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2b_rf_part0, align 8
  %211 = load i32, i32* %6, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2b_rf_part0, align 8
  %217 = load i32, i32* %6, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @urtw_8225_write(%struct.urtw_softc* %209, i32 %215, i32 %221)
  %223 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %224 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %223, i32 0, i32 1
  %225 = call i32 @usb_pause_mtx(i32* %224, i32 1)
  br label %226

226:                                              ; preds = %208
  %227 = load i32, i32* %6, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %6, align 4
  br label %203

229:                                              ; preds = %203
  %230 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %231 = call i32 @urtw_8225_write(%struct.urtw_softc* %230, i32 0, i32 439)
  store i32 0, i32* %6, align 4
  br label %232

232:                                              ; preds = %255, %229
  %233 = load i32, i32* %6, align 4
  %234 = icmp ult i32 %233, 95
  br i1 %234, label %235, label %258

235:                                              ; preds = %232
  %236 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %237 = load i32, i32* @URTW_8225_ADDR_1_MAGIC, align 4
  %238 = load i32, i32* %6, align 4
  %239 = add i32 %238, 1
  %240 = call i32 @urtw_8225_write(%struct.urtw_softc* %236, i32 %237, i32 %239)
  %241 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %242 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %241, i32 0, i32 1
  %243 = call i32 @usb_pause_mtx(i32* %242, i32 1)
  %244 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %245 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %246 = load i32*, i32** @urtw_8225v2b_rxgain, align 8
  %247 = load i32, i32* %6, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @urtw_8225_write(%struct.urtw_softc* %244, i32 %245, i32 %250)
  %252 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %253 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %252, i32 0, i32 1
  %254 = call i32 @usb_pause_mtx(i32* %253, i32 1)
  br label %255

255:                                              ; preds = %235
  %256 = load i32, i32* %6, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %6, align 4
  br label %232

258:                                              ; preds = %232
  %259 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %260 = load i32, i32* @URTW_8225_ADDR_3_MAGIC, align 4
  %261 = call i32 @urtw_8225_write(%struct.urtw_softc* %259, i32 %260, i32 128)
  %262 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %263 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %262, i32 0, i32 1
  %264 = call i32 @usb_pause_mtx(i32* %263, i32 1)
  %265 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %266 = load i32, i32* @URTW_8225_ADDR_5_MAGIC, align 4
  %267 = call i32 @urtw_8225_write(%struct.urtw_softc* %265, i32 %266, i32 4)
  %268 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %269 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %268, i32 0, i32 1
  %270 = call i32 @usb_pause_mtx(i32* %269, i32 1)
  %271 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %272 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %273 = call i32 @urtw_8225_write(%struct.urtw_softc* %271, i32 %272, i32 183)
  %274 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %275 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %274, i32 0, i32 1
  %276 = call i32 @usb_pause_mtx(i32* %275, i32 1)
  %277 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %278 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %277, i32 0, i32 1
  %279 = call i32 @usb_pause_mtx(i32* %278, i32 3000)
  %280 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %281 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %282 = call i32 @urtw_8225_write(%struct.urtw_softc* %280, i32 %281, i32 3149)
  %283 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %284 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %283, i32 0, i32 1
  %285 = call i32 @usb_pause_mtx(i32* %284, i32 2000)
  %286 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %287 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %288 = call i32 @urtw_8225_write(%struct.urtw_softc* %286, i32 %287, i32 1101)
  %289 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %290 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %289, i32 0, i32 1
  %291 = call i32 @usb_pause_mtx(i32* %290, i32 1)
  %292 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %293 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %294 = call i32 @urtw_8225_write(%struct.urtw_softc* %292, i32 %293, i32 703)
  %295 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %296 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %295, i32 0, i32 1
  %297 = call i32 @usb_pause_mtx(i32* %296, i32 1)
  %298 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %299 = load i32, i32* @URTW_TX_GAIN_CCK, align 4
  %300 = call i32 @urtw_write8_m(%struct.urtw_softc* %298, i32 %299, i32 3)
  %301 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %302 = load i32, i32* @URTW_TX_GAIN_OFDM, align 4
  %303 = call i32 @urtw_write8_m(%struct.urtw_softc* %301, i32 %302, i32 7)
  %304 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %305 = load i32, i32* @URTW_TX_ANTENNA, align 4
  %306 = call i32 @urtw_write8_m(%struct.urtw_softc* %304, i32 %305, i32 3)
  %307 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %308 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %307, i32 128, i32 18)
  store i32 0, i32* %6, align 4
  br label %309

309:                                              ; preds = %340, %258
  %310 = load i32, i32* %6, align 4
  %311 = icmp ult i32 %310, 128
  br i1 %311, label %312, label %343

312:                                              ; preds = %309
  %313 = load i32*, i32** @urtw_8225z2_agc, align 8
  %314 = load i32, i32* %6, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 %317, 8
  %319 = or i32 %318, 143
  store i32 %319, i32* %10, align 4
  %320 = load i32, i32* %6, align 4
  %321 = add i32 %320, 128
  %322 = shl i32 %321, 8
  %323 = or i32 %322, 142
  store i32 %323, i32* %9, align 4
  %324 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %325 = load i32, i32* %10, align 4
  %326 = and i32 %325, 127
  %327 = load i32, i32* %10, align 4
  %328 = ashr i32 %327, 8
  %329 = and i32 %328, 255
  %330 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %324, i32 %326, i32 %329)
  %331 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %332 = load i32, i32* %9, align 4
  %333 = and i32 %332, 127
  %334 = load i32, i32* %9, align 4
  %335 = ashr i32 %334, 8
  %336 = and i32 %335, 255
  %337 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %331, i32 %333, i32 %336)
  %338 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %339 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %338, i32 14, i32 0)
  br label %340

340:                                              ; preds = %312
  %341 = load i32, i32* %6, align 4
  %342 = add i32 %341, 1
  store i32 %342, i32* %6, align 4
  br label %309

343:                                              ; preds = %309
  %344 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %345 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %344, i32 128, i32 16)
  store i32 0, i32* %6, align 4
  br label %346

346:                                              ; preds = %361, %343
  %347 = load i32, i32* %6, align 4
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2b_rf_part2, align 8
  %349 = call i32 @nitems(%struct.TYPE_5__* %348)
  %350 = icmp ult i32 %347, %349
  br i1 %350, label %351, label %364

351:                                              ; preds = %346
  %352 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %353 = load i32, i32* %6, align 4
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2b_rf_part2, align 8
  %355 = load i32, i32* %6, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %352, i32 %353, i32 %359)
  br label %361

361:                                              ; preds = %351
  %362 = load i32, i32* %6, align 4
  %363 = add i32 %362, 1
  store i32 %363, i32* %6, align 4
  br label %346

364:                                              ; preds = %346
  %365 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %366 = load i32, i32* @URTW_8187B_AC_VO, align 4
  %367 = call i32 @urtw_write32_m(%struct.urtw_softc* %365, i32 %366, i32 29468)
  %368 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %369 = load i32, i32* @URTW_8187B_AC_VI, align 4
  %370 = call i32 @urtw_write32_m(%struct.urtw_softc* %368, i32 %369, i32 29468)
  %371 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %372 = load i32, i32* @URTW_8187B_AC_BE, align 4
  %373 = call i32 @urtw_write32_m(%struct.urtw_softc* %371, i32 %372, i32 29468)
  %374 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %375 = load i32, i32* @URTW_8187B_AC_BK, align 4
  %376 = call i32 @urtw_write32_m(%struct.urtw_softc* %374, i32 %375, i32 29468)
  %377 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %378 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %377, i32 151, i32 70)
  %379 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %380 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %379, i32 164, i32 182)
  %381 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %382 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %381, i32 133, i32 252)
  %383 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %384 = call i32 @urtw_8187_write_phy_cck(%struct.urtw_softc* %383, i32 193, i32 136)
  br label %385

385:                                              ; preds = %364, %189, %173, %122, %115, %21
  %386 = load i64, i64* %8, align 8
  ret i64 %386
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @urtw_set_mode(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_write16_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_set_macaddr(%struct.urtw_softc*, i32*) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @urtw_write32_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @urtw_8225_write(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_8187_write_phy_cck(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
