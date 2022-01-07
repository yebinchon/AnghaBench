; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.urio_softc = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_fifo** }
%struct.usb_fifo = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_FIFO_TX = common dso_local global i64 0, align 8
@URIO_FLAG_WRITE_STALL = common dso_local global i32 0, align 4
@URIO_T_WR_CS = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @urio_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urio_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urio_softc*, align 8
  %6 = alloca %struct.usb_fifo*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.urio_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.urio_softc* %10, %struct.urio_softc** %5, align 8
  %11 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %12 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_fifo**, %struct.usb_fifo*** %13, align 8
  %15 = load i64, i64* @USB_FIFO_TX, align 8
  %16 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %14, i64 %15
  %17 = load %struct.usb_fifo*, %struct.usb_fifo** %16, align 8
  store %struct.usb_fifo* %17, %struct.usb_fifo** %6, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @USB_GET_STATE(%struct.usb_xfer* %18)
  switch i32 %19, label %51 [
    i32 128, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %2, %2
  %21 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %22 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @URIO_FLAG_WRITE_STALL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %29 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @URIO_T_WR_CS, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usbd_transfer_start(i32 %33)
  br label %69

35:                                               ; preds = %20
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %36, i32 0)
  store %struct.usb_page_cache* %37, %struct.usb_page_cache** %7, align 8
  %38 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %39 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %41 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %40)
  %42 = call i32 @usb_fifo_get_data(%struct.usb_fifo* %38, %struct.usb_page_cache* %39, i32 0, i32 %41, i32* %8, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %45, i32 0, i32 %46)
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %49 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %48)
  br label %50

50:                                               ; preds = %44, %35
  br label %69

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* @URIO_FLAG_WRITE_STALL, align 4
  %57 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %58 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %62 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @URIO_T_WR_CS, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usbd_transfer_start(i32 %66)
  br label %68

68:                                               ; preds = %55, %51
  br label %69

69:                                               ; preds = %68, %50, %27
  ret void
}

declare dso_local %struct.urio_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_fifo_get_data(%struct.usb_fifo*, %struct.usb_page_cache*, i32, i32, i32*, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
