; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, i32, i32, i32, i32, %struct.malo_hal*, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.malo_hal = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.malo_softc* }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unable to attach HAL\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"malo8335-h\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"malo8335-m\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to setup firmware\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unable to fetch h/w specs\0A\00", align 1
@MALO_DEBUG_FW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [241 x i8] c"malo_hal_gethwspecs: hwversion 0x%x hostif 0x%xmaxnum_wcb 0x%x maxnum_mcaddr 0x%x maxnum_tx_wcb 0x%xregioncode 0x%x num_antenna 0x%x fw_releasenum 0x%xwcbbase0 0x%x rxdesc_read 0x%x rxdesc_write 0x%xul_fw_awakecookie 0x%x w[4] = %x %x %x %x\00", align 1
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to setup descriptors: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"malo_taskq\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"%s taskq\00", align 1
@malo_rx_proc = common dso_local global i32 0, align 4
@malo_tx_proc = common dso_local global i32 0, align 4
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_TXPMGT = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@malo_vap_create = common dso_local global i32 0, align 4
@malo_vap_delete = common dso_local global i32 0, align 4
@malo_raw_xmit = common dso_local global i32 0, align 4
@malo_updateslot = common dso_local global i32 0, align 4
@malo_scan_start = common dso_local global i32 0, align 4
@malo_scan_end = common dso_local global i32 0, align 4
@malo_set_channel = common dso_local global i32 0, align 4
@malo_parent = common dso_local global i32 0, align 4
@malo_transmit = common dso_local global i32 0, align 4
@MALO_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@MALO_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malo_attach(i32 %0, %struct.malo_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.malo_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.malo_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.malo_softc* %1, %struct.malo_softc** %5, align 8
  %12 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %13 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %12, i32 0, i32 17
  store %struct.ieee80211com* %13, %struct.ieee80211com** %6, align 8
  %14 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %19 = call i32 @MALO_LOCK_INIT(%struct.malo_softc* %18)
  %20 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %21 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %20, i32 0, i32 16
  %22 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %23 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %22, i32 0, i32 15
  %24 = call i32 @callout_init_mtx(i32* %21, i32* %23, i32 0)
  %25 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %26 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %25, i32 0, i32 14
  %27 = load i32, i32* @ifqmaxlen, align 4
  %28 = call i32 @mbufq_init(i32* %26, i32 %27)
  %29 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %30 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %34 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %37 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %40 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.malo_hal* @malo_hal_attach(i32 %31, i32 %32, i32 %35, i32 %38, i32 %41)
  store %struct.malo_hal* %42, %struct.malo_hal** %7, align 8
  %43 = load %struct.malo_hal*, %struct.malo_hal** %7, align 8
  %44 = icmp eq %struct.malo_hal* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %47 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  store i32 %50, i32* %8, align 4
  br label %304

51:                                               ; preds = %2
  %52 = load %struct.malo_hal*, %struct.malo_hal** %7, align 8
  %53 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %54 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %53, i32 0, i32 10
  store %struct.malo_hal* %52, %struct.malo_hal** %54, align 8
  %55 = load %struct.malo_hal*, %struct.malo_hal** %7, align 8
  %56 = call i32 @malo_hal_fwload(%struct.malo_hal* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %61 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %301

64:                                               ; preds = %51
  %65 = load %struct.malo_hal*, %struct.malo_hal** %7, align 8
  %66 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %67 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %66, i32 0, i32 5
  %68 = call i32 @malo_hal_gethwspecs(%struct.malo_hal* %65, %struct.TYPE_6__* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %73 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %301

76:                                               ; preds = %64
  %77 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %78 = load i32, i32* @MALO_DEBUG_FW, align 4
  %79 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %80 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %84 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %88 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %92 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %96 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %100 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %104 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %108 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %112 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %116 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %120 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %124 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %128 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %134 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %140 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %146 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @DPRINTF(%struct.malo_softc* %77, i32 %78, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.5, i64 0, i64 0), i32 %82, i32 %86, i32 %90, i32 %94, i32 %98, i32 %102, i32 %106, i32 %110, i32 %114, i32 %118, i32 %122, i32 %126, i32 %132, i32 %138, i32 %144, i32 %150)
  %152 = mul nuw i64 4, %15
  %153 = trunc i64 %152 to i32
  %154 = call i32 @memset(i32* %17, i32 0, i32 %153)
  %155 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %156 = call i32 @setbit(i32* %17, i32 %155)
  %157 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %158 = call i32 @setbit(i32* %17, i32 %157)
  %159 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %160 = call i32 @ieee80211_init_channels(%struct.ieee80211com* %159, i32* null, i32* %17)
  %161 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %162 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %161, i32 0, i32 0
  store i32 2, i32* %162, align 8
  %163 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %164 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %163, i32 0, i32 1
  store i32 65535, i32* %164, align 4
  %165 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %166 = call i32 @malo_dma_setup(%struct.malo_softc* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %76
  %170 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %171 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %173)
  br label %301

175:                                              ; preds = %76
  %176 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %177 = call i32 @malo_setup_hwdma(%struct.malo_softc* %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %298

181:                                              ; preds = %175
  %182 = load i32, i32* @M_NOWAIT, align 4
  %183 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %184 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %185 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %184, i32 0, i32 9
  %186 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %182, i32 %183, i32* %185)
  %187 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %188 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %187, i32 0, i32 9
  store i32 %186, i32* %188, align 4
  %189 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %190 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %189, i32 0, i32 9
  %191 = load i32, i32* @PI_NET, align 4
  %192 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %193 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @device_get_nameunit(i32 %194)
  %196 = call i32 @taskqueue_start_threads(i32* %190, i32 1, i32 %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %195)
  %197 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %198 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %197, i32 0, i32 8
  %199 = load i32, i32* @malo_rx_proc, align 4
  %200 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %201 = call i32 @TASK_INIT(i32* %198, i32 0, i32 %199, %struct.malo_softc* %200)
  %202 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %203 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %202, i32 0, i32 7
  %204 = load i32, i32* @malo_tx_proc, align 4
  %205 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %206 = call i32 @TASK_INIT(i32* %203, i32 0, i32 %204, %struct.malo_softc* %205)
  %207 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %208 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %209 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %208, i32 0, i32 15
  store %struct.malo_softc* %207, %struct.malo_softc** %209, align 8
  %210 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %211 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @device_get_nameunit(i32 %212)
  %214 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %215 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %214, i32 0, i32 14
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %217 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %218 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %217, i32 0, i32 13
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* @IEEE80211_M_STA, align 4
  %220 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %221 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %220, i32 0, i32 12
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* @IEEE80211_C_STA, align 4
  %223 = load i32, i32* @IEEE80211_C_BGSCAN, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @IEEE80211_C_TXPMGT, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @IEEE80211_C_WPA, align 4
  %234 = or i32 %232, %233
  %235 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %236 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %238 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %237, i32 0, i32 11
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %241 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @IEEE80211_ADDR_COPY(i32 %239, i32 %243)
  %245 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %246 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %245, i32 0, i32 1
  store i32 0, i32* %246, align 4
  %247 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %248 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %247)
  %249 = load i32, i32* @malo_vap_create, align 4
  %250 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %251 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %250, i32 0, i32 10
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* @malo_vap_delete, align 4
  %253 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %254 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %253, i32 0, i32 9
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @malo_raw_xmit, align 4
  %256 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %257 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %256, i32 0, i32 8
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* @malo_updateslot, align 4
  %259 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %260 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %259, i32 0, i32 7
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* @malo_scan_start, align 4
  %262 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %263 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %262, i32 0, i32 6
  store i32 %261, i32* %263, align 8
  %264 = load i32, i32* @malo_scan_end, align 4
  %265 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %266 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %265, i32 0, i32 5
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* @malo_set_channel, align 4
  %268 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %269 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 8
  %270 = load i32, i32* @malo_parent, align 4
  %271 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %272 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %271, i32 0, i32 3
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* @malo_transmit, align 4
  %274 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %275 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  %276 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %277 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %276, i32 0, i32 2
  store i32 0, i32* %277, align 8
  %278 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %279 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %280 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i32, i32* @MALO_TX_RADIOTAP_PRESENT, align 4
  %283 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %284 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i32, i32* @MALO_RX_RADIOTAP_PRESENT, align 4
  %287 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %278, i32* %281, i32 4, i32 %282, i32* %285, i32 4, i32 %286)
  %288 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %289 = call i32 @malo_sysctlattach(%struct.malo_softc* %288)
  %290 = load i64, i64* @bootverbose, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %181
  %293 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %294 = call i32 @ieee80211_announce(%struct.ieee80211com* %293)
  br label %295

