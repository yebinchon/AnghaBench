; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211com = type { i32, i32*, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.iwi_softc* }
%struct.TYPE_4__ = type { i32 }

@ticks = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@IWI_MAX_IBSSNODE = common dso_local global i64 0, align 8
@iwi_radio_on = common dso_local global i32 0, align 4
@iwi_radio_off = common dso_local global i32 0, align 4
@iwi_restart = common dso_local global i32 0, align 4
@iwi_disassoc = common dso_local global i32 0, align 4
@iwi_monitor_scan = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not allocate interrupt resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"could not reset adapter\0A\00", align 1
@IWI_CMD_RING_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not allocate Cmd ring\0A\00", align 1
@IWI_TX_RING_COUNT = common dso_local global i32 0, align 4
@IWI_CSR_TX1_RIDX = common dso_local global i64 0, align 8
@IWI_CSR_TX1_WIDX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"could not allocate Tx ring %d\0A\00", align 1
@IWI_RX_RING_COUNT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"could not allocate Rx ring\0A\00", align 1
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_IBSS = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_PMGT = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_C_WME = common dso_local global i32 0, align 4
@IWI_EEPROM_MAC = common dso_local global i64 0, align 8
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@iwi_node_alloc = common dso_local global i32 0, align 4
@iwi_node_free = common dso_local global i32 0, align 4
@iwi_raw_xmit = common dso_local global i32 0, align 4
@iwi_scan_start = common dso_local global i32 0, align 4
@iwi_scan_end = common dso_local global i32 0, align 4
@iwi_set_channel = common dso_local global i32 0, align 4
@iwi_scan_curchan = common dso_local global i32 0, align 4
@iwi_scan_mindwell = common dso_local global i32 0, align 4
@iwi_wme_update = common dso_local global i32 0, align 4
@iwi_vap_create = common dso_local global i32 0, align 4
@iwi_vap_delete = common dso_local global i32 0, align 4
@iwi_ioctl = common dso_local global i32 0, align 4
@iwi_transmit = common dso_local global i32 0, align 4
@iwi_parent = common dso_local global i32 0, align 4
@IWI_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@IWI_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@iwi_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"could not set up interrupt\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iwi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwi_softc*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.iwi_softc* @device_get_softc(i32 %9)
  store %struct.iwi_softc* %10, %struct.iwi_softc** %4, align 8
  %11 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %11, i32 0, i32 23
  store %struct.ieee80211com* %12, %struct.ieee80211com** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %15 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %14, i32 0, i32 22
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ticks, align 4
  %17 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %17, i32 0, i32 21
  store i32 %16, i32* %18, align 8
  %19 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %20 = call i32 @IWI_LOCK_INIT(%struct.iwi_softc* %19)
  %21 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %21, i32 0, i32 20
  %23 = load i32, i32* @ifqmaxlen, align 4
  %24 = call i32 @mbufq_init(i32* %22, i32 %23)
  %25 = load i64, i64* @IWI_MAX_IBSSNODE, align 8
  %26 = sub nsw i64 %25, 1
  %27 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %27, i32 0, i32 11
  %29 = call i32 @new_unrhdr(i32 1, i64 %26, i32* %28)
  %30 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %30, i32 0, i32 19
  store i32 %29, i32* %31, align 8
  %32 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %32, i32 0, i32 18
  %34 = load i32, i32* @iwi_radio_on, align 4
  %35 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %36 = call i32 @TASK_INIT(i32* %33, i32 0, i32 %34, %struct.iwi_softc* %35)
  %37 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %37, i32 0, i32 17
  %39 = load i32, i32* @iwi_radio_off, align 4
  %40 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %41 = call i32 @TASK_INIT(i32* %38, i32 0, i32 %39, %struct.iwi_softc* %40)
  %42 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %42, i32 0, i32 16
  %44 = load i32, i32* @iwi_restart, align 4
  %45 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %46 = call i32 @TASK_INIT(i32* %43, i32 0, i32 %44, %struct.iwi_softc* %45)
  %47 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %47, i32 0, i32 15
  %49 = load i32, i32* @iwi_disassoc, align 4
  %50 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %51 = call i32 @TASK_INIT(i32* %48, i32 0, i32 %49, %struct.iwi_softc* %50)
  %52 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %53 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %52, i32 0, i32 14
  %54 = load i32, i32* @iwi_monitor_scan, align 4
  %55 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %56 = call i32 @TASK_INIT(i32* %53, i32 0, i32 %54, %struct.iwi_softc* %55)
  %57 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %58 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %57, i32 0, i32 13
  %59 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %60 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %59, i32 0, i32 11
  %61 = call i32 @callout_init_mtx(i32* %58, i32* %60, i32 0)
  %62 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %63 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %62, i32 0, i32 12
  %64 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %65 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %64, i32 0, i32 11
  %66 = call i32 @callout_init_mtx(i32* %63, i32* %65, i32 0)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @pci_write_config(i32 %67, i32 65, i32 0, i32 1)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pci_enable_busmaster(i32 %69)
  %71 = call i32 @PCIR_BAR(i32 0)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @SYS_RES_MEMORY, align 4
  %74 = load i32, i32* @RF_ACTIVE, align 4
  %75 = call i8* @bus_alloc_resource_any(i32 %72, i32 %73, i32* %7, i32 %74)
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %78 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %77, i32 0, i32 8
  store i32* %76, i32** %78, align 8
  %79 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %79, i32 0, i32 8
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %1
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %355

