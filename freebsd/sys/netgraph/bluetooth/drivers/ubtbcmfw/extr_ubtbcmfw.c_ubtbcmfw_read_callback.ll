; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubtbcmfw/extr_ubtbcmfw.c_ubtbcmfw_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubtbcmfw/extr_ubtbcmfw.c_ubtbcmfw_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ubtbcmfw_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_fifo** }
%struct.usb_fifo = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_FIFO_RX = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ubtbcmfw_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubtbcmfw_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
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
  %15 = load i64, i64* @USB_FIFO_RX, align 8
  %16 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %14, i64 %15
  %17 = load %struct.usb_fifo*, %struct.usb_fifo** %16, align 8
  store %struct.usb_fifo* %17, %struct.usb_fifo** %6, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %8, i32* null, i32* null, i32* null)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %42 [
    i32 128, label %22
    i32 129, label %29
  ]

22:                                               ; preds = %2
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %23, i32 0)
  store %struct.usb_page_cache* %24, %struct.usb_page_cache** %7, align 8
  %25 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %26 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @usb_fifo_put_data(%struct.usb_fifo* %25, %struct.usb_page_cache* %26, i32 0, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %2, %22
  br label %30

30:                                               ; preds = %46, %29
  %31 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %32 = call i32 @usb_fifo_put_bytes_max(%struct.usb_fifo* %31)
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %36)
  %38 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %35, i32 0, i32 %37)
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %40 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %39)
  br label %41

41:                                               ; preds = %34, %30
  br label %50

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %48 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %47)
  br label %30

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %41
  ret void
}

declare dso_local %struct.ubtbcmfw_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_fifo_put_data(%struct.usb_fifo*, %struct.usb_page_cache*, i32, i32, i32) #1

declare dso_local i32 @usb_fifo_put_bytes_max(%struct.usb_fifo*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
