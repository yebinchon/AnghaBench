; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32, i32, i32*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.rt2661_softc*, i32 }
%struct.TYPE_4__ = type { i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@RT2661_MAC_CSR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"timeout waiting for NIC to initialize\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"MAC/BBP RT%X, RF %s\0A\00", align 1
@RT2661_TX_RING_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not allocate Tx ring %d\0A\00", align 1
@RT2661_MGT_RING_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not allocate Mgt ring\0A\00", align 1
@RT2661_RX_RING_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"could not allocate Rx ring\0A\00", align 1
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
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@rt2661_scan_start = common dso_local global i32 0, align 4
@rt2661_scan_end = common dso_local global i32 0, align 4
@rt2661_set_channel = common dso_local global i32 0, align 4
@rt2661_update_slot = common dso_local global i32 0, align 4
@rt2661_update_promisc = common dso_local global i32 0, align 4
@rt2661_raw_xmit = common dso_local global i32 0, align 4
@rt2661_transmit = common dso_local global i32 0, align 4
@rt2661_parent = common dso_local global i32 0, align 4
@rt2661_vap_create = common dso_local global i32 0, align 4
@rt2661_vap_delete = common dso_local global i32 0, align 4
@RT2661_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@RT2661_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@CTLFLAG_RW = common dso_local global i32 0, align 4
@IEEE80211_C_TXFRAG = common dso_local global i32 0, align 4
@IEEE80211_C_WME = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@rt2661_wme_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2661_attach(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2661_softc*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.rt2661_softc* @device_get_softc(i32 %12)
  store %struct.rt2661_softc* %13, %struct.rt2661_softc** %6, align 8
  %14 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %15 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %14, i32 0, i32 12
  store %struct.ieee80211com* %15, %struct.ieee80211com** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %18 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %21 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %23 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @device_get_nameunit(i32 %24)
  %26 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = load i32, i32* @MTX_RECURSE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @mtx_init(i32* %23, i32 %25, i32 %26, i32 %29)
  %31 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %32 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %31, i32 0, i32 11
  %33 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %34 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %33, i32 0, i32 1
  %35 = call i32 @callout_init_mtx(i32* %32, i32* %34, i32 0)
  %36 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %37 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %36, i32 0, i32 10
  %38 = load i32, i32* @ifqmaxlen, align 4
  %39 = call i32 @mbufq_init(i32* %37, i32 %38)
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %51, %2
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %45 = load i32, i32* @RT2661_MAC_CSR0, align 4
  %46 = call i32 @RAL_READ(%struct.rt2661_softc* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %54

49:                                               ; preds = %43
  %50 = call i32 @DELAY(i32 1000)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %40

54:                                               ; preds = %48, %40
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 1000
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %59 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  store i32 %62, i32* %9, align 4
  br label %242

63:                                               ; preds = %54
  %64 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %65, i32 0, i32 19
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @rt2661_read_eeprom(%struct.rt2661_softc* %64, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %72 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @rt2661_get_rf(i32 %73)
  %75 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %74)
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %98, %63
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %81 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %82 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* @RT2661_TX_RING_COUNT, align 4
  %88 = call i32 @rt2661_alloc_tx_ring(%struct.rt2661_softc* %80, i32* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %79
  %92 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %93 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %227

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %76

101:                                              ; preds = %76
  %102 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %103 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %104 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %103, i32 0, i32 3
  %105 = load i32, i32* @RT2661_MGT_RING_COUNT, align 4
  %106 = call i32 @rt2661_alloc_tx_ring(%struct.rt2661_softc* %102, i32* %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %111 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %227

114:                                              ; preds = %101
  %115 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %116 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %117 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %116, i32 0, i32 8
  %118 = load i32, i32* @RT2661_RX_RING_COUNT, align 4
  %119 = call i32 @rt2661_alloc_rx_ring(%struct.rt2661_softc* %115, i32* %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %124 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %222

127:                                              ; preds = %114
  %128 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %129 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %130 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %129, i32 0, i32 18
  store %struct.rt2661_softc* %128, %struct.rt2661_softc** %130, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @device_get_nameunit(i32 %131)
  %133 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %133, i32 0, i32 17
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @IEEE80211_M_STA, align 4
  %136 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %136, i32 0, i32 16
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %139 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %139, i32 0, i32 15
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @IEEE80211_C_STA, align 4
  %142 = load i32, i32* @IEEE80211_C_IBSS, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @IEEE80211_C_HOSTAP, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @IEEE80211_C_AHDEMO, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @IEEE80211_C_WDS, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @IEEE80211_C_MBSS, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @IEEE80211_C_WPA, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @IEEE80211_C_BGSCAN, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %163 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %165 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %166 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %167 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %166, i32 0, i32 14
  %168 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %169 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @rt2661_getradiocaps(%struct.ieee80211com* %164, i32 %165, i32* %167, i32 %170)
  %172 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %173 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %172)
  %174 = load i32, i32* @rt2661_scan_start, align 4
  %175 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %176 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %175, i32 0, i32 11
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @rt2661_scan_end, align 4
  %178 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %179 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %178, i32 0, i32 10
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %181 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %180, i32 0, i32 9
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @rt2661_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %181, align 8
  %182 = load i32, i32* @rt2661_set_channel, align 4
  %183 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %184 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %183, i32 0, i32 8
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @rt2661_update_slot, align 4
  %186 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %187 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @rt2661_update_promisc, align 4
  %189 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %190 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* @rt2661_raw_xmit, align 4
  %192 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %193 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @rt2661_transmit, align 4
  %195 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %196 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* @rt2661_parent, align 4
  %198 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %199 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @rt2661_vap_create, align 4
  %201 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %202 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* @rt2661_vap_delete, align 4
  %204 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %205 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %207 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %208 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* @RT2661_TX_RADIOTAP_PRESENT, align 4
  %211 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %212 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* @RT2661_RX_RADIOTAP_PRESENT, align 4
  %215 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %206, i32* %209, i32 4, i32 %210, i32* %213, i32 4, i32 %214)
  %216 = load i64, i64* @bootverbose, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %127
  %219 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %220 = call i32 @ieee80211_announce(%struct.ieee80211com* %219)
  br label %221

221:                                              ; preds = %218, %127
  store i32 0, i32* %3, align 4
  br label %247

222:                                              ; preds = %122
  %223 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %224 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %225 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %224, i32 0, i32 3
  %226 = call i32 @rt2661_free_tx_ring(%struct.rt2661_softc* %223, i32* %225)
  br label %227

227:                                              ; preds = %222, %109, %91
  br label %228

228:                                              ; preds = %232, %227
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %10, align 4
  %231 = icmp sge i32 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %234 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %235 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = call i32 @rt2661_free_tx_ring(%struct.rt2661_softc* %233, i32* %239)
  br label %228

241:                                              ; preds = %228
  br label %242

242:                                              ; preds = %241, %57
  %243 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  %244 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %243, i32 0, i32 1
  %245 = call i32 @mtx_destroy(i32* %244)
  %246 = load i32, i32* %9, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %242, %221
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.rt2661_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rt2661_read_eeprom(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @rt2661_get_rf(i32) #1

declare dso_local i32 @rt2661_alloc_tx_ring(%struct.rt2661_softc*, i32*, i32) #1

declare dso_local i32 @rt2661_alloc_rx_ring(%struct.rt2661_softc*, i32*, i32) #1

declare dso_local i32 @rt2661_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @rt2661_free_tx_ring(%struct.rt2661_softc*, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
