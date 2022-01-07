; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32*, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.uath_softc*, i32 }
%struct.usb_attach_arg = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@UATH_IFACE_INDEX = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@uath_usbconfig = common dso_local global i32 0, align 4
@UATH_N_XFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not allocate USB transfers, err=%s\0A\00", align 1
@UATH_INTR_TX = common dso_local global i64 0, align 8
@UATH_BULK_TX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"could not allocate Tx command list\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not initialize adapter\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"could not get device capabilities\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not get device status\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"could not allocate Rx data list\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"could not allocate Tx data list\0A\00", align 1
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_TXPMGT = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_C_TXFRAG = common dso_local global i32 0, align 4
@uath_regdomain = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@uath_raw_xmit = common dso_local global i32 0, align 4
@uath_scan_start = common dso_local global i32 0, align 4
@uath_scan_end = common dso_local global i32 0, align 4
@uath_set_channel = common dso_local global i32 0, align 4
@uath_vap_create = common dso_local global i32 0, align 4
@uath_vap_delete = common dso_local global i32 0, align 4
@uath_update_mcast = common dso_local global i32 0, align 4
@uath_update_promisc = common dso_local global i32 0, align 4
@uath_transmit = common dso_local global i32 0, align 4
@uath_parent = common dso_local global i32 0, align 4
@UATH_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@UATH_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@uath_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uath_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uath_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.uath_softc* @device_get_softc(i32 %12)
  store %struct.uath_softc* %13, %struct.uath_softc** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.usb_attach_arg* @device_get_ivars(i32 %14)
  store %struct.usb_attach_arg* %15, %struct.usb_attach_arg** %5, align 8
  %16 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %17 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %16, i32 0, i32 14
  store %struct.ieee80211com* %17, %struct.ieee80211com** %6, align 8
  %18 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @UATH_IFACE_INDEX, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %25 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %30 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %29, i32 0, i32 13
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_set_usb_desc(i32 %31)
  %33 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %34 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %33, i32 0, i32 8
  %35 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %36 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_get_nameunit(i32 %37)
  %39 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %40 = load i32, i32* @MTX_DEF, align 4
  %41 = call i32 @mtx_init(i32* %34, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %43 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %42, i32 0, i32 11
  %44 = call i32 @callout_init(i32* %43, i32 0)
  %45 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %46 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %45, i32 0, i32 10
  %47 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %48 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %47, i32 0, i32 8
  %49 = call i32 @callout_init_mtx(i32* %46, i32* %48, i32 0)
  %50 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %51 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %50, i32 0, i32 9
  %52 = load i32, i32* @ifqmaxlen, align 4
  %53 = call i32 @mbufq_init(i32* %51, i32 %52)
  %54 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %55 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %58 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @uath_usbconfig, align 4
  %61 = load i32, i32* @UATH_N_XFERS, align 4
  %62 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %63 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %64 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %63, i32 0, i32 8
  %65 = call i64 @usbd_transfer_setup(i32 %56, i32* %9, i32* %59, i32 %60, i32 %61, %struct.uath_softc* %62, i32* %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %1
  %69 = load i32, i32* %3, align 4
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @usbd_errstr(i64 %70)
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %283

73:                                               ; preds = %1
  %74 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %75 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @UATH_INTR_TX, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @usbd_xfer_get_frame_buffer(i32 %79, i32 0)
  %81 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %82 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %84 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @UATH_BULK_TX, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @usbd_xfer_get_frame_buffer(i32 %88, i32 0)
  %90 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %91 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %93 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %94 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @uath_alloc_cmd_list(%struct.uath_softc* %92, i32 %95)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %73
  %100 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %101 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @device_printf(i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %277

104:                                              ; preds = %73
  %105 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %106 = call i32 @UATH_LOCK(%struct.uath_softc* %105)
  %107 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %108 = call i64 @uath_host_available(%struct.uath_softc* %107)
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %113 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %269

116:                                              ; preds = %104
  %117 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %118 = call i64 @uath_get_devcap(%struct.uath_softc* %117)
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* %10, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %123 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %269

126:                                              ; preds = %116
  %127 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %128 = call i32 @UATH_UNLOCK(%struct.uath_softc* %127)
  %129 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %130 = call i32 @uath_sysctl_node(%struct.uath_softc* %129)
  %131 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %132 = call i32 @UATH_LOCK(%struct.uath_softc* %131)
  %133 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %134 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %135 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %134, i32 0, i32 15
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @uath_get_devstatus(%struct.uath_softc* %133, i32 %136)
  store i64 %137, i64* %10, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %126
  %141 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %142 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %269

145:                                              ; preds = %126
  %146 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %147 = call i64 @uath_alloc_rx_data_list(%struct.uath_softc* %146)
  store i64 %147, i64* %10, align 8
  %148 = load i64, i64* %10, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %152 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %269

155:                                              ; preds = %145
  %156 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %157 = call i64 @uath_alloc_tx_data_list(%struct.uath_softc* %156)
  store i64 %157, i64* %10, align 8
  %158 = load i64, i64* %10, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %162 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @device_printf(i32 %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %269

165:                                              ; preds = %155
  %166 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %167 = call i32 @UATH_UNLOCK(%struct.uath_softc* %166)
  %168 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %169 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %170 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %169, i32 0, i32 14
  store %struct.uath_softc* %168, %struct.uath_softc** %170, align 8
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @device_get_nameunit(i32 %171)
  %173 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %174 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %173, i32 0, i32 13
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %176 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %177 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %176, i32 0, i32 12
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @IEEE80211_M_STA, align 4
  %179 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %180 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %179, i32 0, i32 11
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @IEEE80211_C_STA, align 4
  %182 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @IEEE80211_C_TXPMGT, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @IEEE80211_C_WPA, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @IEEE80211_C_BGSCAN, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @IEEE80211_C_TXFRAG, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %197 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %199 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* @uath_regdomain, align 4
  %202 = mul nuw i64 4, %19
  %203 = trunc i64 %202 to i32
  %204 = call i32 @memset(i32* %21, i32 0, i32 %203)
  %205 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %206 = call i32 @setbit(i32* %21, i32 %205)
  %207 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %208 = call i32 @setbit(i32* %21, i32 %207)
  %209 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %210 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 240
  %214 = icmp eq i32 %213, 48
  br i1 %214, label %215, label %218

215:                                              ; preds = %165
  %216 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %217 = call i32 @setbit(i32* %21, i32 %216)
  br label %218

218:                                              ; preds = %215, %165
  %219 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %220 = call i32 @ieee80211_init_channels(%struct.ieee80211com* %219, i32* null, i32* %21)
  %221 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %222 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %221)
  %223 = load i32, i32* @uath_raw_xmit, align 4
  %224 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %225 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %224, i32 0, i32 10
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* @uath_scan_start, align 4
  %227 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %228 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %227, i32 0, i32 9
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* @uath_scan_end, align 4
  %230 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %231 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %230, i32 0, i32 8
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* @uath_set_channel, align 4
  %233 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %234 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %233, i32 0, i32 7
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @uath_vap_create, align 4
  %236 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %237 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %236, i32 0, i32 6
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* @uath_vap_delete, align 4
  %239 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %240 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* @uath_update_mcast, align 4
  %242 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %243 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %242, i32 0, i32 4
  store i32 %241, i32* %243, align 8
  %244 = load i32, i32* @uath_update_promisc, align 4
  %245 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %246 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* @uath_transmit, align 4
  %248 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %249 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 8
  %250 = load i32, i32* @uath_parent, align 4
  %251 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %252 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  %253 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %254 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %255 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = load i32, i32* @UATH_TX_RADIOTAP_PRESENT, align 4
  %258 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %259 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i32, i32* @UATH_RX_RADIOTAP_PRESENT, align 4
  %262 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %253, i32* %256, i32 4, i32 %257, i32* %260, i32 4, i32 %261)
  %263 = load i64, i64* @bootverbose, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %218
  %266 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %267 = call i32 @ieee80211_announce(%struct.ieee80211com* %266)
  br label %268

268:                                              ; preds = %265, %218
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %286

269:                                              ; preds = %160, %150, %140, %121, %111
  %270 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %271 = call i32 @UATH_UNLOCK(%struct.uath_softc* %270)
  %272 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %273 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %274 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @uath_free_cmd_list(%struct.uath_softc* %272, i32 %275)
  br label %277

277:                                              ; preds = %269, %99
  %278 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %279 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* @UATH_N_XFERS, align 4
  %282 = call i32 @usbd_transfer_unsetup(i32* %280, i32 %281)
  br label %283

283:                                              ; preds = %277, %68
  %284 = load i64, i64* %10, align 8
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %286

286:                                              ; preds = %283, %268
  %287 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %287)
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.uath_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.uath_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i8* @usbd_xfer_get_frame_buffer(i32, i32) #1

declare dso_local i64 @uath_alloc_cmd_list(%struct.uath_softc*, i32) #1

declare dso_local i32 @UATH_LOCK(%struct.uath_softc*) #1

declare dso_local i64 @uath_host_available(%struct.uath_softc*) #1

declare dso_local i64 @uath_get_devcap(%struct.uath_softc*) #1

declare dso_local i32 @UATH_UNLOCK(%struct.uath_softc*) #1

declare dso_local i32 @uath_sysctl_node(%struct.uath_softc*) #1

declare dso_local i64 @uath_get_devstatus(%struct.uath_softc*, i32) #1

declare dso_local i64 @uath_alloc_rx_data_list(%struct.uath_softc*) #1

declare dso_local i64 @uath_alloc_tx_data_list(%struct.uath_softc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i32 @ieee80211_init_channels(%struct.ieee80211com*, i32*, i32*) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @uath_free_cmd_list(%struct.uath_softc*, i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
