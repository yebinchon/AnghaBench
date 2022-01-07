; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.zyd_softc = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.zyd_softc* }

@.str = private unnamed_addr constant [57 x i8] c"device version mismatch: 0x%X (only >= 43.30 supported)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@ZYD_IFACE_INDEX = common dso_local global i32 0, align 4
@zyd_config = common dso_local global i32 0, align 4
@ZYD_N_TRANSFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"could not allocate USB transfers, err=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"could not read EEPROM\0A\00", align 1
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@zyd_raw_xmit = common dso_local global i32 0, align 4
@zyd_scan_start = common dso_local global i32 0, align 4
@zyd_scan_end = common dso_local global i32 0, align 4
@zyd_set_channel = common dso_local global i32 0, align 4
@zyd_vap_create = common dso_local global i32 0, align 4
@zyd_vap_delete = common dso_local global i32 0, align 4
@zyd_update_mcast = common dso_local global i8* null, align 8
@zyd_parent = common dso_local global i32 0, align 4
@zyd_transmit = common dso_local global i32 0, align 4
@ZYD_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@ZYD_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @zyd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.zyd_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.zyd_softc* @device_get_softc(i32 %11)
  store %struct.zyd_softc* %12, %struct.zyd_softc** %5, align 8
  %13 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %14 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %13, i32 0, i32 9
  store %struct.ieee80211com* %14, %struct.ieee80211com** %6, align 8
  %15 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %16 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 17200
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %23 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %2, align 4
  br label %183

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_set_usb_desc(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %33 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %35 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %38 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %40 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %39)
  %41 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %42 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %44 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %43, i32 0, i32 3
  %45 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %46 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @device_get_nameunit(i32 %47)
  %49 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %50 = load i32, i32* @MTX_DEF, align 4
  %51 = call i32 @mtx_init(i32* %44, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %53 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %52, i32 0, i32 6
  %54 = call i32 @STAILQ_INIT(i32* %53)
  %55 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %56 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %55, i32 0, i32 5
  %57 = load i32, i32* @ifqmaxlen, align 4
  %58 = call i32 @mbufq_init(i32* %56, i32 %57)
  %59 = load i32, i32* @ZYD_IFACE_INDEX, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %61 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %64 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @zyd_config, align 4
  %67 = load i32, i32* @ZYD_N_TRANSFER, align 4
  %68 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %69 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %70 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %69, i32 0, i32 3
  %71 = call i32 @usbd_transfer_setup(i32 %62, i32* %7, i32 %65, i32 %66, i32 %67, %struct.zyd_softc* %68, i32* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %28
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @usbd_errstr(i32 %76)
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %179

79:                                               ; preds = %28
  %80 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %81 = call i32 @ZYD_LOCK(%struct.zyd_softc* %80)
  %82 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %83 = call i32 @zyd_get_macaddr(%struct.zyd_softc* %82)
  store i32 %83, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %87 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %91 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %90)
  br label %179

92:                                               ; preds = %79
  %93 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %94 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %93)
  %95 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %96 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %97 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %96, i32 0, i32 17
  store %struct.zyd_softc* %95, %struct.zyd_softc** %97, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @device_get_nameunit(i32 %98)
  %100 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %101 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %100, i32 0, i32 16
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %103 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %103, i32 0, i32 15
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @IEEE80211_M_STA, align 4
  %106 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %107 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %106, i32 0, i32 14
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @IEEE80211_C_STA, align 4
  %109 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @IEEE80211_C_BGSCAN, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @IEEE80211_C_WPA, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %120 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %122 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %123 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %124 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %123, i32 0, i32 13
  %125 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %126 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @zyd_getradiocaps(%struct.ieee80211com* %121, i32 %122, i32* %124, i32 %127)
  %129 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %130 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %129)
  %131 = load i32, i32* @zyd_raw_xmit, align 4
  %132 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %133 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %132, i32 0, i32 11
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @zyd_scan_start, align 4
  %135 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %136 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %135, i32 0, i32 10
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @zyd_scan_end, align 4
  %138 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %139 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %138, i32 0, i32 9
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %141 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %140, i32 0, i32 8
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @zyd_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %141, align 8
  %142 = load i32, i32* @zyd_set_channel, align 4
  %143 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %144 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @zyd_vap_create, align 4
  %146 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %147 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @zyd_vap_delete, align 4
  %149 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %150 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load i8*, i8** @zyd_update_mcast, align 8
  %152 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %153 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %152, i32 0, i32 4
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @zyd_update_mcast, align 8
  %155 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %156 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* @zyd_parent, align 4
  %158 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %159 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @zyd_transmit, align 4
  %161 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %162 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %164 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %165 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* @ZYD_TX_RADIOTAP_PRESENT, align 4
  %168 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %169 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* @ZYD_RX_RADIOTAP_PRESENT, align 4
  %172 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %163, i32* %166, i32 4, i32 %167, i32* %170, i32 4, i32 %171)
  %173 = load i64, i64* @bootverbose, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %92
  %176 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %177 = call i32 @ieee80211_announce(%struct.ieee80211com* %176)
  br label %178

178:                                              ; preds = %175, %92
  store i32 0, i32* %2, align 4
  br label %183

179:                                              ; preds = %85, %74
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @zyd_detach(i32 %180)
  %182 = load i32, i32* @ENXIO, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %179, %178, %20
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.zyd_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.zyd_softc*, i32*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @ZYD_LOCK(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_get_macaddr(%struct.zyd_softc*) #1

declare dso_local i32 @ZYD_UNLOCK(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @zyd_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
