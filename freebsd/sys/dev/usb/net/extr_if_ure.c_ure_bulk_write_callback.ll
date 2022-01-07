; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ure_softc = type { i32, i32 }
%struct.ifnet = type { i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ure_txpkt = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"transfer complete\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@URE_FLAG_LINK = common dso_local global i32 0, align 4
@URE_TXPKT_LEN_MASK = common dso_local global i32 0, align 4
@URE_TKPKT_TX_FS = common dso_local global i32 0, align 4
@URE_TKPKT_TX_LS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ure_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ure_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.ure_txpkt, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.ure_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.ure_softc* %13, %struct.ure_softc** %5, align 8
  %14 = load %struct.ure_softc*, %struct.ure_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %14, i32 0, i32 1
  %16 = call %struct.ifnet* @uether_getifp(i32* %15)
  store %struct.ifnet* %16, %struct.ifnet** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %107 [
    i32 128, label %19
    i32 129, label %27
  ]

19:                                               ; preds = %2
  %20 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %2, %19
  br label %28

28:                                               ; preds = %123, %27
  %29 = load %struct.ure_softc*, %struct.ure_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @URE_FLAG_LINK, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %28
  br label %127

43:                                               ; preds = %35
  %44 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 1
  %46 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %47 = call i32 @IFQ_DRV_DEQUEUE(i32* %45, %struct.mbuf* %46)
  %48 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %49 = icmp eq %struct.mbuf* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %127

51:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  %52 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %56, i32 0)
  store %struct.usb_page_cache* %57, %struct.usb_page_cache** %7, align 8
  %58 = call i32 @memset(%struct.ure_txpkt* %9, i32 0, i32 4)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @URE_TXPKT_LEN_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @URE_TKPKT_TX_FS, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @URE_TKPKT_TX_LS, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @htole32(i32 %65)
  %67 = getelementptr inbounds %struct.ure_txpkt, %struct.ure_txpkt* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @usbd_copy_in(%struct.usb_page_cache* %68, i32 %69, %struct.ure_txpkt* %9, i32 4)
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %75, i32 %76, %struct.mbuf* %77, i32 0, i32 %81)
  %83 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %84 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %90 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %91 = call i32 @if_inc_counter(%struct.ifnet* %89, i32 %90, i32 1)
  %92 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %94 = call i32 @BPF_MTAP(%struct.ifnet* %92, %struct.mbuf* %93)
  %95 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %96 = call i32 @m_freem(%struct.mbuf* %95)
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %97, i32 0, i32 %98)
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %101 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %100)
  %102 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %103 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %104 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %127

107:                                              ; preds = %2
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @usbd_errstr(i32 %108)
  %110 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %112 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %113 = call i32 @if_inc_counter(%struct.ifnet* %111, i32 %112, i32 1)
  %114 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %107
  %124 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %125 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %124)
  br label %28

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %42, %51, %126, %50
  ret void
}

declare dso_local %struct.ure_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @memset(%struct.ure_txpkt*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.ure_txpkt*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
