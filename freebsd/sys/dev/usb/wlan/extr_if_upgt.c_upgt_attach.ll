; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i64, i64, i64, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.upgt_softc* }
%struct.usb_attach_arg = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@UPGT_IFACE_INDEX = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@upgt_config = common dso_local global i32 0, align 4
@UPGT_N_XFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not allocate USB transfers, err=%s\0A\00", align 1
@UPGT_BULK_RX = common dso_local global i64 0, align 8
@UPGT_BULK_TX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"could not find memory space addresses on FW\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@UPGT_MEMSIZE_RX = common dso_local global i64 0, align 8
@UPGT_DEBUG_FW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"memory address frame start=0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"memory address frame end=0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"memory address rx start=0x%08x\0A\00", align 1
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@upgt_raw_xmit = common dso_local global i32 0, align 4
@upgt_scan_start = common dso_local global i32 0, align 4
@upgt_scan_end = common dso_local global i32 0, align 4
@upgt_set_channel = common dso_local global i32 0, align 4
@upgt_vap_create = common dso_local global i32 0, align 4
@upgt_vap_delete = common dso_local global i32 0, align 4
@upgt_update_mcast = common dso_local global i32 0, align 4
@upgt_transmit = common dso_local global i32 0, align 4
@upgt_parent = common dso_local global i32 0, align 4
@UPGT_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@UPGT_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@upgt_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @upgt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.upgt_softc*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.usb_attach_arg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.upgt_softc* @device_get_softc(i32 %12)
  store %struct.upgt_softc* %13, %struct.upgt_softc** %4, align 8
  %14 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %15 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %14, i32 0, i32 15
  store %struct.ieee80211com* %15, %struct.ieee80211com** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.usb_attach_arg* @device_get_ivars(i32 %16)
  store %struct.usb_attach_arg* %17, %struct.usb_attach_arg** %6, align 8
  %18 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @UPGT_IFACE_INDEX, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %25 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %30 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %29, i32 0, i32 14
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_set_usb_desc(i32 %31)
  %33 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %34 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %33, i32 0, i32 3
  %35 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %36 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_get_nameunit(i32 %37)
  %39 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %40 = load i32, i32* @MTX_DEF, align 4
  %41 = call i32 @mtx_init(i32* %34, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %43 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %42, i32 0, i32 11
  %44 = call i32 @callout_init(i32* %43, i32 0)
  %45 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %46 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %45, i32 0, i32 10
  %47 = call i32 @callout_init(i32* %46, i32 0)
  %48 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %49 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %48, i32 0, i32 9
  %50 = load i32, i32* @ifqmaxlen, align 4
  %51 = call i32 @mbufq_init(i32* %49, i32 %50)
  %52 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %53 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %56 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @upgt_config, align 4
  %59 = load i32, i32* @UPGT_N_XFERS, align 4
  %60 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %61 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %62 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %61, i32 0, i32 3
  %63 = call i32 @usbd_transfer_setup(i32 %54, i32* %9, i32* %57, i32 %58, i32 %59, %struct.upgt_softc* %60, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %1
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @usbd_errstr(i32 %68)
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %274

71:                                               ; preds = %1
  %72 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %73 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @UPGT_BULK_RX, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @usbd_xfer_get_frame_buffer(i32 %77, i32 0)
  %79 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %80 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %82 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @UPGT_BULK_TX, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @usbd_xfer_get_frame_buffer(i32 %86, i32 0)
  %88 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %89 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  %90 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %91 = call i32 @upgt_alloc_tx(%struct.upgt_softc* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %71
  br label %268

95:                                               ; preds = %71
  %96 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %97 = call i32 @upgt_alloc_rx(%struct.upgt_softc* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %265

101:                                              ; preds = %95
  %102 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %103 = call i32 @upgt_device_reset(%struct.upgt_softc* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %262

107:                                              ; preds = %101
  %108 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %109 = call i32 @upgt_fw_verify(%struct.upgt_softc* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %262

113:                                              ; preds = %107
  %114 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %115 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %120 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118, %113
  %124 = load i32, i32* %3, align 4
  %125 = call i32 (i32, i8*, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @EIO, align 4
  store i32 %126, i32* %10, align 4
  br label %262

127:                                              ; preds = %118
  %128 = load i64, i64* @UPGT_MEMSIZE_RX, align 8
  %129 = add nsw i64 %128, 1
  %130 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %131 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %135 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  %138 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %139 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %141 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %142 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %143 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @DPRINTF(%struct.upgt_softc* %140, i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %144)
  %146 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %147 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %148 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %149 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @DPRINTF(%struct.upgt_softc* %146, i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %150)
  %152 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %153 = load i32, i32* @UPGT_DEBUG_FW, align 4
  %154 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %155 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @DPRINTF(%struct.upgt_softc* %152, i32 %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %156)
  %158 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %159 = call i32 @upgt_mem_init(%struct.upgt_softc* %158)
  %160 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %161 = call i32 @upgt_fw_load(%struct.upgt_softc* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %127
  br label %262

165:                                              ; preds = %127
  %166 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %167 = call i32 @upgt_eeprom_read(%struct.upgt_softc* %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %262

171:                                              ; preds = %165
  %172 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %173 = call i32 @upgt_eeprom_parse(%struct.upgt_softc* %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %262

177:                                              ; preds = %171
  %178 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %179 = call i32 @upgt_abort_xfers(%struct.upgt_softc* %178)
  %180 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %181 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %182 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %181, i32 0, i32 13
  store %struct.upgt_softc* %180, %struct.upgt_softc** %182, align 8
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @device_get_nameunit(i32 %183)
  %185 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %186 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %185, i32 0, i32 12
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %188 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %189 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %188, i32 0, i32 11
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @IEEE80211_M_STA, align 4
  %191 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %192 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %191, i32 0, i32 10
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* @IEEE80211_C_STA, align 4
  %194 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @IEEE80211_C_BGSCAN, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @IEEE80211_C_WPA, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %205 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = mul nuw i64 4, %19
  %207 = trunc i64 %206 to i32
  %208 = call i32 @memset(i32* %21, i32 0, i32 %207)
  %209 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %210 = call i32 @setbit(i32* %21, i32 %209)
  %211 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %212 = call i32 @setbit(i32* %21, i32 %211)
  %213 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %214 = call i32 @ieee80211_init_channels(%struct.ieee80211com* %213, i32* null, i32* %21)
  %215 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %216 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %215)
  %217 = load i32, i32* @upgt_raw_xmit, align 4
  %218 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %219 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %218, i32 0, i32 9
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @upgt_scan_start, align 4
  %221 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %222 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %221, i32 0, i32 8
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* @upgt_scan_end, align 4
  %224 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %225 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %224, i32 0, i32 7
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @upgt_set_channel, align 4
  %227 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %228 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %227, i32 0, i32 6
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* @upgt_vap_create, align 4
  %230 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %231 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %230, i32 0, i32 5
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @upgt_vap_delete, align 4
  %233 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %234 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* @upgt_update_mcast, align 4
  %236 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %237 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @upgt_transmit, align 4
  %239 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %240 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @upgt_parent, align 4
  %242 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %243 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  %244 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %245 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %246 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %245, i32 0, i32 6
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i32, i32* @UPGT_TX_RADIOTAP_PRESENT, align 4
  %249 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %250 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %249, i32 0, i32 5
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32, i32* @UPGT_RX_RADIOTAP_PRESENT, align 4
  %253 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %244, i32* %247, i32 4, i32 %248, i32* %251, i32 4, i32 %252)
  %254 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %255 = call i32 @upgt_sysctl_node(%struct.upgt_softc* %254)
  %256 = load i64, i64* @bootverbose, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %177
  %259 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %260 = call i32 @ieee80211_announce(%struct.ieee80211com* %259)
  br label %261

261:                                              ; preds = %258, %177
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %279

262:                                              ; preds = %176, %170, %164, %123, %112, %106
  %263 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %264 = call i32 @upgt_free_rx(%struct.upgt_softc* %263)
  br label %265

265:                                              ; preds = %262, %100
  %266 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %267 = call i32 @upgt_free_tx(%struct.upgt_softc* %266)
  br label %268

268:                                              ; preds = %265, %94
  %269 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %270 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %269, i32 0, i32 4
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* @UPGT_N_XFERS, align 4
  %273 = call i32 @usbd_transfer_unsetup(i32* %271, i32 %272)
  br label %274

274:                                              ; preds = %268, %66
  %275 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %276 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %275, i32 0, i32 3
  %277 = call i32 @mtx_destroy(i32* %276)
  %278 = load i32, i32* %10, align 4
  store i32 %278, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %279

279:                                              ; preds = %274, %261
  %280 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %280)
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local %struct.upgt_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.upgt_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i8* @usbd_xfer_get_frame_buffer(i32, i32) #1

declare dso_local i32 @upgt_alloc_tx(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_alloc_rx(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_device_reset(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_fw_verify(%struct.upgt_softc*) #1

declare dso_local i32 @DPRINTF(%struct.upgt_softc*, i32, i8*, i64) #1

declare dso_local i32 @upgt_mem_init(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_fw_load(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_eeprom_read(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_eeprom_parse(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_abort_xfers(%struct.upgt_softc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i32 @ieee80211_init_channels(%struct.ieee80211com*, i32*, i32*) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @upgt_sysctl_node(%struct.upgt_softc*) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @upgt_free_rx(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_free_tx(%struct.upgt_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
