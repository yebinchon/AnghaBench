; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_tx_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_tx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.usie_softc = type { %struct.TYPE_6__, %struct.ifnet* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"transfer complete\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"packet len is too big: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"USB transfer error, %s\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @usie_if_tx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_if_tx_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usie_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.usie_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.usie_softc* %11, %struct.usie_softc** %5, align 8
  %12 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %13 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %12, i32 0, i32 1
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %7, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %111 [
    i32 128, label %17
    i32 129, label %28
  ]

17:                                               ; preds = %2
  %18 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %26 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %27 = call i32 @if_inc_counter(%struct.ifnet* %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %2, %17
  br label %29

29:                                               ; preds = %121, %28
  %30 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %128

37:                                               ; preds = %29
  %38 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %41 = call i32 @IFQ_DRV_DEQUEUE(i32* %39, %struct.mbuf* %40)
  %42 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %43 = icmp eq %struct.mbuf* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %128

45:                                               ; preds = %37
  %46 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MCLBYTES, align 4
  %51 = load i32, i32* @ETHER_HDR_LEN, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* @ETHER_CRC_LEN, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = sub i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = icmp sgt i32 %49, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %128

65:                                               ; preds = %45
  %66 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %67 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %66, i32 0)
  store %struct.usb_page_cache* %67, %struct.usb_page_cache** %6, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ETHER_HDR_LEN, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @ETHER_CRC_LEN, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @htobe16(i32 %75)
  %77 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %78 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  store i32 4, i32* %9, align 4
  %81 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %82 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %83 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @usbd_copy_in(%struct.usb_page_cache* %81, i32 0, %struct.TYPE_6__* %83, i32 %84)
  %86 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %86, i32 %87, %struct.mbuf* %88, i32 0, i32 %92)
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %95 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @ETHER_CRC_LEN, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %94, i32 0, i32 %102)
  %104 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %106 = call i32 @BPF_MTAP(%struct.ifnet* %104, %struct.mbuf* %105)
  %107 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %108 = call i32 @m_freem(%struct.mbuf* %107)
  %109 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %110 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %109)
  br label %128

111:                                              ; preds = %2
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @usbd_errstr(i32 %112)
  %114 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %116 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %117 = call i32 @if_inc_counter(%struct.ifnet* %115, i32 %116, i32 1)
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %123 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %122)
  %124 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %125 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %126 = call i32 @if_inc_counter(%struct.ifnet* %124, i32 %125, i32 1)
  br label %29

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %127, %65, %59, %44, %36
  ret void
}

declare dso_local %struct.usie_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
