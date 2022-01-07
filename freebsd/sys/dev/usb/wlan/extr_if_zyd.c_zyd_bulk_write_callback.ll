; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.zyd_softc = type { i32, %struct.TYPE_6__, %struct.zyd_tx_radiotap_header, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.zyd_tx_radiotap_header = type { i32, i32 }
%struct.ieee80211vap = type { i32 }
%struct.zyd_tx_data = type { i32, %struct.TYPE_4__*, i32, %struct.mbuf* }
%struct.TYPE_4__ = type { %struct.ieee80211vap* }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_page_cache = type { i32 }

@ZYD_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"transfer complete, %u bytes\0A\00", align 1
@next = common dso_local global i32 0, align 4
@ZYD_MAX_TXBUFSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"data overflow, %u bytes\0A\00", align 1
@ZYD_TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@USB_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @zyd_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zyd_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zyd_softc*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.zyd_tx_data*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.usb_page_cache*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zyd_tx_radiotap_header*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.zyd_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.zyd_softc* %13, %struct.zyd_softc** %5, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @usbd_xfer_status(%struct.usb_xfer* %14, i32* %10, i32* null, i32* null, i32* null)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %116 [
    i32 128, label %18
    i32 129, label %29
  ]

18:                                               ; preds = %2
  %19 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %20 = load i32, i32* @ZYD_DEBUG_ANY, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @DPRINTF(%struct.zyd_softc* %19, i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = call %struct.zyd_tx_data* @usbd_xfer_get_priv(%struct.usb_xfer* %23)
  store %struct.zyd_tx_data* %24, %struct.zyd_tx_data** %7, align 8
  %25 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %7, align 8
  %26 = call i32 @zyd_tx_free(%struct.zyd_tx_data* %25, i32 0)
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %27, %struct.zyd_tx_data* null)
  br label %29

29:                                               ; preds = %2, %18
  br label %30

30:                                               ; preds = %150, %29
  %31 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %32 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %31, i32 0, i32 3
  %33 = call %struct.zyd_tx_data* @STAILQ_FIRST(i32* %32)
  store %struct.zyd_tx_data* %33, %struct.zyd_tx_data** %7, align 8
  %34 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %7, align 8
  %35 = icmp ne %struct.zyd_tx_data* %34, null
  br i1 %35, label %36, label %113

36:                                               ; preds = %30
  %37 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %38 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %37, i32 0, i32 3
  %39 = load i32, i32* @next, align 4
  %40 = call i32 @STAILQ_REMOVE_HEAD(i32* %38, i32 %39)
  %41 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %7, align 8
  %42 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %41, i32 0, i32 3
  %43 = load %struct.mbuf*, %struct.mbuf** %42, align 8
  store %struct.mbuf* %43, %struct.mbuf** %8, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ZYD_MAX_TXBUFSZ, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %36
  %51 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %52 = load i32, i32* @ZYD_DEBUG_ANY, align 4
  %53 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DPRINTF(%struct.zyd_softc* %51, i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ZYD_MAX_TXBUFSZ, align 4
  %59 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %50, %36
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %63, i32 0)
  store %struct.usb_page_cache* %64, %struct.usb_page_cache** %9, align 8
  %65 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %66 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %7, align 8
  %67 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %66, i32 0, i32 2
  %68 = load i32, i32* @ZYD_TX_DESC_SIZE, align 4
  %69 = call i32 @usbd_copy_in(%struct.usb_page_cache* %65, i32 0, i32* %67, i32 %68)
  %70 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %71 = load i32, i32* @ZYD_TX_DESC_SIZE, align 4
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %70, i32 %71, %struct.mbuf* %72, i32 0, i32 %76)
  %78 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %7, align 8
  %79 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.ieee80211vap*, %struct.ieee80211vap** %81, align 8
  store %struct.ieee80211vap* %82, %struct.ieee80211vap** %6, align 8
  %83 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %84 = call i32 @ieee80211_radiotap_active_vap(%struct.ieee80211vap* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %62
  %87 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %88 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %87, i32 0, i32 2
  store %struct.zyd_tx_radiotap_header* %88, %struct.zyd_tx_radiotap_header** %11, align 8
  %89 = load %struct.zyd_tx_radiotap_header*, %struct.zyd_tx_radiotap_header** %11, align 8
  %90 = getelementptr inbounds %struct.zyd_tx_radiotap_header, %struct.zyd_tx_radiotap_header* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %7, align 8
  %92 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.zyd_tx_radiotap_header*, %struct.zyd_tx_radiotap_header** %11, align 8
  %95 = getelementptr inbounds %struct.zyd_tx_radiotap_header, %struct.zyd_tx_radiotap_header* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %98 = call i32 @ieee80211_radiotap_tx(%struct.ieee80211vap* %96, %struct.mbuf* %97)
  br label %99

99:                                               ; preds = %86, %62
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %101 = load i32, i32* @ZYD_TX_DESC_SIZE, align 4
  %102 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %103 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %101, %105
  %107 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %100, i32 0, i32 %106)
  %108 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %109 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %7, align 8
  %110 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %108, %struct.zyd_tx_data* %109)
  %111 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %112 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %111)
  br label %113

113:                                              ; preds = %99, %30
  %114 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %115 = call i32 @zyd_start(%struct.zyd_softc* %114)
  br label %154

116:                                              ; preds = %2
  %117 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %118 = load i32, i32* @ZYD_DEBUG_ANY, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @usbd_errstr(i32 %119)
  %121 = call i32 @DPRINTF(%struct.zyd_softc* %117, i32 %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %123 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @counter_u64_add(i32 %125, i32 1)
  %127 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %128 = call %struct.zyd_tx_data* @usbd_xfer_get_priv(%struct.usb_xfer* %127)
  store %struct.zyd_tx_data* %128, %struct.zyd_tx_data** %7, align 8
  %129 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %130 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %129, %struct.zyd_tx_data* null)
  %131 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %7, align 8
  %132 = icmp ne %struct.zyd_tx_data* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %116
  %134 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %7, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @zyd_tx_free(%struct.zyd_tx_data* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %116
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @USB_ERR_TIMEOUT, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %147 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %150

150:                                              ; preds = %145, %141
  %151 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %152 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %151)
  br label %30

153:                                              ; preds = %137
  br label %154

154:                                              ; preds = %153, %113
  ret void
}

declare dso_local %struct.zyd_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(%struct.zyd_softc*, i32, i8*, i32) #1

declare dso_local %struct.zyd_tx_data* @usbd_xfer_get_priv(%struct.usb_xfer*) #1

declare dso_local i32 @zyd_tx_free(%struct.zyd_tx_data*, i32) #1

declare dso_local i32 @usbd_xfer_set_priv(%struct.usb_xfer*, %struct.zyd_tx_data*) #1

declare dso_local %struct.zyd_tx_data* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @ieee80211_radiotap_active_vap(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_radiotap_tx(%struct.ieee80211vap*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @zyd_start(%struct.zyd_softc*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
