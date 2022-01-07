; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.run_softc*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_attach_arg = type { i32 }

@RUN_EJECT = common dso_local global i64 0, align 8
@RUN_FLAG_FWLOAD_NEEDED = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@RT2860_IFACE_INDEX = common dso_local global i32 0, align 4
@run_config = common dso_local global i32 0, align 4
@RUN_N_XFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not allocate USB transfers, err=%s\0A\00", align 1
@RT2860_ASIC_VER_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"timeout waiting for NIC to initialize\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"MAC/BBP RT%04X (rev 0x%04X), RF %s (MIMO %dT%dR), address %s\0A\00", align 1
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_IBSS = common dso_local global i32 0, align 4
@IEEE80211_C_HOSTAP = common dso_local global i32 0, align 4
@IEEE80211_C_WDS = common dso_local global i32 0, align 4
@IEEE80211_C_MBSS = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_WME = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_WEP = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_AES_CCM = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_TKIPMIC = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_TKIP = common dso_local global i32 0, align 4
@IEEE80211_F_DATAPAD = common dso_local global i32 0, align 4
@IEEE80211_FEXT_SWBMISS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@run_scan_start = common dso_local global i32 0, align 4
@run_scan_end = common dso_local global i32 0, align 4
@run_set_channel = common dso_local global i32 0, align 4
@run_node_alloc = common dso_local global i32 0, align 4
@run_newassoc = common dso_local global i32 0, align 4
@run_updateslot = common dso_local global i32 0, align 4
@run_update_mcast = common dso_local global i32 0, align 4
@run_wme_update = common dso_local global i32 0, align 4
@run_raw_xmit = common dso_local global i32 0, align 4
@run_update_promisc = common dso_local global i32 0, align 4
@run_vap_create = common dso_local global i32 0, align 4
@run_vap_delete = common dso_local global i32 0, align 4
@run_transmit = common dso_local global i32 0, align 4
@run_parent = common dso_local global i32 0, align 4
@RUN_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@RUN_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@run_cmdq_cb = common dso_local global i32 0, align 4
@run_ratectl_cb = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @run_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.run_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.run_softc* @device_get_softc(i32 %11)
  store %struct.run_softc* %12, %struct.run_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.usb_attach_arg* @device_get_ivars(i32 %13)
  store %struct.usb_attach_arg* %14, %struct.usb_attach_arg** %5, align 8
  %15 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %16 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %15, i32 0, i32 16
  store %struct.ieee80211com* %16, %struct.ieee80211com** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_set_usb_desc(i32 %17)
  %19 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %20 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %23 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %22, i32 0, i32 15
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %26 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 4
  %27 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %28 = call i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %27)
  %29 = load i64, i64* @RUN_EJECT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @RUN_FLAG_FWLOAD_NEEDED, align 4
  %33 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %34 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %39 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %38, i32 0, i32 2
  %40 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %41 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_get_nameunit(i32 %42)
  %44 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %45 = load i32, i32* @MTX_DEF, align 4
  %46 = call i32 @mtx_init(i32* %39, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %48 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %47, i32 0, i32 13
  %49 = load i32, i32* @ifqmaxlen, align 4
  %50 = call i32 @mbufq_init(i32* %48, i32 %49)
  %51 = load i32, i32* @RT2860_IFACE_INDEX, align 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %53 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %56 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @run_config, align 4
  %59 = load i32, i32* @RUN_N_XFER, align 4
  %60 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %61 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %62 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %61, i32 0, i32 2
  %63 = call i32 @usbd_transfer_setup(i32 %54, i32* %8, i32 %57, i32 %58, i32 %59, %struct.run_softc* %60, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %37
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @usbd_errstr(i32 %68)
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %284

71:                                               ; preds = %37
  %72 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %73 = call i32 @RUN_LOCK(%struct.run_softc* %72)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %95, %71
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 100
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %79 = load i32, i32* @RT2860_ASIC_VER_ID, align 4
  %80 = call i64 @run_read(%struct.run_softc* %78, i32 %79, i32* %7)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %84 = call i32 @RUN_UNLOCK(%struct.run_softc* %83)
  br label %284

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %98

92:                                               ; preds = %88, %85
  %93 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %94 = call i32 @run_delay(%struct.run_softc* %93, i32 10)
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %74

98:                                               ; preds = %91, %74
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 100
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %103 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %107 = call i32 @RUN_UNLOCK(%struct.run_softc* %106)
  br label %284

108:                                              ; preds = %98
  %109 = load i32, i32* %7, align 4
  %110 = ashr i32 %109, 16
  %111 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %112 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, 65535
  %115 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %116 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %118 = call i32 @run_read_eeprom(%struct.run_softc* %117)
  %119 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %120 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %123 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %126 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %129 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @run_get_rf(i32 %130)
  %132 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %133 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %136 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %139 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %138, i32 0, i32 25
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ether_sprintf(i32 %140)
  %142 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %127, i32 %131, i32 %134, i32 %137, i32 %141)
  %143 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %144 = call i32 @RUN_UNLOCK(%struct.run_softc* %143)
  %145 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %146 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %147 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %146, i32 0, i32 24
  store %struct.run_softc* %145, %struct.run_softc** %147, align 8
  %148 = load i32, i32* %3, align 4
  %149 = call i32 @device_get_nameunit(i32 %148)
  %150 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %151 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %150, i32 0, i32 23
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %153 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %154 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %153, i32 0, i32 22
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @IEEE80211_M_STA, align 4
  %156 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %157 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %156, i32 0, i32 21
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @IEEE80211_C_STA, align 4
  %159 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @IEEE80211_C_IBSS, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @IEEE80211_C_HOSTAP, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @IEEE80211_C_WDS, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @IEEE80211_C_MBSS, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @IEEE80211_C_WME, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @IEEE80211_C_WPA, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %178 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @IEEE80211_CRYPTO_WEP, align 4
  %180 = load i32, i32* @IEEE80211_CRYPTO_AES_CCM, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @IEEE80211_CRYPTO_TKIPMIC, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @IEEE80211_CRYPTO_TKIP, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %187 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @IEEE80211_F_DATAPAD, align 4
  %189 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %190 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %189, i32 0, i32 20
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* @IEEE80211_FEXT_SWBMISS, align 4
  %194 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %195 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %194, i32 0, i32 19
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %199 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %200 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %201 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %200, i32 0, i32 18
  %202 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %203 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %202, i32 0, i32 17
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @run_getradiocaps(%struct.ieee80211com* %198, i32 %199, i32* %201, i32 %204)
  %206 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %207 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %206)
  %208 = load i32, i32* @run_scan_start, align 4
  %209 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %210 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %209, i32 0, i32 16
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* @run_scan_end, align 4
  %212 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %213 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %212, i32 0, i32 15
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* @run_set_channel, align 4
  %215 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %216 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %215, i32 0, i32 14
  store i32 %214, i32* %216, align 8
  %217 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %218 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %217, i32 0, i32 13
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @run_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %218, align 8
  %219 = load i32, i32* @run_node_alloc, align 4
  %220 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %221 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %220, i32 0, i32 12
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* @run_newassoc, align 4
  %223 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %224 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %223, i32 0, i32 11
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @run_updateslot, align 4
  %226 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %227 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %226, i32 0, i32 10
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @run_update_mcast, align 4
  %229 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %230 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %229, i32 0, i32 9
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @run_wme_update, align 4
  %232 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %233 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %232, i32 0, i32 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  store i32 %231, i32* %234, align 8
  %235 = load i32, i32* @run_raw_xmit, align 4
  %236 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %237 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %236, i32 0, i32 7
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @run_update_promisc, align 4
  %239 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %240 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %239, i32 0, i32 6
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @run_vap_create, align 4
  %242 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %243 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %242, i32 0, i32 5
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* @run_vap_delete, align 4
  %245 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %246 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* @run_transmit, align 4
  %248 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %249 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* @run_parent, align 4
  %251 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %252 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %254 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %255 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %254, i32 0, i32 7
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = load i32, i32* @RUN_TX_RADIOTAP_PRESENT, align 4
  %258 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %259 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %258, i32 0, i32 6
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i32, i32* @RUN_RX_RADIOTAP_PRESENT, align 4
  %262 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %253, i32* %256, i32 4, i32 %257, i32* %260, i32 4, i32 %261)
  %263 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %264 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %263, i32 0, i32 5
  %265 = load i32, i32* @run_cmdq_cb, align 4
  %266 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %267 = call i32 @TASK_INIT(i32* %264, i32 0, i32 %265, %struct.run_softc* %266)
  %268 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %269 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %268, i32 0, i32 4
  %270 = load i32, i32* @run_ratectl_cb, align 4
  %271 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %272 = call i32 @TASK_INIT(i32* %269, i32 0, i32 %270, %struct.run_softc* %271)
  %273 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %274 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %273, i32 0, i32 3
  %275 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %276 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %275, i32 0, i32 2
  %277 = call i32 @usb_callout_init_mtx(i32* %274, i32* %276, i32 0)
  %278 = load i64, i64* @bootverbose, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %108
  %281 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %282 = call i32 @ieee80211_announce(%struct.ieee80211com* %281)
  br label %283

283:                                              ; preds = %280, %108
  store i32 0, i32* %2, align 4
  br label %288

284:                                              ; preds = %101, %82, %66
  %285 = load i32, i32* %3, align 4
  %286 = call i32 @run_detach(i32 %285)
  %287 = load i32, i32* @ENXIO, align 4
  store i32 %287, i32* %2, align 4
  br label %288

288:                                              ; preds = %284, %283
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local %struct.run_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.run_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i64 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i32 @run_read_eeprom(%struct.run_softc*) #1

declare dso_local i32 @run_get_rf(i32) #1

declare dso_local i32 @ether_sprintf(i32) #1

declare dso_local i32 @run_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.run_softc*) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @run_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
