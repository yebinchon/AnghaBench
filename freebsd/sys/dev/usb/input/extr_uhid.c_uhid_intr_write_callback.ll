; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_intr_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_intr_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhid_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.usb_page_cache = type { i32 }

@USB_FIFO_TX = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhid_intr_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhid_intr_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhid_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.uhid_softc* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.uhid_softc* %9, %struct.uhid_softc** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @USB_GET_STATE(%struct.usb_xfer* %10)
  switch i32 %11, label %35 [
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %2, %2
  br label %13

13:                                               ; preds = %39, %12
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %14, i32 0)
  store %struct.usb_page_cache* %15, %struct.usb_page_cache** %6, align 8
  %16 = load %struct.uhid_softc*, %struct.uhid_softc** %5, align 8
  %17 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @USB_FIFO_TX, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %24)
  %26 = call i32 @usb_fifo_get_data(i32 %22, %struct.usb_page_cache* %23, i32 0, i32 %25, i32* %7, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %13
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %29, i32 0, i32 %30)
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %33 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %32)
  br label %34

34:                                               ; preds = %28, %13
  br label %43

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %41 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %40)
  br label %13

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %34
  ret void
}

declare dso_local %struct.uhid_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_fifo_get_data(i32, %struct.usb_page_cache*, i32, i32, i32*, i32) #1

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
