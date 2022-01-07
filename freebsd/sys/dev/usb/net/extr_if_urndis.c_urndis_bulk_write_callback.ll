; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.rndis_packet_msg = type { i8*, i8*, i8*, i8* }
%struct.urndis_softc = type { i32 }
%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%u bytes in %u frames\0A\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@RNDIS_TX_FRAMES_MAX = common dso_local global i32 0, align 4
@RNDIS_TX_MAXLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Too big packet\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@REMOTE_NDIS_PACKET_MSG = common dso_local global i32 0, align 4
@RNDIS_DATA_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @urndis_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urndis_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rndis_packet_msg, align 8
  %6 = alloca %struct.urndis_softc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_page_cache*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call %struct.urndis_softc* @usbd_xfer_softc(%struct.usb_xfer* %13)
  store %struct.urndis_softc* %14, %struct.urndis_softc** %6, align 8
  %15 = load %struct.urndis_softc*, %struct.urndis_softc** %6, align 8
  %16 = getelementptr inbounds %struct.urndis_softc, %struct.urndis_softc* %15, i32 0, i32 0
  %17 = call %struct.ifnet* @uether_getifp(i32* %16)
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %10, i32* null, i32* %11, i32* null)
  %20 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call i32 @USB_GET_STATE(%struct.usb_xfer* %21)
  switch i32 %22, label %131 [
    i32 128, label %23
    i32 129, label %30
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %28 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %29 = call i32 @if_inc_counter(%struct.ifnet* %27, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %2, %23
  br label %31

31:                                               ; preds = %141, %30
  %32 = call i32 @memset(%struct.rndis_packet_msg* %5, i32 0, i32 32)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %118, %31
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @RNDIS_TX_FRAMES_MAX, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %121

37:                                               ; preds = %33
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %38, i32 %39)
  store %struct.usb_page_cache* %40, %struct.usb_page_cache** %12, align 8
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @RNDIS_TX_MAXLEN, align 4
  %44 = mul i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer* %41, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %65, %37
  %48 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %51 = call i32 @IFQ_DRV_DEQUEUE(i32* %49, %struct.mbuf* %50)
  %52 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %53 = icmp eq %struct.mbuf* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %121

55:                                               ; preds = %47
  %56 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 32
  %62 = load i32, i32* @RNDIS_TX_MAXLEN, align 4
  %63 = zext i32 %62 to i64
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %68 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %69 = call i32 @if_inc_counter(%struct.ifnet* %67, i32 %68, i32 1)
  %70 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %71 = call i32 @m_freem(%struct.mbuf* %70)
  br label %47

72:                                               ; preds = %55
  %73 = load i32, i32* @REMOTE_NDIS_PACKET_MSG, align 4
  %74 = call i8* @htole32(i32 %73)
  %75 = getelementptr inbounds %struct.rndis_packet_msg, %struct.rndis_packet_msg* %5, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 32, %80
  %82 = trunc i64 %81 to i32
  %83 = call i8* @htole32(i32 %82)
  %84 = getelementptr inbounds %struct.rndis_packet_msg, %struct.rndis_packet_msg* %5, i32 0, i32 2
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @RNDIS_DATA_OFFSET, align 4
  %86 = call i8* @htole32(i32 %85)
  %87 = getelementptr inbounds %struct.rndis_packet_msg, %struct.rndis_packet_msg* %5, i32 0, i32 1
  store i8* %86, i8** %87, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @htole32(i32 %91)
  %93 = getelementptr inbounds %struct.rndis_packet_msg, %struct.rndis_packet_msg* %5, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load %struct.usb_page_cache*, %struct.usb_page_cache** %12, align 8
  %95 = call i32 @usbd_copy_in(%struct.usb_page_cache* %94, i32 0, %struct.rndis_packet_msg* %5, i32 32)
  %96 = load %struct.usb_page_cache*, %struct.usb_page_cache** %12, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %98 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %99 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %96, i32 32, %struct.mbuf* %97, i32 0, i32 %101)
  %103 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %106 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 32, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %103, i32 %104, i32 %111)
  %113 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %114 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %115 = call i32 @BPF_MTAP(%struct.ifnet* %113, %struct.mbuf* %114)
  %116 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %117 = call i32 @m_freem(%struct.mbuf* %116)
  br label %118

118:                                              ; preds = %72
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %33

121:                                              ; preds = %54, %33
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %125, i32 %126)
  %128 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %129 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %128)
  br label %130

130:                                              ; preds = %124, %121
  br label %145

131:                                              ; preds = %2
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @usbd_errstr(i32 %132)
  %134 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %136 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %137 = call i32 @if_inc_counter(%struct.ifnet* %135, i32 %136, i32 1)
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %143 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %142)
  br label %31

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %130
  ret void
}

declare dso_local %struct.urndis_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @memset(%struct.rndis_packet_msg*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.rndis_packet_msg*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
