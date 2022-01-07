; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rt2560_softc*, i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@RT2560_CSR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MAC/BBP RT2560 (rev 0x%02x), RF %s\0A\00", align 1
@RT2560_TX_RING_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not allocate Tx ring\0A\00", align 1
@RT2560_ATIM_RING_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not allocate ATIM ring\0A\00", align 1
@RT2560_PRIO_RING_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not allocate Prio ring\0A\00", align 1
@RT2560_BEACON_RING_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"could not allocate Beacon ring\0A\00", align 1
@RT2560_RX_RING_COUNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"could not allocate Rx ring\0A\00", align 1
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
@rt2560_raw_xmit = common dso_local global i32 0, align 4
@rt2560_update_slot = common dso_local global i32 0, align 4
@rt2560_update_promisc = common dso_local global i32 0, align 4
@rt2560_scan_start = common dso_local global i32 0, align 4
@rt2560_scan_end = common dso_local global i32 0, align 4
@rt2560_set_channel = common dso_local global i32 0, align 4
@rt2560_vap_create = common dso_local global i32 0, align 4
@rt2560_vap_delete = common dso_local global i32 0, align 4
@rt2560_parent = common dso_local global i32 0, align 4
@rt2560_transmit = common dso_local global i32 0, align 4
@RT2560_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@RT2560_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"txantenna\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"tx antenna (0=auto)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"rxantenna\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"rx antenna (0=auto)\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@IEEE80211_C_TXFRAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2560_attach(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2560_softc*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.rt2560_softc* @device_get_softc(i32 %9)
  store %struct.rt2560_softc* %10, %struct.rt2560_softc** %6, align 8
  %11 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %12 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %11, i32 0, i32 16
  store %struct.ieee80211com* %12, %struct.ieee80211com** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %15 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 8
  %16 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %17 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @device_get_nameunit(i32 %18)
  %20 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = load i32, i32* @MTX_RECURSE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mtx_init(i32* %17, i32 %19, i32 %20, i32 %23)
  %25 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %26 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %25, i32 0, i32 15
  %27 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %28 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %27, i32 0, i32 0
  %29 = call i32 @callout_init_mtx(i32* %26, i32* %28, i32 0)
  %30 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %31 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %30, i32 0, i32 14
  %32 = load i32, i32* @ifqmaxlen, align 4
  %33 = call i32 @mbufq_init(i32* %31, i32 %32)
  %34 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %35 = load i32, i32* @RT2560_CSR0, align 4
  %36 = call i32 @RAL_READ(%struct.rt2560_softc* %34, i32 %35)
  %37 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %38 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %40 = call i32 @rt2560_read_config(%struct.rt2560_softc* %39)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %43 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %46 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @rt2560_get_rf(i32 %47)
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %51 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %52 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %51, i32 0, i32 1
  %53 = load i32, i32* @RT2560_TX_RING_COUNT, align 4
  %54 = call i32 @rt2560_alloc_tx_ring(%struct.rt2560_softc* %50, i32* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %2
  %58 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %59 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %254

62:                                               ; preds = %2
  %63 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %64 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %65 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %64, i32 0, i32 2
  %66 = load i32, i32* @RT2560_ATIM_RING_COUNT, align 4
  %67 = call i32 @rt2560_alloc_tx_ring(%struct.rt2560_softc* %63, i32* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %72 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %249

75:                                               ; preds = %62
  %76 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %77 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %78 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %77, i32 0, i32 3
  %79 = load i32, i32* @RT2560_PRIO_RING_COUNT, align 4
  %80 = call i32 @rt2560_alloc_tx_ring(%struct.rt2560_softc* %76, i32* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %85 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %244

88:                                               ; preds = %75
  %89 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %90 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %91 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %90, i32 0, i32 4
  %92 = load i32, i32* @RT2560_BEACON_RING_COUNT, align 4
  %93 = call i32 @rt2560_alloc_tx_ring(%struct.rt2560_softc* %89, i32* %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %98 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %239

101:                                              ; preds = %88
  %102 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %103 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %104 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %103, i32 0, i32 11
  %105 = load i32, i32* @RT2560_RX_RING_COUNT, align 4
  %106 = call i32 @rt2560_alloc_rx_ring(%struct.rt2560_softc* %102, i32* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %111 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %234

114:                                              ; preds = %101
  %115 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %116 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %117 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %116, i32 0, i32 18
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @rt2560_get_macaddr(%struct.rt2560_softc* %115, i32 %118)
  %120 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %121 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %121, i32 0, i32 17
  store %struct.rt2560_softc* %120, %struct.rt2560_softc** %122, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @device_get_nameunit(i32 %123)
  %125 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %125, i32 0, i32 16
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @IEEE80211_M_STA, align 4
  %128 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %128, i32 0, i32 15
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %131 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %132 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %131, i32 0, i32 14
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @IEEE80211_C_STA, align 4
  %134 = load i32, i32* @IEEE80211_C_IBSS, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @IEEE80211_C_HOSTAP, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @IEEE80211_C_AHDEMO, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @IEEE80211_C_WDS, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @IEEE80211_C_MBSS, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @IEEE80211_C_WPA, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @IEEE80211_C_BGSCAN, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %155 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %157 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %158 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %159 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %158, i32 0, i32 13
  %160 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %161 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @rt2560_getradiocaps(%struct.ieee80211com* %156, i32 %157, i32* %159, i32 %162)
  %164 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %165 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %164)
  %166 = load i32, i32* @rt2560_raw_xmit, align 4
  %167 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %168 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %167, i32 0, i32 11
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* @rt2560_update_slot, align 4
  %170 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %171 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %170, i32 0, i32 10
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @rt2560_update_promisc, align 4
  %173 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @rt2560_scan_start, align 4
  %176 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %177 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %176, i32 0, i32 8
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @rt2560_scan_end, align 4
  %179 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %180 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 8
  %181 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %182 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %181, i32 0, i32 6
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @rt2560_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %182, align 8
  %183 = load i32, i32* @rt2560_set_channel, align 4
  %184 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %185 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @rt2560_vap_create, align 4
  %187 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %188 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @rt2560_vap_delete, align 4
  %190 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %191 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @rt2560_parent, align 4
  %193 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %194 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* @rt2560_transmit, align 4
  %196 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %197 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %199 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %200 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %199, i32 0, i32 9
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* @RT2560_TX_RADIOTAP_PRESENT, align 4
  %203 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %204 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %203, i32 0, i32 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* @RT2560_RX_RADIOTAP_PRESENT, align 4
  %207 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %198, i32* %201, i32 4, i32 %202, i32* %205, i32 4, i32 %206)
  %208 = load i32, i32* %4, align 4
  %209 = call i32 @device_get_sysctl_ctx(i32 %208)
  %210 = load i32, i32* %4, align 4
  %211 = call i32 @device_get_sysctl_tree(i32 %210)
  %212 = call i32 @SYSCTL_CHILDREN(i32 %211)
  %213 = load i32, i32* @OID_AUTO, align 4
  %214 = load i32, i32* @CTLFLAG_RW, align 4
  %215 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %216 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %215, i32 0, i32 6
  %217 = call i32 @SYSCTL_ADD_INT(i32 %209, i32 %212, i32 %213, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32* %216, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @device_get_sysctl_ctx(i32 %218)
  %220 = load i32, i32* %4, align 4
  %221 = call i32 @device_get_sysctl_tree(i32 %220)
  %222 = call i32 @SYSCTL_CHILDREN(i32 %221)
  %223 = load i32, i32* @OID_AUTO, align 4
  %224 = load i32, i32* @CTLFLAG_RW, align 4
  %225 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %226 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %225, i32 0, i32 5
  %227 = call i32 @SYSCTL_ADD_INT(i32 %219, i32 %222, i32 %223, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %224, i32* %226, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %228 = load i64, i64* @bootverbose, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %114
  %231 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %232 = call i32 @ieee80211_announce(%struct.ieee80211com* %231)
  br label %233

233:                                              ; preds = %230, %114
  store i32 0, i32* %3, align 4
  br label %259

234:                                              ; preds = %109
  %235 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %236 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %237 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %236, i32 0, i32 4
  %238 = call i32 @rt2560_free_tx_ring(%struct.rt2560_softc* %235, i32* %237)
  br label %239

239:                                              ; preds = %234, %96
  %240 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %241 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %242 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %241, i32 0, i32 3
  %243 = call i32 @rt2560_free_tx_ring(%struct.rt2560_softc* %240, i32* %242)
  br label %244

244:                                              ; preds = %239, %83
  %245 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %246 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %247 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %246, i32 0, i32 2
  %248 = call i32 @rt2560_free_tx_ring(%struct.rt2560_softc* %245, i32* %247)
  br label %249

249:                                              ; preds = %244, %70
  %250 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %251 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %252 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %251, i32 0, i32 1
  %253 = call i32 @rt2560_free_tx_ring(%struct.rt2560_softc* %250, i32* %252)
  br label %254

254:                                              ; preds = %249, %57
  %255 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %256 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %255, i32 0, i32 0
  %257 = call i32 @mtx_destroy(i32* %256)
  %258 = load i32, i32* @ENXIO, align 4
  store i32 %258, i32* %3, align 4
  br label %259

259:                                              ; preds = %254, %233
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local %struct.rt2560_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2560_softc*, i32) #1

declare dso_local i32 @rt2560_read_config(%struct.rt2560_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rt2560_get_rf(i32) #1

declare dso_local i32 @rt2560_alloc_tx_ring(%struct.rt2560_softc*, i32*, i32) #1

declare dso_local i32 @rt2560_alloc_rx_ring(%struct.rt2560_softc*, i32*, i32) #1

declare dso_local i32 @rt2560_get_macaddr(%struct.rt2560_softc*, i32) #1

declare dso_local i32 @rt2560_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @rt2560_free_tx_ring(%struct.rt2560_softc*, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
