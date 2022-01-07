; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubtbcmfw/extr_ubtbcmfw.c_ubtbcmfw_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubtbcmfw/extr_ubtbcmfw.c_ubtbcmfw_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ubtbcmfw_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_fifo** }
%struct.usb_fifo = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_FIFO_TX = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ubtbcmfw_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubtbcmfw_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubtbcmfw_softc*, align 8
  %6 = alloca %struct.usb_fifo*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ubtbcmfw_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ubtbcmfw_softc* %10, %struct.ubtbcmfw_softc** %5, align 8
  %11 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ubtbcmfw_softc, %struct.ubtbcmfw_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_fifo**, %struct.usb_fifo*** %13, align 8
  %15 = load i64, i64* @USB_FIFO_TX, align 8
  %16 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %14, i64 %15
  %17 = load %struct.usb_fifo*, %struct.usb_fifo** %16, align 8
  store %struct.usb_fifo* %17, %struct.usb_fifo** %6, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @USB_GET_STATE(%struct.usb_xfer* %18)
  switch i32 %19, label %37 [
    i32 129, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %2, %2
  br label %21

21:                                               ; preds = %41, %20
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %23 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %22, i32 0)
  store %struct.usb_page_cache* %23, %struct.usb_page_cache** %7, align 8
  %24 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %25 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %26)
  %28 = call i32 @usb_fifo_get_data(%struct.usb_fifo* %24, %struct.usb_page_cache* %25, i32 0, i32 %27, i32* %8, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %31, i32 0, i32 %32)
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %35 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %34)
  br label %36

36:                                               ; preds = %30, %21
  br label %45

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %43 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %42)
  br label %21

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %36
  ret void
}

declare dso_local %struct.ubtbcmfw_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_fifo_get_data(%struct.usb_fifo*, %struct.usb_page_cache*, i32, i32, i32*, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
