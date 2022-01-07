; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.rum_softc = type { i32, %struct.TYPE_6__, i32, %struct.rum_tx_radiotap_header, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rum_tx_radiotap_header = type { i32, i32, i32 }
%struct.ieee80211vap = type { i32 }
%struct.rum_tx_data = type { i32, %struct.TYPE_4__*, i32, %struct.mbuf* }
%struct.TYPE_4__ = type { %struct.ieee80211vap* }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"transfer complete, %d bytes\0A\00", align 1
@next = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@RT2573_TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"data overflow, %u bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"sending frame len=%u xferlen=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@USB_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @rum_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rum_softc*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.rum_tx_data*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.usb_page_cache*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rum_tx_radiotap_header*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call %struct.rum_softc* @usbd_xfer_softc(%struct.usb_xfer* %14)
  store %struct.rum_softc* %15, %struct.rum_softc** %5, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @usbd_xfer_status(%struct.usb_xfer* %16, i32* %11, i32* %12, i32* null, i32* null)
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @USB_GET_STATE(%struct.usb_xfer* %18)
  switch i32 %19, label %139 [
    i32 128, label %20
    i32 129, label %29
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %11, align 4
  %22 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = call %struct.rum_tx_data* @usbd_xfer_get_priv(%struct.usb_xfer* %23)
  store %struct.rum_tx_data* %24, %struct.rum_tx_data** %7, align 8
  %25 = load %struct.rum_tx_data*, %struct.rum_tx_data** %7, align 8
  %26 = call i32 @rum_tx_free(%struct.rum_tx_data* %25, i32 0)
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %27, %struct.rum_tx_data* null)
  br label %29

29:                                               ; preds = %2, %20
  br label %30

30:                                               ; preds = %171, %29
  %31 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %32 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %31, i32 0, i32 4
  %33 = call %struct.rum_tx_data* @STAILQ_FIRST(i32* %32)
  store %struct.rum_tx_data* %33, %struct.rum_tx_data** %7, align 8
  %34 = load %struct.rum_tx_data*, %struct.rum_tx_data** %7, align 8
  %35 = icmp ne %struct.rum_tx_data* %34, null
  br i1 %35, label %36, label %136

36:                                               ; preds = %30
  %37 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %38 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %37, i32 0, i32 4
  %39 = load i32, i32* @next, align 4
  %40 = call i32 @STAILQ_REMOVE_HEAD(i32* %38, i32 %39)
  %41 = load %struct.rum_tx_data*, %struct.rum_tx_data** %7, align 8
  %42 = getelementptr inbounds %struct.rum_tx_data, %struct.rum_tx_data* %41, i32 0, i32 3
  %43 = load %struct.mbuf*, %struct.mbuf** %42, align 8
  store %struct.mbuf* %43, %struct.mbuf** %8, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MCLBYTES, align 4
  %49 = load i32, i32* @RT2573_TX_DESC_SIZE, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %36
  %53 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @MCLBYTES, align 4
  %59 = load i32, i32* @RT2573_TX_DESC_SIZE, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %52, %36
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %66 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %65, i32 0)
  store %struct.usb_page_cache* %66, %struct.usb_page_cache** %9, align 8
  %67 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %68 = load %struct.rum_tx_data*, %struct.rum_tx_data** %7, align 8
  %69 = getelementptr inbounds %struct.rum_tx_data, %struct.rum_tx_data* %68, i32 0, i32 2
  %70 = load i32, i32* @RT2573_TX_DESC_SIZE, align 4
  %71 = call i32 @usbd_copy_in(%struct.usb_page_cache* %67, i32 0, i32* %69, i32 %70)
  %72 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %73 = load i32, i32* @RT2573_TX_DESC_SIZE, align 4
  %74 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %72, i32 %73, %struct.mbuf* %74, i32 0, i32 %78)
  %80 = load %struct.rum_tx_data*, %struct.rum_tx_data** %7, align 8
  %81 = getelementptr inbounds %struct.rum_tx_data, %struct.rum_tx_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.ieee80211vap*, %struct.ieee80211vap** %83, align 8
  store %struct.ieee80211vap* %84, %struct.ieee80211vap** %6, align 8
  %85 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %86 = call i32 @ieee80211_radiotap_active_vap(%struct.ieee80211vap* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %64
  %89 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %90 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %89, i32 0, i32 3
  store %struct.rum_tx_radiotap_header* %90, %struct.rum_tx_radiotap_header** %13, align 8
  %91 = load %struct.rum_tx_radiotap_header*, %struct.rum_tx_radiotap_header** %13, align 8
  %92 = getelementptr inbounds %struct.rum_tx_radiotap_header, %struct.rum_tx_radiotap_header* %91, i32 0, i32 2
  store i32 0, i32* %92, align 4
  %93 = load %struct.rum_tx_data*, %struct.rum_tx_data** %7, align 8
  %94 = getelementptr inbounds %struct.rum_tx_data, %struct.rum_tx_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.rum_tx_radiotap_header*, %struct.rum_tx_radiotap_header** %13, align 8
  %97 = getelementptr inbounds %struct.rum_tx_radiotap_header, %struct.rum_tx_radiotap_header* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %99 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rum_tx_radiotap_header*, %struct.rum_tx_radiotap_header** %13, align 8
  %102 = getelementptr inbounds %struct.rum_tx_radiotap_header, %struct.rum_tx_radiotap_header* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %104 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %105 = call i32 @ieee80211_radiotap_tx(%struct.ieee80211vap* %103, %struct.mbuf* %104)
  br label %106

106:                                              ; preds = %88, %64
  %107 = load i32, i32* @RT2573_TX_DESC_SIZE, align 4
  %108 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %109 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %107, %111
  %113 = add nsw i32 %112, 3
  %114 = and i32 %113, -4
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = urem i32 %115, 64
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %106
  %119 = load i32, i32* %10, align 4
  %120 = add i32 %119, 4
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %118, %106
  %122 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %123 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %128, i32 0, i32 %129)
  %131 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %132 = load %struct.rum_tx_data*, %struct.rum_tx_data** %7, align 8
  %133 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %131, %struct.rum_tx_data* %132)
  %134 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %135 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %134)
  br label %136

