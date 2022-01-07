; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i32, i32, i32, i32*, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.rt2860_softc*, i32 }
%struct.TYPE_4__ = type { i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@RT2860_ASIC_VER_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"timeout waiting for NIC to initialize\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RT2860_ADVANCED_PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"MAC/BBP RT%X (rev 0x%04X), RF %s (MIMO %dT%dR), address %6D\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not allocate Tx ring %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"could not allocate Rx ring\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"could not allocate Tx pool\0A\00", align 1
@WME_AC_VO = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_IBSS = common dso_local global i32 0, align 4
@IEEE80211_C_HOSTAP = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_AHDEMO = common dso_local global i32 0, align 4
@IEEE80211_C_WDS = common dso_local global i32 0, align 4
@IEEE80211_C_MBSS = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_C_WME = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@rt2860_updateedca = common dso_local global i32 0, align 4
@rt2860_scan_start = common dso_local global i32 0, align 4
@rt2860_scan_end = common dso_local global i32 0, align 4
@rt2860_set_channel = common dso_local global i32 0, align 4
@rt2860_updateslot = common dso_local global i32 0, align 4
@rt2860_update_promisc = common dso_local global i32 0, align 4
@rt2860_raw_xmit = common dso_local global i32 0, align 4
@rt2860_node_free = common dso_local global i32 0, align 4
@rt2860_newassoc = common dso_local global i32 0, align 4
@rt2860_transmit = common dso_local global i32 0, align 4
@rt2860_parent = common dso_local global i32 0, align 4
@rt2860_vap_create = common dso_local global i32 0, align 4
@rt2860_vap_delete = common dso_local global i32 0, align 4
@RT2860_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@RT2860_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@CTLFLAG_RW = common dso_local global i32 0, align 4
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2860_attach(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2860_softc*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.rt2860_softc* @device_get_softc(i32 %12)
  store %struct.rt2860_softc* %13, %struct.rt2860_softc** %6, align 8
  %14 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %15 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %14, i32 0, i32 17
  store %struct.ieee80211com* %15, %struct.ieee80211com** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %18 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %20 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %22 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @device_get_nameunit(i32 %23)
  %25 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = load i32, i32* @MTX_RECURSE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @mtx_init(i32* %22, i32 %24, i32 %25, i32 %28)
  %30 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %31 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %30, i32 0, i32 16
  %32 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %33 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %32, i32 0, i32 3
  %34 = call i32 @callout_init_mtx(i32* %31, i32* %33, i32 0)
  %35 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %36 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %35, i32 0, i32 15
  %37 = load i32, i32* @ifqmaxlen, align 4
  %38 = call i32 @mbufq_init(i32* %36, i32 %37)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %54, %2
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 100
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %44 = load i32, i32* @RT2860_ASIC_VER_ID, align 4
  %45 = call i32 @RAL_READ(%struct.rt2860_softc* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %57

52:                                               ; preds = %48, %42
  %53 = call i32 @DELAY(i32 10)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %39

57:                                               ; preds = %51, %39
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 100
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %62 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  store i32 %65, i32* %9, align 4
  br label %312

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, 16
  %69 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %70 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 65535
  %73 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %74 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %76 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 10336
  br i1 %78, label %79, label %94

79:                                               ; preds = %66
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 1665
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 1921
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 4185
  br i1 %87, label %88, label %94

88:                                               ; preds = %85, %82, %79
  %89 = load i32, i32* @RT2860_ADVANCED_PS, align 4
  %90 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %91 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %85, %66
  %95 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %96 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %96, i32 0, i32 21
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @rt2860_read_eeprom(%struct.rt2860_softc* %95, i32 %98)
  %100 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %101 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %104 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %107 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %110 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @rt2860_get_rf(i32 %111)
  %113 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %114 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %113, i32 0, i32 12
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %117 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %119, i32 0, i32 21
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %102, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %108, i32 %112, i32 %115, i32 %118, i32 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %123

123:                                              ; preds = %143, %94
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 6
  br i1 %125, label %126, label %146

126:                                              ; preds = %123
  %127 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %128 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %129 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = call i32 @rt2860_alloc_tx_ring(%struct.rt2860_softc* %127, i32* %133)
  store i32 %134, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %126
  %137 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %138 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 (i32, i8*, ...) @device_printf(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %297

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %123

146:                                              ; preds = %123
  %147 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %148 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %149 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %148, i32 0, i32 5
  %150 = call i32 @rt2860_alloc_rx_ring(%struct.rt2860_softc* %147, i32* %149)
  store i32 %150, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %154 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %297

157:                                              ; preds = %146
  %158 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %159 = call i32 @rt2860_alloc_tx_pool(%struct.rt2860_softc* %158)
  store i32 %159, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %163 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %292

166:                                              ; preds = %157
  %167 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %168 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 10336
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %173 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 256
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @WME_AC_VO, align 4
  br label %179

178:                                              ; preds = %171, %166
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i32 [ %177, %176 ], [ 5, %178 ]
  %181 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %182 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %184 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %185 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %184, i32 0, i32 20
  store %struct.rt2860_softc* %183, %struct.rt2860_softc** %185, align 8
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @device_get_nameunit(i32 %186)
  %188 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %189 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %188, i32 0, i32 19
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @IEEE80211_M_STA, align 4
  %191 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %192 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %191, i32 0, i32 18
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %194 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %195 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %194, i32 0, i32 17
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @IEEE80211_C_STA, align 4
  %197 = load i32, i32* @IEEE80211_C_IBSS, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @IEEE80211_C_HOSTAP, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @IEEE80211_C_AHDEMO, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @IEEE80211_C_WDS, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @IEEE80211_C_MBSS, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @IEEE80211_C_WPA, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @IEEE80211_C_WME, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %218 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %220 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %221 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %222 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %221, i32 0, i32 16
  %223 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %224 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %223, i32 0, i32 15
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @rt2860_getradiocaps(%struct.ieee80211com* %219, i32 %220, i32* %222, i32 %225)
  %227 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %228 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %227)
  %229 = load i32, i32* @rt2860_updateedca, align 4
  %230 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %231 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %230, i32 0, i32 14
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  store i32 %229, i32* %232, align 8
  %233 = load i32, i32* @rt2860_scan_start, align 4
  %234 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %235 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %234, i32 0, i32 13
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* @rt2860_scan_end, align 4
  %237 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %238 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %237, i32 0, i32 12
  store i32 %236, i32* %238, align 8
  %239 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %240 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %239, i32 0, i32 11
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @rt2860_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %240, align 8
  %241 = load i32, i32* @rt2860_set_channel, align 4
  %242 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %243 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %242, i32 0, i32 10
  store i32 %241, i32* %243, align 8
  %244 = load i32, i32* @rt2860_updateslot, align 4
  %245 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %246 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %245, i32 0, i32 9
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* @rt2860_update_promisc, align 4
  %248 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %249 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %248, i32 0, i32 8
  store i32 %247, i32* %249, align 8
  %250 = load i32, i32* @rt2860_raw_xmit, align 4
  %251 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %252 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %251, i32 0, i32 7
  store i32 %250, i32* %252, align 4
  %253 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %254 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %257 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %256, i32 0, i32 9
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* @rt2860_node_free, align 4
  %259 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %260 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %259, i32 0, i32 6
  store i32 %258, i32* %260, align 8
  %261 = load i32, i32* @rt2860_newassoc, align 4
  %262 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %263 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* @rt2860_transmit, align 4
  %265 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %266 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* @rt2860_parent, align 4
  %268 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %269 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* @rt2860_vap_create, align 4
  %271 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %272 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  %273 = load i32, i32* @rt2860_vap_delete, align 4
  %274 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %275 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  %276 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %277 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %278 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %277, i32 0, i32 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i32, i32* @RT2860_TX_RADIOTAP_PRESENT, align 4
  %281 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %282 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %281, i32 0, i32 7
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = load i32, i32* @RT2860_RX_RADIOTAP_PRESENT, align 4
  %285 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %276, i32* %279, i32 4, i32 %280, i32* %283, i32 4, i32 %284)
  %286 = load i64, i64* @bootverbose, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %179
  %289 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %290 = call i32 @ieee80211_announce(%struct.ieee80211com* %289)
  br label %291

291:                                              ; preds = %288, %179
  store i32 0, i32* %3, align 4
  br label %317

292:                                              ; preds = %161
  %293 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %294 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %295 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %294, i32 0, i32 5
  %296 = call i32 @rt2860_free_rx_ring(%struct.rt2860_softc* %293, i32* %295)
  br label %297

297:                                              ; preds = %292, %152, %136
  br label %298

298:                                              ; preds = %302, %297
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %11, align 4
  %301 = icmp sge i32 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %298
  %303 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %304 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %305 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %304, i32 0, i32 4
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = call i32 @rt2860_free_tx_ring(%struct.rt2860_softc* %303, i32* %309)
  br label %298

311:                                              ; preds = %298
  br label %312

312:                                              ; preds = %311, %60
  %313 = load %struct.rt2860_softc*, %struct.rt2860_softc** %6, align 8
  %314 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %313, i32 0, i32 3
  %315 = call i32 @mtx_destroy(i32* %314)
  %316 = load i32, i32* %9, align 4
  store i32 %316, i32* %3, align 4
  br label %317

317:                                              ; preds = %312, %291
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local %struct.rt2860_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rt2860_read_eeprom(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_get_rf(i32) #1

declare dso_local i32 @rt2860_alloc_tx_ring(%struct.rt2860_softc*, i32*) #1

declare dso_local i32 @rt2860_alloc_rx_ring(%struct.rt2860_softc*, i32*) #1

declare dso_local i32 @rt2860_alloc_tx_pool(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @rt2860_free_rx_ring(%struct.rt2860_softc*, i32*) #1

declare dso_local i32 @rt2860_free_tx_ring(%struct.rt2860_softc*, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
