; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.muge_softc = type { i32, i32 }
%struct.ifnet = type { i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"USB TRANSFER status: USB_ST_TRANSFERRED\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"USB TRANSFER status: USB_ST_SETUP\0A\00", align 1
@MUGE_FLAG_LINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"sc->sc_flags & MUGE_FLAG_LINK: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ifp->if_drv_flags & IFF_DRV_OACTIVE: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"USB TRANSFER not sending: no link or controller is busy \0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@TX_CMD_A_LEN_MASK_ = common dso_local global i32 0, align 4
@TX_CMD_A_FCS_ = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"USB TRANSFER nframes: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"USB TRANSFER submit attempt\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"usb error on tx: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @muge_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @muge_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.muge_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call %struct.muge_softc* @usbd_xfer_softc(%struct.usb_xfer* %13)
  store %struct.muge_softc* %14, %struct.muge_softc** %5, align 8
  %15 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %16 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %15, i32 0, i32 1
  %17 = call %struct.ifnet* @uether_getifp(i32* %16)
  store %struct.ifnet* %17, %struct.ifnet** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @USB_GET_STATE(%struct.usb_xfer* %18)
  switch i32 %19, label %160 [
    i32 128, label %20
    i32 129, label %29
  ]

20:                                               ; preds = %2
  %21 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %22 = call i32 (%struct.muge_softc*, i8*, ...) @muge_dbg_printf(%struct.muge_softc* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %2, %20
  %30 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %31 = call i32 (%struct.muge_softc*, i8*, ...) @muge_dbg_printf(%struct.muge_softc* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %173, %29
  %33 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %34 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MUGE_FLAG_LINK, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %39, %32
  %47 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %48 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %49 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MUGE_FLAG_LINK, align 4
  %52 = and i32 %50, %51
  %53 = call i32 (%struct.muge_softc*, i8*, ...) @muge_dbg_printf(%struct.muge_softc* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %55 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %59 = and i32 %57, %58
  %60 = call i32 (%struct.muge_softc*, i8*, ...) @muge_dbg_printf(%struct.muge_softc* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %62 = call i32 (%struct.muge_softc*, i8*, ...) @muge_dbg_printf(%struct.muge_softc* %61, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %181

63:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %137, %63
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 1
  %70 = call i32 @IFQ_DRV_IS_EMPTY(i32* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i1 [ false, %64 ], [ %72, %67 ]
  br i1 %74, label %75, label %140

75:                                               ; preds = %73
  %76 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  %78 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %79 = call i32 @IFQ_DRV_DEQUEUE(i32* %77, %struct.mbuf* %78)
  %80 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %81 = icmp eq %struct.mbuf* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %140

83:                                               ; preds = %75
  %84 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @MCLBYTES, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer* %84, i32 %87, i32 %88)
  store i32 0, i32* %10, align 4
  %90 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %90, i32 %91)
  store %struct.usb_page_cache* %92, %struct.usb_page_cache** %7, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TX_CMD_A_LEN_MASK_, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @TX_CMD_A_FCS_, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @htole32(i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %104 = call i32 @usbd_copy_in(%struct.usb_page_cache* %103, i32 0, i32* %11, i32 4)
  store i32 0, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @htole32(i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %108 = call i32 @usbd_copy_in(%struct.usb_page_cache* %107, i32 4, i32* %12, i32 4)
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 8
  store i32 %110, i32* %10, align 4
  %111 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %114 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %115 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %111, i32 %112, %struct.mbuf* %113, i32 0, i32 %117)
  %119 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %120 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %126 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %127 = call i32 @if_inc_counter(%struct.ifnet* %125, i32 %126, i32 1)
  %128 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %129 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %130 = call i32 @BPF_MTAP(%struct.ifnet* %128, %struct.mbuf* %129)
  %131 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %132 = call i32 @m_freem(%struct.mbuf* %131)
  %133 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %83
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %64

140:                                              ; preds = %82, %73
  %141 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (%struct.muge_softc*, i8*, ...) @muge_dbg_printf(%struct.muge_softc* %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %148 = call i32 (%struct.muge_softc*, i8*, ...) @muge_dbg_printf(%struct.muge_softc* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %149 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %149, i32 %150)
  %152 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %153 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %152)
  %154 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %155 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %156 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %146, %140
  br label %181

160:                                              ; preds = %2
  %161 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %162 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %163 = call i32 @if_inc_counter(%struct.ifnet* %161, i32 %162, i32 1)
  %164 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %167 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %160
  %174 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @usbd_errstr(i32 %175)
  %177 = call i32 @muge_err_printf(%struct.muge_softc* %174, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %176)
  %178 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %179 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %178)
  br label %32

180:                                              ; preds = %160
  br label %181

181:                                              ; preds = %180, %159, %46
  ret void
}

declare dso_local %struct.muge_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @muge_dbg_printf(%struct.muge_softc*, i8*, ...) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @muge_err_printf(%struct.muge_softc*, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
