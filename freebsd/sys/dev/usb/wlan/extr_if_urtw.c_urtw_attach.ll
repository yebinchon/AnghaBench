; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config = type { i32 }
%struct.urtw_softc = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.urtw_softc* }
%struct.usb_attach_arg = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@URTW_IFACE_INDEX = common dso_local global i32 0, align 4
@URTW_REV_RTL8187B = common dso_local global i64 0, align 8
@URTW_RTL8187B = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@urtw_ledtask = common dso_local global i32 0, align 4
@urtw_updateslottask = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@urtw_8187b_usbconfig = common dso_local global %struct.usb_config* null, align 8
@URTW_8187B_N_XFERS = common dso_local global i32 0, align 4
@urtw_8187l_usbconfig = common dso_local global %struct.usb_config* null, align 8
@URTW_8187L_N_XFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not allocate USB transfers, err=%s\0A\00", align 1
@URTW_8187B_BULK_TX_BE = common dso_local global i64 0, align 8
@URTW_8187L_BULK_TX_LOW = common dso_local global i64 0, align 8
@URTW_RX = common dso_local global i32 0, align 4
@URTW_RX_9356SEL = common dso_local global i32 0, align 4
@URTW_EEPROM_93C56 = common dso_local global i32 0, align 4
@URTW_EEPROM_93C46 = common dso_local global i32 0, align 4
@URTW_DEFAULT_RTS_RETRY = common dso_local global i32 0, align 4
@URTW_DEFAULT_TX_RETRY = common dso_local global i32 0, align 4
@URTW_RIDX_CCK11 = common dso_local global i32 0, align 4
@urtw_preamble_mode = common dso_local global i32 0, align 4
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_TXPMGT = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@urtw_raw_xmit = common dso_local global i32 0, align 4
@urtw_scan_start = common dso_local global i32 0, align 4
@urtw_scan_end = common dso_local global i32 0, align 4
@urtw_set_channel = common dso_local global i32 0, align 4
@urtw_updateslot = common dso_local global i32 0, align 4
@urtw_vap_create = common dso_local global i32 0, align 4
@urtw_vap_delete = common dso_local global i32 0, align 4
@urtw_update_promisc = common dso_local global i32 0, align 4
@urtw_update_mcast = common dso_local global i32 0, align 4
@urtw_parent = common dso_local global i32 0, align 4
@urtw_transmit = common dso_local global i32 0, align 4
@URTW_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@URTW_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@urtw_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @urtw_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urtw_softc*, align 8
  %7 = alloca %struct.usb_attach_arg*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.urtw_softc* @device_get_softc(i32 %14)
  store %struct.urtw_softc* %15, %struct.urtw_softc** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.usb_attach_arg* @device_get_ivars(i32 %16)
  store %struct.usb_attach_arg* %17, %struct.usb_attach_arg** %7, align 8
  %18 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %19 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %18, i32 0, i32 19
  store %struct.ieee80211com* %19, %struct.ieee80211com** %8, align 8
  %20 = load i32, i32* @URTW_IFACE_INDEX, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_set_usb_desc(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %25 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %24, i32 0, i32 16
  store i32 %23, i32* %25, align 8
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %30 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %29, i32 0, i32 18
  store i32 %28, i32* %30, align 8
  %31 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %32 = call i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %31)
  %33 = load i64, i64* @URTW_REV_RTL8187B, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @URTW_RTL8187B, align 4
  %37 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %38 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %1
  %42 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %43 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %42, i32 0, i32 10
  %44 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %45 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_get_nameunit(i32 %46)
  %48 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %49 = load i32, i32* @MTX_DEF, align 4
  %50 = call i32 @mtx_init(i32* %43, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %52 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %51, i32 0, i32 15
  %53 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %54 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %53, i32 0, i32 10
  %55 = call i32 @usb_callout_init_mtx(i32* %52, i32* %54, i32 0)
  %56 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %57 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %56, i32 0, i32 14
  %58 = load i32, i32* @urtw_ledtask, align 4
  %59 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %60 = call i32 @TASK_INIT(i32* %57, i32 0, i32 %58, %struct.urtw_softc* %59)
  %61 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %62 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %61, i32 0, i32 13
  %63 = load i32, i32* @urtw_updateslottask, align 4
  %64 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %65 = call i32 @TASK_INIT(i32* %62, i32 0, i32 %63, %struct.urtw_softc* %64)
  %66 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %67 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %66, i32 0, i32 12
  %68 = call i32 @callout_init(i32* %67, i32 0)
  %69 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %70 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %69, i32 0, i32 11
  %71 = load i32, i32* @ifqmaxlen, align 4
  %72 = call i32 @mbufq_init(i32* %70, i32 %71)
  %73 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %74 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @URTW_RTL8187B, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %41
  %80 = load %struct.usb_config*, %struct.usb_config** @urtw_8187b_usbconfig, align 8
  store %struct.usb_config* %80, %struct.usb_config** %4, align 8
  %81 = load i32, i32* @URTW_8187B_N_XFERS, align 4
  store i32 %81, i32* %10, align 4
  br label %85

82:                                               ; preds = %41
  %83 = load %struct.usb_config*, %struct.usb_config** @urtw_8187l_usbconfig, align 8
  store %struct.usb_config* %83, %struct.usb_config** %4, align 8
  %84 = load i32, i32* @URTW_8187L_N_XFERS, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %87 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %90 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.usb_config*, %struct.usb_config** %4, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %95 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %96 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %95, i32 0, i32 10
  %97 = call i64 @usbd_transfer_setup(i32 %88, i32* %9, i32* %91, %struct.usb_config* %92, i32 %93, %struct.urtw_softc* %94, i32* %96)
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %85
  %101 = load i32, i32* %3, align 4
  %102 = load i64, i64* %12, align 8
  %103 = call i32 @usbd_errstr(i64 %102)
  %104 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %5, align 4
  br label %299

106:                                              ; preds = %85
  %107 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %108 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @URTW_RTL8187B, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %106
  %114 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %115 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @URTW_8187B_BULK_TX_BE, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @usbd_xfer_get_frame_buffer(i32 %119, i32 0)
  %121 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %122 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %121, i32 0, i32 9
  store i8* %120, i8** %122, align 8
  br label %133

123:                                              ; preds = %106
  %124 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %125 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @URTW_8187L_BULK_TX_LOW, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @usbd_xfer_get_frame_buffer(i32 %129, i32 0)
  %131 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %132 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %131, i32 0, i32 9
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %123, %113
  %134 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %135 = call i32 @URTW_LOCK(%struct.urtw_softc* %134)
  %136 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %137 = load i32, i32* @URTW_RX, align 4
  %138 = call i32 @urtw_read32_m(%struct.urtw_softc* %136, i32 %137, i32* %11)
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @URTW_RX_9356SEL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* @URTW_EEPROM_93C56, align 4
  br label %147

145:                                              ; preds = %133
  %146 = load i32, i32* @URTW_EEPROM_93C46, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %150 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 8
  %151 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %152 = call i64 @urtw_get_rfchip(%struct.urtw_softc* %151)
  store i64 %152, i64* %12, align 8
  %153 = load i64, i64* %12, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %280

156:                                              ; preds = %147
  %157 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %158 = call i64 @urtw_get_macaddr(%struct.urtw_softc* %157)
  store i64 %158, i64* %12, align 8
  %159 = load i64, i64* %12, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %280

162:                                              ; preds = %156
  %163 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %164 = call i64 @urtw_get_txpwr(%struct.urtw_softc* %163)
  store i64 %164, i64* %12, align 8
  %165 = load i64, i64* %12, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %280

168:                                              ; preds = %162
  %169 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %170 = call i64 @urtw_led_init(%struct.urtw_softc* %169)
  store i64 %170, i64* %12, align 8
  %171 = load i64, i64* %12, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %280

174:                                              ; preds = %168
  %175 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %176 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %175)
  %177 = load i32, i32* @URTW_DEFAULT_RTS_RETRY, align 4
  %178 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %179 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @URTW_DEFAULT_TX_RETRY, align 4
  %181 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %182 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* @URTW_RIDX_CCK11, align 4
  %184 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %185 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @urtw_preamble_mode, align 4
  %187 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %188 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 8
  %189 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %190 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %191 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %190, i32 0, i32 18
  store %struct.urtw_softc* %189, %struct.urtw_softc** %191, align 8
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @device_get_nameunit(i32 %192)
  %194 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %195 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %194, i32 0, i32 17
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %197 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %198 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %197, i32 0, i32 16
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* @IEEE80211_M_STA, align 4
  %200 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %201 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %200, i32 0, i32 15
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @IEEE80211_C_STA, align 4
  %203 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @IEEE80211_C_TXPMGT, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @IEEE80211_C_BGSCAN, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @IEEE80211_C_WPA, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %216 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %218 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %219 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %220 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %219, i32 0, i32 14
  %221 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %222 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %221, i32 0, i32 13
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @urtw_getradiocaps(%struct.ieee80211com* %217, i32 %218, i32* %220, i32 %223)
  %225 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %226 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %225)
  %227 = load i32, i32* @urtw_raw_xmit, align 4
  %228 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %229 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %228, i32 0, i32 12
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @urtw_scan_start, align 4
  %231 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %232 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %231, i32 0, i32 11
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* @urtw_scan_end, align 4
  %234 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %235 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %234, i32 0, i32 10
  store i32 %233, i32* %235, align 8
  %236 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %237 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %236, i32 0, i32 9
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @urtw_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %237, align 8
  %238 = load i32, i32* @urtw_set_channel, align 4
  %239 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %240 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %239, i32 0, i32 8
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @urtw_updateslot, align 4
  %242 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %243 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %242, i32 0, i32 7
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* @urtw_vap_create, align 4
  %245 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %246 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %245, i32 0, i32 6
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* @urtw_vap_delete, align 4
  %248 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %249 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* @urtw_update_promisc, align 4
  %251 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %252 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* @urtw_update_mcast, align 4
  %254 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %255 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* @urtw_parent, align 4
  %257 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %258 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load i32, i32* @urtw_transmit, align 4
  %260 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %261 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  %262 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %263 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %264 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i32, i32* @URTW_TX_RADIOTAP_PRESENT, align 4
  %267 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %268 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i32, i32* @URTW_RX_RADIOTAP_PRESENT, align 4
  %271 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %262, i32* %265, i32 4, i32 %266, i32* %269, i32 4, i32 %270)
  %272 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %273 = call i32 @urtw_sysctl_node(%struct.urtw_softc* %272)
  %274 = load i64, i64* @bootverbose, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %174
  %277 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %278 = call i32 @ieee80211_announce(%struct.ieee80211com* %277)
  br label %279

