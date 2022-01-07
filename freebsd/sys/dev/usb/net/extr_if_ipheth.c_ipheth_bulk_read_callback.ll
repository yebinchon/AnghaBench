; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ipheth_softc = type { %struct.mbuf**, i32 }
%struct.mbuf = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"received %u bytes in %u frames\0A\00", align 1
@IPHETH_RX_ADJ = common dso_local global i32 0, align 4
@IPHETH_RX_FRAMES_MAX = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"error = %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ipheth_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipheth_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipheth_softc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.ipheth_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.ipheth_softc* %12, %struct.ipheth_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %8, i32* null, i32* %9, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %126 [
    i32 128, label %17
    i32 129, label %66
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %62, %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  %26 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %26, i32 0, i32 0
  %28 = load %struct.mbuf**, %struct.mbuf*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %28, i64 %30
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  store %struct.mbuf* %32, %struct.mbuf** %6, align 8
  %33 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %33, i32 0, i32 0
  %35 = load %struct.mbuf**, %struct.mbuf*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %35, i64 %37
  store %struct.mbuf* null, %struct.mbuf** %38, align 8
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @usbd_xfer_frame_len(%struct.usb_xfer* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @IPHETH_RX_ADJ, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %25
  %49 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %50 = call i32 @m_freem(%struct.mbuf* %49)
  br label %62

51:                                               ; preds = %25
  %52 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %53 = load i32, i32* @IPHETH_RX_ADJ, align 4
  %54 = call i32 @m_adj(%struct.mbuf* %52, i32 %53)
  %55 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %55, i32 0, i32 1
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @IPHETH_RX_ADJ, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @uether_rxmbuf(i32* %56, %struct.mbuf* %57, i32 %60)
  br label %62

62:                                               ; preds = %51, %48
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %21

65:                                               ; preds = %21
  br label %66

66:                                               ; preds = %2, %65
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %114, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @IPHETH_RX_FRAMES_MAX, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %67
  %72 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %73 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %72, i32 0, i32 0
  %74 = load %struct.mbuf**, %struct.mbuf*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %74, i64 %76
  %78 = load %struct.mbuf*, %struct.mbuf** %77, align 8
  %79 = icmp eq %struct.mbuf* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %71
  %81 = call %struct.mbuf* (...) @uether_newbuf()
  store %struct.mbuf* %81, %struct.mbuf** %6, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %83 = icmp eq %struct.mbuf* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %134

85:                                               ; preds = %80
  %86 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %87 = load i32, i32* @ETHER_ALIGN, align 4
  %88 = call i32 @m_adj(%struct.mbuf* %86, i32 %87)
  %89 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %90 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %91 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %90, i32 0, i32 0
  %92 = load %struct.mbuf**, %struct.mbuf*** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %92, i64 %94
  store %struct.mbuf* %89, %struct.mbuf** %95, align 8
  br label %104

96:                                               ; preds = %71
  %97 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %98 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %97, i32 0, i32 0
  %99 = load %struct.mbuf**, %struct.mbuf*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %99, i64 %101
  %103 = load %struct.mbuf*, %struct.mbuf** %102, align 8
  store %struct.mbuf* %103, %struct.mbuf** %6, align 8
  br label %104

104:                                              ; preds = %96, %85
  %105 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %108 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %111 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %105, i32 %106, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %67

117:                                              ; preds = %67
  %118 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %118, i32 %119)
  %121 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %122 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %121)
  %123 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %124 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %123, i32 0, i32 1
  %125 = call i32 @uether_rxflush(i32* %124)
  br label %147

126:                                              ; preds = %2
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @usbd_errstr(i32 %127)
  %129 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %84
  %135 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %136 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %135)
  %137 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %138 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %137, i32 0)
  %139 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %140 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %139)
  br label %147

141:                                              ; preds = %126
  %142 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %143 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %142, i32 0, i32 0
  %144 = load %struct.mbuf**, %struct.mbuf*** %143, align 8
  %145 = load i32, i32* @IPHETH_RX_FRAMES_MAX, align 4
  %146 = call i32 @ipheth_free_queue(%struct.mbuf** %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %134, %117
  ret void
}

declare dso_local %struct.ipheth_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @usbd_xfer_frame_len(%struct.usb_xfer*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @uether_rxmbuf(i32*, %struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @uether_newbuf(...) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @uether_rxflush(i32*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @ipheth_free_queue(%struct.mbuf**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