86:                                               ; preds = %1
  %87 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %88 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @rman_get_bustag(i32* %89)
  %91 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %92 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 4
  %93 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %94 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %93, i32 0, i32 8
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @rman_get_bushandle(i32* %95)
  %97 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %98 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %97, i32 0, i32 9
  store i32 %96, i32* %98, align 8
  store i32 0, i32* %7, align 4
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @SYS_RES_IRQ, align 4
  %101 = load i32, i32* @RF_ACTIVE, align 4
  %102 = load i32, i32* @RF_SHAREABLE, align 4
  %103 = or i32 %101, %102
  %104 = call i8* @bus_alloc_resource_any(i32 %99, i32 %100, i32* %7, i32 %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %107 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %109 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %86
  %113 = load i32, i32* %3, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %355

115:                                              ; preds = %86
  %116 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %117 = call i64 @iwi_reset(%struct.iwi_softc* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* %3, align 4
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %355

122:                                              ; preds = %115
  %123 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %124 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %125 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %124, i32 0, i32 7
  %126 = load i32, i32* @IWI_CMD_RING_COUNT, align 4
  %127 = call i64 @iwi_alloc_cmd_ring(%struct.iwi_softc* %123, i32* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* %3, align 4
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %355

132:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %165, %132
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %168

136:                                              ; preds = %133
  %137 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %138 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %139 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* @IWI_TX_RING_COUNT, align 4
  %145 = load i64, i64* @IWI_CSR_TX1_RIDX, align 8
  %146 = load i32, i32* %7, align 4
  %147 = mul nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %145, %148
  %150 = load i64, i64* @IWI_CSR_TX1_WIDX, align 8
  %151 = load i32, i32* %7, align 4
  %152 = mul nsw i32 %151, 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %150, %153
  %155 = call i32 @iwi_alloc_tx_ring(%struct.iwi_softc* %137, i32* %143, i32 %144, i64 %149, i64 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %136
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %160, %161
  %163 = call i32 (i32, i8*, ...) @device_printf(i32 %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  br label %355

164:                                              ; preds = %136
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %133

168:                                              ; preds = %133
  %169 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %170 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %171 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %170, i32 0, i32 5
  %172 = load i32, i32* @IWI_RX_RING_COUNT, align 4
  %173 = call i64 @iwi_alloc_rx_ring(%struct.iwi_softc* %169, i32* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load i32, i32* %3, align 4
  %177 = call i32 (i32, i8*, ...) @device_printf(i32 %176, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %355

178:                                              ; preds = %168
  %179 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %180 = call i32 @iwi_wme_init(%struct.iwi_softc* %179)
  %181 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %182 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %183 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %182, i32 0, i32 22
  store %struct.iwi_softc* %181, %struct.iwi_softc** %183, align 8
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @device_get_nameunit(i32 %184)
  %186 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %187 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %186, i32 0, i32 21
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @IEEE80211_M_STA, align 4
  %189 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %190 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %189, i32 0, i32 20
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %192 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %193 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %192, i32 0, i32 19
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @IEEE80211_C_STA, align 4
  %195 = load i32, i32* @IEEE80211_C_IBSS, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @IEEE80211_C_PMGT, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @IEEE80211_C_WPA, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @IEEE80211_C_WME, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %208 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %210 = load i64, i64* @IWI_EEPROM_MAC, align 8
  %211 = add nsw i64 %210, 0
  %212 = call i32 @iwi_read_prom_word(%struct.iwi_softc* %209, i64 %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = and i32 %213, 255
  %215 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %216 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 %214, i32* %218, align 4
  %219 = load i32, i32* %6, align 4
  %220 = ashr i32 %219, 8
  %221 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %222 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  store i32 %220, i32* %224, align 4
  %225 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %226 = load i64, i64* @IWI_EEPROM_MAC, align 8
  %227 = add nsw i64 %226, 1
  %228 = call i32 @iwi_read_prom_word(%struct.iwi_softc* %225, i64 %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = and i32 %229, 255
  %231 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %232 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  store i32 %230, i32* %234, align 4
  %235 = load i32, i32* %6, align 4
  %236 = ashr i32 %235, 8
  %237 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %238 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  store i32 %236, i32* %240, align 4
  %241 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %242 = load i64, i64* @IWI_EEPROM_MAC, align 8
  %243 = add nsw i64 %242, 2
  %244 = call i32 @iwi_read_prom_word(%struct.iwi_softc* %241, i64 %243)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = and i32 %245, 255
  %247 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %248 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 4
  store i32 %246, i32* %250, align 4
  %251 = load i32, i32* %6, align 4
  %252 = ashr i32 %251, 8
  %253 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %254 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 5
  store i32 %252, i32* %256, align 4
  %257 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %258 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %259 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %260 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %259, i32 0, i32 18
  %261 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %262 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %261, i32 0, i32 17
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @iwi_getradiocaps(%struct.ieee80211com* %257, i32 %258, i32* %260, i32 %263)
  %265 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %266 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %265)
  %267 = load i32, i32* @iwi_node_alloc, align 4
  %268 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %269 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %268, i32 0, i32 16
  store i32 %267, i32* %269, align 4
  %270 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %271 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %270, i32 0, i32 15
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %274 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* @iwi_node_free, align 4
  %276 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %277 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %276, i32 0, i32 15
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* @iwi_raw_xmit, align 4
  %279 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %280 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %279, i32 0, i32 14
  store i32 %278, i32* %280, align 4
  %281 = load i32, i32* @iwi_scan_start, align 4
  %282 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %283 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %282, i32 0, i32 13
  store i32 %281, i32* %283, align 8
  %284 = load i32, i32* @iwi_scan_end, align 4
  %285 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %286 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %285, i32 0, i32 12
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* @iwi_set_channel, align 4
  %288 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %289 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %288, i32 0, i32 11
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* @iwi_scan_curchan, align 4
  %291 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %292 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %291, i32 0, i32 10
  store i32 %290, i32* %292, align 4
  %293 = load i32, i32* @iwi_scan_mindwell, align 4
  %294 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %295 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %294, i32 0, i32 9
  store i32 %293, i32* %295, align 8
  %296 = load i32, i32* @iwi_wme_update, align 4
  %297 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %298 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %297, i32 0, i32 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  store i32 %296, i32* %299, align 4
  %300 = load i32, i32* @iwi_vap_create, align 4
  %301 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %302 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %301, i32 0, i32 7
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* @iwi_vap_delete, align 4
  %304 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %305 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %304, i32 0, i32 6
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* @iwi_ioctl, align 4
  %307 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %308 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %307, i32 0, i32 5
  store i32 %306, i32* %308, align 8
  %309 = load i32, i32* @iwi_transmit, align 4
  %310 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %311 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %310, i32 0, i32 4
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* @iwi_parent, align 4
  %313 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %314 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %313, i32 0, i32 3
  store i32 %312, i32* %314, align 8
  %315 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %316 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %315, i32 0, i32 2
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @iwi_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %316, align 8
  %317 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %318 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %319 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = load i32, i32* @IWI_TX_RADIOTAP_PRESENT, align 4
  %322 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %323 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = load i32, i32* @IWI_RX_RADIOTAP_PRESENT, align 4
  %326 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %317, i32* %320, i32 4, i32 %321, i32* %324, i32 4, i32 %325)
  %327 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %328 = call i32 @iwi_sysctlattach(%struct.iwi_softc* %327)
  %329 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %330 = call i32 @iwi_ledattach(%struct.iwi_softc* %329)
  %331 = load i32, i32* %3, align 4
  %332 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %333 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* @INTR_TYPE_NET, align 4
  %336 = load i32, i32* @INTR_MPSAFE, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @iwi_intr, align 4
  %339 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %340 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %341 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %340, i32 0, i32 0
  %342 = call i32 @bus_setup_intr(i32 %331, i32* %334, i32 %337, i32* null, i32 %338, %struct.iwi_softc* %339, i32* %341)
  store i32 %342, i32* %8, align 4
  %343 = load i32, i32* %8, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %178
  %346 = load i32, i32* %3, align 4
  %347 = call i32 (i32, i8*, ...) @device_printf(i32 %346, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %355

348:                                              ; preds = %178
  %349 = load i64, i64* @bootverbose, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %353 = call i32 @ieee80211_announce(%struct.ieee80211com* %352)
  br label %354

354:                                              ; preds = %351, %348
  store i32 0, i32* %2, align 4
  br label %359

355:                                              ; preds = %345, %175, %158, %129, %119, %112, %83
  %356 = load i32, i32* %3, align 4
  %357 = call i32 @iwi_detach(i32 %356)
  %358 = load i32, i32* @ENXIO, align 4
  store i32 %358, i32* %2, align 4
  br label %359

359:                                              ; preds = %355, %354
  %360 = load i32, i32* %2, align 4
  ret i32 %360
}

declare dso_local %struct.iwi_softc* @device_get_softc(i32) #1

declare dso_local i32 @IWI_LOCK_INIT(%struct.iwi_softc*) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @new_unrhdr(i32, i64, i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.iwi_softc*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @iwi_reset(%struct.iwi_softc*) #1

declare dso_local i64 @iwi_alloc_cmd_ring(%struct.iwi_softc*, i32*, i32) #1

declare dso_local i32 @iwi_alloc_tx_ring(%struct.iwi_softc*, i32*, i32, i64, i64) #1

declare dso_local i64 @iwi_alloc_rx_ring(%struct.iwi_softc*, i32*, i32) #1

declare dso_local i32 @iwi_wme_init(%struct.iwi_softc*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @iwi_read_prom_word(%struct.iwi_softc*, i64) #1

declare dso_local i32 @iwi_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @iwi_sysctlattach(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_ledattach(%struct.iwi_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.iwi_softc*, i32*) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @iwi_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
