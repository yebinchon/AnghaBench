; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.cdce_softc = type { i32, %struct.mbuf**, %struct.TYPE_3__ }
%struct.mbuf = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"received %u bytes in %u frames\0A\00", align 1
@CDCE_FLAG_ZAURUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"error = %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i32 0, align 4
@CDCE_FRAMES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @cdce_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdce_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdce_softc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.cdce_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.cdce_softc* %12, %struct.cdce_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %8, i32* null, i32* %9, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %126 [
    i32 128, label %17
    i32 129, label %70
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %66, %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %27 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %26, i32 0, i32 1
  %28 = load %struct.mbuf**, %struct.mbuf*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %28, i64 %30
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  store %struct.mbuf* %32, %struct.mbuf** %6, align 8
  %33 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %34 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %33, i32 0, i32 1
  %35 = load %struct.mbuf**, %struct.mbuf*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %35, i64 %37
  store %struct.mbuf* null, %struct.mbuf** %38, align 8
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @usbd_xfer_frame_len(%struct.usb_xfer* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %43 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CDCE_FLAG_ZAURUS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %25
  %49 = load i32, i32* %10, align 4
  %50 = icmp sge i32 %49, 14
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %48, %25
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %59 = call i32 @m_freem(%struct.mbuf* %58)
  br label %66

60:                                               ; preds = %54
  %61 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %62 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %61, i32 0, i32 2
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @uether_rxmbuf(%struct.TYPE_3__* %62, %struct.mbuf* %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %21

69:                                               ; preds = %21
  br label %70

70:                                               ; preds = %2, %69
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %114, %70
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %117

74:                                               ; preds = %71
  %75 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %76 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %75, i32 0, i32 1
  %77 = load %struct.mbuf**, %struct.mbuf*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %77, i64 %79
  %81 = load %struct.mbuf*, %struct.mbuf** %80, align 8
  %82 = icmp eq %struct.mbuf* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %74
  %84 = call %struct.mbuf* (...) @uether_newbuf()
  store %struct.mbuf* %84, %struct.mbuf** %6, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %86 = icmp eq %struct.mbuf* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %134

88:                                               ; preds = %83
  %89 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %90 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %91 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %90, i32 0, i32 1
  %92 = load %struct.mbuf**, %struct.mbuf*** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %92, i64 %94
  store %struct.mbuf* %89, %struct.mbuf** %95, align 8
  br label %104

96:                                               ; preds = %74
  %97 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %98 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %97, i32 0, i32 1
  %99 = load %struct.mbuf**, %struct.mbuf*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %99, i64 %101
  %103 = load %struct.mbuf*, %struct.mbuf** %102, align 8
  store %struct.mbuf* %103, %struct.mbuf** %6, align 8
  br label %104

104:                                              ; preds = %96, %88
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
  br label %71

117:                                              ; preds = %71
  %118 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %118, i32 %119)
  %121 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %122 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %121)
  %123 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %124 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %123, i32 0, i32 2
  %125 = call i32 @uether_rxflush(%struct.TYPE_3__* %124)
  br label %156

126:                                              ; preds = %2
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @usbd_errstr(i32 %127)
  %129 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %87
  %135 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %136 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @usbd_get_mode(i32 %138)
  %140 = load i32, i32* @USB_MODE_HOST, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %144 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %143)
  %145 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %146 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %145, i32 0)
  %147 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %148 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %147)
  br label %149

149:                                              ; preds = %142, %134
  br label %156

150:                                              ; preds = %126
  %151 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %152 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %151, i32 0, i32 1
  %153 = load %struct.mbuf**, %struct.mbuf*** %152, align 8
  %154 = load i32, i32* @CDCE_FRAMES_MAX, align 4
  %155 = call i32 @cdce_free_queue(%struct.mbuf** %153, i32 %154)
  br label %156

156:                                              ; preds = %150, %149, %117
  ret void
}

declare dso_local %struct.cdce_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @usbd_xfer_frame_len(%struct.usb_xfer*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @uether_rxmbuf(%struct.TYPE_3__*, %struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @uether_newbuf(...) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @uether_rxflush(%struct.TYPE_3__*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_get_mode(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @cdce_free_queue(%struct.mbuf**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