136:                                              ; preds = %121, %30
  %137 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %138 = call i32 @rum_start(%struct.rum_softc* %137)
  br label %175

139:                                              ; preds = %2
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @usbd_errstr(i32 %140)
  %142 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %144 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @counter_u64_add(i32 %146, i32 1)
  %148 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %149 = call %struct.rum_tx_data* @usbd_xfer_get_priv(%struct.usb_xfer* %148)
  store %struct.rum_tx_data* %149, %struct.rum_tx_data** %7, align 8
  %150 = load %struct.rum_tx_data*, %struct.rum_tx_data** %7, align 8
  %151 = icmp ne %struct.rum_tx_data* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %139
  %153 = load %struct.rum_tx_data*, %struct.rum_tx_data** %7, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @rum_tx_free(%struct.rum_tx_data* %153, i32 %154)
  %156 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %157 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %156, %struct.rum_tx_data* null)
  br label %158

158:                                              ; preds = %152, %139
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @USB_ERR_TIMEOUT, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %168 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @device_printf(i32 %169, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %166, %162
  %172 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %173 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %172)
  br label %30

174:                                              ; preds = %158
  br label %175

175:                                              ; preds = %174, %136
  ret void
}

declare dso_local %struct.rum_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, ...) #1

declare dso_local %struct.rum_tx_data* @usbd_xfer_get_priv(%struct.usb_xfer*) #1

declare dso_local i32 @rum_tx_free(%struct.rum_tx_data*, i32) #1

declare dso_local i32 @usbd_xfer_set_priv(%struct.usb_xfer*, %struct.rum_tx_data*) #1

declare dso_local %struct.rum_tx_data* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @ieee80211_radiotap_active_vap(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_radiotap_tx(%struct.ieee80211vap*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @rum_start(%struct.rum_softc*) #1

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
