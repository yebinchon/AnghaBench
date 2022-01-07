; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.ural_softc = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32 (%struct.ieee80211com*, i32, i32*, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ural_softc* }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@RAL_IFACE_INDEX = common dso_local global i32 0, align 4
@ural_config = common dso_local global i32 0, align 4
@URAL_N_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not allocate USB transfers, err=%s\0A\00", align 1
@RAL_MAC_CSR0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"MAC/BBP RT2570 (rev 0x%02x), RF %s\0A\00", align 1
@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_IBSS = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_HOSTAP = common dso_local global i32 0, align 4
@IEEE80211_C_TXPMGT = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_CHAN_MAX = common dso_local global i32 0, align 4
@ural_update_promisc = common dso_local global i32 0, align 4
@ural_raw_xmit = common dso_local global i32 0, align 4
@ural_scan_start = common dso_local global i32 0, align 4
@ural_scan_end = common dso_local global i32 0, align 4
@ural_set_channel = common dso_local global i32 0, align 4
@ural_parent = common dso_local global i32 0, align 4
@ural_transmit = common dso_local global i32 0, align 4
@ural_vap_create = common dso_local global i32 0, align 4
@ural_vap_delete = common dso_local global i32 0, align 4
@RAL_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@RAL_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ural_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ural_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ural_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ural_softc* @device_get_softc(i32 %11)
  store %struct.ural_softc* %12, %struct.ural_softc** %5, align 8
  %13 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %14 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %13, i32 0, i32 9
  store %struct.ieee80211com* %14, %struct.ieee80211com** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_set_usb_desc(i32 %15)
  %17 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %18 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %25, i32 0, i32 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_nameunit(i32 %27)
  %29 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %30 = load i32, i32* @MTX_DEF, align 4
  %31 = call i32 @mtx_init(i32* %26, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %32, i32 0, i32 6
  %34 = load i32, i32* @ifqmaxlen, align 4
  %35 = call i32 @mbufq_init(i32* %33, i32 %34)
  %36 = load i32, i32* @RAL_IFACE_INDEX, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %38 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %41 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ural_config, align 4
  %44 = load i32, i32* @URAL_N_TRANSFER, align 4
  %45 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %46 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %47 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %46, i32 0, i32 4
  %48 = call i32 @usbd_transfer_setup(i32 %39, i32* %7, i32 %42, i32 %43, i32 %44, %struct.ural_softc* %45, i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @usbd_errstr(i32 %53)
  %55 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %161

56:                                               ; preds = %1
  %57 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %58 = call i32 @RAL_LOCK(%struct.ural_softc* %57)
  %59 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %60 = load i32, i32* @RAL_MAC_CSR0, align 4
  %61 = call i32 @ural_read(%struct.ural_softc* %59, i32 %60)
  %62 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %65 = call i32 @ural_read_eeprom(%struct.ural_softc* %64)
  %66 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %67 = call i32 @RAL_UNLOCK(%struct.ural_softc* %66)
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %70 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %73 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ural_get_rf(i32 %74)
  %76 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %78 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %78, i32 0, i32 15
  store %struct.ural_softc* %77, %struct.ural_softc** %79, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_get_nameunit(i32 %80)
  %82 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %82, i32 0, i32 14
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %85 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %85, i32 0, i32 13
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @IEEE80211_C_STA, align 4
  %88 = load i32, i32* @IEEE80211_C_IBSS, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IEEE80211_C_HOSTAP, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @IEEE80211_C_TXPMGT, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @IEEE80211_C_BGSCAN, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @IEEE80211_C_WPA, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %105 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %107 = load i32, i32* @IEEE80211_CHAN_MAX, align 4
  %108 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %109 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %108, i32 0, i32 12
  %110 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %111 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ural_getradiocaps(%struct.ieee80211com* %106, i32 %107, i32* %109, i32 %112)
  %114 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %115 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %114)
  %116 = load i32, i32* @ural_update_promisc, align 4
  %117 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %118 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %117, i32 0, i32 10
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @ural_raw_xmit, align 4
  %120 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %121 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @ural_scan_start, align 4
  %123 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %124 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %123, i32 0, i32 8
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @ural_scan_end, align 4
  %126 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %127 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %129 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %128, i32 0, i32 6
  store i32 (%struct.ieee80211com*, i32, i32*, i32)* @ural_getradiocaps, i32 (%struct.ieee80211com*, i32, i32*, i32)** %129, align 8
  %130 = load i32, i32* @ural_set_channel, align 4
  %131 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %132 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @ural_parent, align 4
  %134 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %135 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @ural_transmit, align 4
  %137 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %138 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @ural_vap_create, align 4
  %140 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %141 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* @ural_vap_delete, align 4
  %143 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %144 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %146 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %147 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* @RAL_TX_RADIOTAP_PRESENT, align 4
  %150 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %151 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* @RAL_RX_RADIOTAP_PRESENT, align 4
  %154 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %145, i32* %148, i32 4, i32 %149, i32* %152, i32 4, i32 %153)
  %155 = load i64, i64* @bootverbose, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %56
  %158 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %159 = call i32 @ieee80211_announce(%struct.ieee80211com* %158)
  br label %160

160:                                              ; preds = %157, %56
  store i32 0, i32* %2, align 4
  br label %165

161:                                              ; preds = %51
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @ural_detach(i32 %162)
  %164 = load i32, i32* @ENXIO, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %161, %160
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ural_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.ural_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @RAL_LOCK(%struct.ural_softc*) #1

declare dso_local i32 @ural_read(%struct.ural_softc*, i32) #1

declare dso_local i32 @ural_read_eeprom(%struct.ural_softc*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.ural_softc*) #1

declare dso_local i32 @ural_get_rf(i32) #1

declare dso_local i32 @ural_getradiocaps(%struct.ieee80211com*, i32, i32*, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

declare dso_local i32 @ural_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