279:                                              ; preds = %276, %174
  store i32 0, i32* %2, align 4
  br label %301

280:                                              ; preds = %173, %167, %161, %155
  %281 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %282 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %281)
  %283 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %284 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.urtw_softc*, %struct.urtw_softc** %6, align 8
  %287 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @URTW_RTL8187B, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %280
  %293 = load i32, i32* @URTW_8187B_N_XFERS, align 4
  br label %296

294:                                              ; preds = %280
  %295 = load i32, i32* @URTW_8187L_N_XFERS, align 4
  br label %296

296:                                              ; preds = %294, %292
  %297 = phi i32 [ %293, %292 ], [ %295, %294 ]
  %298 = call i32 @usbd_transfer_unsetup(i32* %285, i32 %297)
  br label %299

299:                                              ; preds = %296, %100
  %300 = load i32, i32* %5, align 4
  store i32 %300, i32* %2, align 4
  br label %301

301:                                              ; preds = %299, %279
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local %struct.urtw_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.urtw_softc*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32*, %struct.usb_config*, i32, %struct.urtw_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i8* @usbd_xfer_get_frame_buffer(i32, i32) #1

declare dso_local i32 @URTW_LOCK(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_read32_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i64 @urtw_get_rfchip(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_get_macaddr(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_get_txpwr(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_led_init(%struct.urtw_softc*) #1

declare dso_local i32 @URTW_UNLOCK(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @urtw_sysctl_node(%struct.urtw_softc*) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
