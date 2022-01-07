; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32, i32*, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, i32, i32, i32, i32, i32, %struct.ipw_softc* }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@ipw_init_task = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not allocate interrupt resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"could not reset adapter\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"could not allocate DMA resources\0A\00", align 1
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_T_DS = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_IBSS = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_PMGT = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IPW_EEPROM_MAC = common dso_local global i64 0, align 8
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@IPW_EEPROM_RADIO = common dso_local global i64 0, align 8
@IPW_FLAG_HAS_RADIO_SWITCH = common dso_local global i32 0, align 4
@ipw_scan_start = common dso_local global i32 0, align 4
@ipw_scan_end = common dso_local global i32 0, align 4
@ipw_set_channel = common dso_local global i32 0, align 4
@ipw_scan_curchan = common dso_local global i32 0, align 4
@ipw_scan_mindwell = common dso_local global i32 0, align 4
@ipw_raw_xmit = common dso_local global i32 0, align 4
@ipw_vap_create = common dso_local global i32 0, align 4
@ipw_vap_delete = common dso_local global i32 0, align 4
@ipw_transmit = common dso_local global i32 0, align 4
@ipw_parent = common dso_local global i32 0, align 4
@IPW_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@IPW_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ipw_sysctl_radio = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"radio transmitter switch state (0=off, 1=on)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLTYPE_OPAQUE = common dso_local global i32 0, align 4
@ipw_sysctl_stats = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ipw_intr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"could not set up interrupt\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipw_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_softc*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ipw_softc* @device_get_softc(i32 %9)
  store %struct.ipw_softc* %10, %struct.ipw_softc** %4, align 8
  %11 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %11, i32 0, i32 14
  store %struct.ieee80211com* %12, %struct.ieee80211com** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %14, i32 0, i32 13
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_nameunit(i32 %18)
  %20 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = load i32, i32* @MTX_RECURSE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mtx_init(i32* %17, i32 %19, i32 %20, i32 %23)
  %25 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %25, i32 0, i32 12
  %27 = load i32, i32* @ifqmaxlen, align 4
  %28 = call i32 @mbufq_init(i32* %26, i32 %27)
  %29 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %29, i32 0, i32 11
  %31 = load i32, i32* @ipw_init_task, align 4
  %32 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %33 = call i32 @TASK_INIT(i32* %30, i32 0, i32 %31, %struct.ipw_softc* %32)
  %34 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %34, i32 0, i32 10
  %36 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %36, i32 0, i32 0
  %38 = call i32 @callout_init_mtx(i32* %35, i32* %37, i32 0)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @pci_write_config(i32 %39, i32 65, i32 0, i32 1)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pci_enable_busmaster(i32 %41)
  %43 = call i32 @PCIR_BAR(i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SYS_RES_MEMORY, align 4
  %46 = load i32, i32* @RF_ACTIVE, align 4
  %47 = call i8* @bus_alloc_resource_any(i32 %44, i32 %45, i32* %8, i32 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %1
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %317

58:                                               ; preds = %1
  %59 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @rman_get_bustag(i32* %61)
  %63 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %66 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @rman_get_bushandle(i32* %67)
  %69 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %8, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @SYS_RES_IRQ, align 4
  %73 = load i32, i32* @RF_ACTIVE, align 4
  %74 = load i32, i32* @RF_SHAREABLE, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @bus_alloc_resource_any(i32 %71, i32 %72, i32* %8, i32 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  %80 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %81 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %58
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %306

87:                                               ; preds = %58
  %88 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %89 = call i64 @ipw_reset(%struct.ipw_softc* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %295

94:                                               ; preds = %87
  %95 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %96 = call i64 @ipw_dma_alloc(%struct.ipw_softc* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %295

101:                                              ; preds = %94
  %102 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %103 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %103, i32 0, i32 18
  store %struct.ipw_softc* %102, %struct.ipw_softc** %104, align 8
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @device_get_nameunit(i32 %105)
  %107 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %107, i32 0, i32 17
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @IEEE80211_M_STA, align 4
  %110 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %111 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %110, i32 0, i32 16
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @IEEE80211_T_DS, align 4
  %113 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %114 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %113, i32 0, i32 15
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @IEEE80211_C_STA, align 4
  %116 = load i32, i32* @IEEE80211_C_IBSS, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @IEEE80211_C_PMGT, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @IEEE80211_C_WPA, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %127 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %129 = load i64, i64* @IPW_EEPROM_MAC, align 8
  %130 = add nsw i64 %129, 0
  %131 = call i32 @ipw_read_prom_word(%struct.ipw_softc* %128, i64 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = ashr i32 %132, 8
  %134 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %135 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, 255
  %140 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %141 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %139, i32* %143, align 4
  %144 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %145 = load i64, i64* @IPW_EEPROM_MAC, align 8
  %146 = add nsw i64 %145, 1
  %147 = call i32 @ipw_read_prom_word(%struct.ipw_softc* %144, i64 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = ashr i32 %148, 8
  %150 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %151 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, 255
  %156 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %157 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  store i32 %155, i32* %159, align 4
  %160 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %161 = load i64, i64* @IPW_EEPROM_MAC, align 8
  %162 = add nsw i64 %161, 2
  %163 = call i32 @ipw_read_prom_word(%struct.ipw_softc* %160, i64 %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = ashr i32 %164, 8
  %166 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %167 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 4
  store i32 %165, i32* %169, align 4
  %170 = load i32, i32* %6, align 4
  %171 = and i32 %170, 255
  %172 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %173 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 5
  store i32 %171, i32* %175, align 4
  %176 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %177 = call i32 @ipw_read_chanmask(%struct.ipw_softc* %176)
  %178 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %179 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %181 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %182 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %183 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %182, i32 0, i32 14
  %184 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %185 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @ipw_getradiocaps(%struct.ieee80211com* %180, i32 %181, i32* %183, i32 %186)
  %188 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %189 = load i64, i64* @IPW_EEPROM_RADIO, align 8
  %190 = call i32 @ipw_read_prom_word(%struct.ipw_softc* %188, i64 %189)
  %191 = and i32 %190, 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %101
  %194 = load i32, i32* @IPW_FLAG_HAS_RADIO_SWITCH, align 4
  %195 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %196 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %193, %101
  %200 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %201 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %200)
  %202 = load i32, i32* @ipw_scan_start, align 4
  %203 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %204 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %203, i32 0, i32 12
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* @ipw_scan_end, align 4
  %206 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %207 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %206, i32 0, i32 11
  store i32 %205, i32* %207, align 8
  %208 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %209 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %208, i32 0, i32 10
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @ipw_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %209, align 8
  %210 = load i32, i32* @ipw_set_channel, align 4
  %211 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %212 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @ipw_scan_curchan, align 4
  %214 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %215 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %214, i32 0, i32 8
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* @ipw_scan_mindwell, align 4
  %217 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %218 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* @ipw_raw_xmit, align 4
  %220 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %221 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %220, i32 0, i32 6
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* @ipw_vap_create, align 4
  %223 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %224 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @ipw_vap_delete, align 4
  %226 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %227 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @ipw_transmit, align 4
  %229 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %230 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @ipw_parent, align 4
  %232 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %233 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %235 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %236 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i32, i32* @IPW_TX_RADIOTAP_PRESENT, align 4
  %239 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %240 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* @IPW_RX_RADIOTAP_PRESENT, align 4
  %243 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %234, i32* %237, i32 4, i32 %238, i32* %241, i32 4, i32 %242)
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @device_get_sysctl_ctx(i32 %244)
  %246 = load i32, i32* %3, align 4
  %247 = call i32 @device_get_sysctl_tree(i32 %246)
  %248 = call i32 @SYSCTL_CHILDREN(i32 %247)
  %249 = load i32, i32* @OID_AUTO, align 4
  %250 = load i32, i32* @CTLTYPE_INT, align 4
  %251 = load i32, i32* @CTLFLAG_RD, align 4
  %252 = or i32 %250, %251
  %253 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %254 = load i32, i32* @ipw_sysctl_radio, align 4
  %255 = call i32 @SYSCTL_ADD_PROC(i32 %245, i32 %248, i32 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %252, %struct.ipw_softc* %253, i32 0, i32 %254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %256 = load i32, i32* %3, align 4
  %257 = call i32 @device_get_sysctl_ctx(i32 %256)
  %258 = load i32, i32* %3, align 4
  %259 = call i32 @device_get_sysctl_tree(i32 %258)
  %260 = call i32 @SYSCTL_CHILDREN(i32 %259)
  %261 = load i32, i32* @OID_AUTO, align 4
  %262 = load i32, i32* @CTLTYPE_OPAQUE, align 4
  %263 = load i32, i32* @CTLFLAG_RD, align 4
  %264 = or i32 %262, %263
  %265 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %266 = load i32, i32* @ipw_sysctl_stats, align 4
  %267 = call i32 @SYSCTL_ADD_PROC(i32 %257, i32 %260, i32 %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %264, %struct.ipw_softc* %265, i32 0, i32 %266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %268 = load i32, i32* %3, align 4
  %269 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %270 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* @INTR_TYPE_NET, align 4
  %273 = load i32, i32* @INTR_MPSAFE, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @ipw_intr, align 4
  %276 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %277 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %278 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %277, i32 0, i32 3
  %279 = call i32 @bus_setup_intr(i32 %268, i32* %271, i32 %274, i32* null, i32 %275, %struct.ipw_softc* %276, i32* %278)
  store i32 %279, i32* %7, align 4
  %280 = load i32, i32* %7, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %199
  %283 = load i32, i32* %3, align 4
  %284 = call i32 @device_printf(i32 %283, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %292

285:                                              ; preds = %199
  %286 = load i64, i64* @bootverbose, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %290 = call i32 @ieee80211_announce(%struct.ieee80211com* %289)
  br label %291

291:                                              ; preds = %288, %285
  store i32 0, i32* %2, align 4
  br label %322

292:                                              ; preds = %282
  %293 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %294 = call i32 @ipw_release(%struct.ipw_softc* %293)
  br label %295

295:                                              ; preds = %292, %98, %91
  %296 = load i32, i32* %3, align 4
  %297 = load i32, i32* @SYS_RES_IRQ, align 4
  %298 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %299 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @rman_get_rid(i32* %300)
  %302 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %303 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @bus_release_resource(i32 %296, i32 %297, i32 %301, i32* %304)
  br label %306

306:                                              ; preds = %295, %84
  %307 = load i32, i32* %3, align 4
  %308 = load i32, i32* @SYS_RES_MEMORY, align 4
  %309 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %310 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = call i32 @rman_get_rid(i32* %311)
  %313 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %314 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = call i32 @bus_release_resource(i32 %307, i32 %308, i32 %312, i32* %315)
  br label %317

317:                                              ; preds = %306, %55
  %318 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %319 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %318, i32 0, i32 0
  %320 = call i32 @mtx_destroy(i32* %319)
  %321 = load i32, i32* @ENXIO, align 4
  store i32 %321, i32* %2, align 4
  br label %322

322:                                              ; preds = %317, %291
  %323 = load i32, i32* %2, align 4
  ret i32 %323
}

declare dso_local %struct.ipw_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ipw_softc*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @ipw_reset(%struct.ipw_softc*) #1

declare dso_local i64 @ipw_dma_alloc(%struct.ipw_softc*) #1

declare dso_local i32 @ipw_read_prom_word(%struct.ipw_softc*, i64) #1

declare dso_local i32 @ipw_read_chanmask(%struct.ipw_softc*) #1

declare dso_local i32 @ipw_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.ipw_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ipw_softc*, i32*) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @ipw_release(%struct.ipw_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
