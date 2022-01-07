; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ural_softc = type { i32, i32, %struct.ural_tx_radiotap_header, i32 }
%struct.ural_tx_radiotap_header = type { i32, i32, i32 }
%struct.ieee80211vap = type { i32 }
%struct.ural_tx_data = type { i32, %struct.TYPE_3__*, i32, %struct.mbuf* }
%struct.TYPE_3__ = type { %struct.ieee80211vap* }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"transfer complete, %d bytes\0A\00", align 1
@next = common dso_local global i32 0, align 4
@RAL_FRAME_SIZE = common dso_local global i32 0, align 4
@RAL_TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"data overflow, %u bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"sending frame len=%u xferlen=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@USB_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ural_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ural_softc*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.ural_tx_data*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.usb_page_cache*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ural_tx_radiotap_header*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.ural_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.ural_softc* %13, %struct.ural_softc** %5, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @usbd_xfer_status(%struct.usb_xfer* %14, i32* %10, i32* null, i32* null, i32* null)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %137 [
    i32 128, label %18
    i32 129, label %27
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  %20 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call %struct.ural_tx_data* @usbd_xfer_get_priv(%struct.usb_xfer* %21)
  store %struct.ural_tx_data* %22, %struct.ural_tx_data** %7, align 8
  %23 = load %struct.ural_tx_data*, %struct.ural_tx_data** %7, align 8
  %24 = call i32 @ural_tx_free(%struct.ural_tx_data* %23, i32 0)
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %25, %struct.ural_tx_data* null)
  br label %27

27:                                               ; preds = %2, %18
  br label %28

28:                                               ; preds = %155, %27
  %29 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %29, i32 0, i32 3
  %31 = call %struct.ural_tx_data* @STAILQ_FIRST(i32* %30)
  store %struct.ural_tx_data* %31, %struct.ural_tx_data** %7, align 8
  %32 = load %struct.ural_tx_data*, %struct.ural_tx_data** %7, align 8
  %33 = icmp ne %struct.ural_tx_data* %32, null
  br i1 %33, label %34, label %134

34:                                               ; preds = %28
  %35 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %35, i32 0, i32 3
  %37 = load i32, i32* @next, align 4
  %38 = call i32 @STAILQ_REMOVE_HEAD(i32* %36, i32 %37)
  %39 = load %struct.ural_tx_data*, %struct.ural_tx_data** %7, align 8
  %40 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %39, i32 0, i32 3
  %41 = load %struct.mbuf*, %struct.mbuf** %40, align 8
  store %struct.mbuf* %41, %struct.mbuf** %8, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RAL_FRAME_SIZE, align 4
  %47 = load i32, i32* @RAL_TX_DESC_SIZE, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %34
  %51 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @RAL_FRAME_SIZE, align 4
  %57 = load i32, i32* @RAL_TX_DESC_SIZE, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %50, %34
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %63, i32 0)
  store %struct.usb_page_cache* %64, %struct.usb_page_cache** %9, align 8
  %65 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %66 = load %struct.ural_tx_data*, %struct.ural_tx_data** %7, align 8
  %67 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %66, i32 0, i32 2
  %68 = load i32, i32* @RAL_TX_DESC_SIZE, align 4
  %69 = call i32 @usbd_copy_in(%struct.usb_page_cache* %65, i32 0, i32* %67, i32 %68)
  %70 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %71 = load i32, i32* @RAL_TX_DESC_SIZE, align 4
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %70, i32 %71, %struct.mbuf* %72, i32 0, i32 %76)
  %78 = load %struct.ural_tx_data*, %struct.ural_tx_data** %7, align 8
  %79 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load %struct.ieee80211vap*, %struct.ieee80211vap** %81, align 8
  store %struct.ieee80211vap* %82, %struct.ieee80211vap** %6, align 8
  %83 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %84 = call i32 @ieee80211_radiotap_active_vap(%struct.ieee80211vap* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %62
  %87 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %88 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %87, i32 0, i32 2
  store %struct.ural_tx_radiotap_header* %88, %struct.ural_tx_radiotap_header** %11, align 8
  %89 = load %struct.ural_tx_radiotap_header*, %struct.ural_tx_radiotap_header** %11, align 8
  %90 = getelementptr inbounds %struct.ural_tx_radiotap_header, %struct.ural_tx_radiotap_header* %89, i32 0, i32 2
  store i32 0, i32* %90, align 4
  %91 = load %struct.ural_tx_data*, %struct.ural_tx_data** %7, align 8
  %92 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ural_tx_radiotap_header*, %struct.ural_tx_radiotap_header** %11, align 8
  %95 = getelementptr inbounds %struct.ural_tx_radiotap_header, %struct.ural_tx_radiotap_header* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %97 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ural_tx_radiotap_header*, %struct.ural_tx_radiotap_header** %11, align 8
  %100 = getelementptr inbounds %struct.ural_tx_radiotap_header, %struct.ural_tx_radiotap_header* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %103 = call i32 @ieee80211_radiotap_tx(%struct.ieee80211vap* %101, %struct.mbuf* %102)
  br label %104

104:                                              ; preds = %86, %62
  %105 = load i32, i32* @RAL_TX_DESC_SIZE, align 4
  %106 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %105, %109
  %111 = add nsw i32 %110, 1
  %112 = and i32 %111, -2
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = srem i32 %113, 64
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %116, %104
  %120 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %126, i32 0, i32 %127)
  %129 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %130 = load %struct.ural_tx_data*, %struct.ural_tx_data** %7, align 8
  %131 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %129, %struct.ural_tx_data* %130)
  %132 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %133 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %132)
  br label %134

134:                                              ; preds = %119, %28
  %135 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %136 = call i32 @ural_start(%struct.ural_softc* %135)
  br label %168

137:                                              ; preds = %2
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @usbd_errstr(i32 %138)
  %140 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %142 = call %struct.ural_tx_data* @usbd_xfer_get_priv(%struct.usb_xfer* %141)
  store %struct.ural_tx_data* %142, %struct.ural_tx_data** %7, align 8
  %143 = load %struct.ural_tx_data*, %struct.ural_tx_data** %7, align 8
  %144 = icmp ne %struct.ural_tx_data* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.ural_tx_data*, %struct.ural_tx_data** %7, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @ural_tx_free(%struct.ural_tx_data* %146, i32 %147)
  %149 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %150 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %149, %struct.ural_tx_data* null)
  br label %151

151:                                              ; preds = %145, %137
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @USB_ERR_STALLED, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %157 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %156)
  br label %28

158:                                              ; preds = %151
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @USB_ERR_TIMEOUT, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %164 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @device_printf(i32 %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %167

167:                                              ; preds = %162, %158
  br label %168

168:                                              ; preds = %167, %134
  ret void
}

declare dso_local %struct.ural_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, ...) #1

declare dso_local %struct.ural_tx_data* @usbd_xfer_get_priv(%struct.usb_xfer*) #1

declare dso_local i32 @ural_tx_free(%struct.ural_tx_data*, i32) #1

declare dso_local i32 @usbd_xfer_set_priv(%struct.usb_xfer*, %struct.ural_tx_data*) #1

declare dso_local %struct.ural_tx_data* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @ieee80211_radiotap_active_vap(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_radiotap_tx(%struct.ieee80211vap*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @ural_start(%struct.ural_softc*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