295:                                              ; preds = %292, %181
  %296 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %297 = call i32 @malo_announce(%struct.malo_softc* %296)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %308

298:                                              ; preds = %180
  %299 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %300 = call i32 @malo_dma_cleanup(%struct.malo_softc* %299)
  br label %301

301:                                              ; preds = %298, %169, %71, %59
  %302 = load %struct.malo_hal*, %struct.malo_hal** %7, align 8
  %303 = call i32 @malo_hal_detach(%struct.malo_hal* %302)
  br label %304

304:                                              ; preds = %301, %45
  %305 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %306 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %305, i32 0, i32 2
  store i32 1, i32* %306, align 8
  %307 = load i32, i32* %8, align 4
  store i32 %307, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %308

308:                                              ; preds = %304, %295
  %309 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MALO_LOCK_INIT(%struct.malo_softc*) #2

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #2

declare dso_local i32 @mbufq_init(i32*, i32) #2

declare dso_local %struct.malo_hal* @malo_hal_attach(i32, i32, i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @malo_hal_fwload(%struct.malo_hal*, i8*, i8*) #2

declare dso_local i32 @malo_hal_gethwspecs(%struct.malo_hal*, %struct.TYPE_6__*) #2

declare dso_local i32 @DPRINTF(%struct.malo_softc*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @ieee80211_init_channels(%struct.ieee80211com*, i32*, i32*) #2

declare dso_local i32 @malo_dma_setup(%struct.malo_softc*) #2

declare dso_local i32 @malo_setup_hwdma(%struct.malo_softc*) #2

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #2

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.malo_softc*) #2

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #2

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #2

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @malo_sysctlattach(%struct.malo_softc*) #2

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #2

declare dso_local i32 @malo_announce(%struct.malo_softc*) #2

declare dso_local i32 @malo_dma_cleanup(%struct.malo_softc*) #2

declare dso_local i32 @malo_hal_detach(%struct.malo_hal*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
