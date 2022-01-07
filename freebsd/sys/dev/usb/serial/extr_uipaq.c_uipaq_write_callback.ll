; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uipaq.c_uipaq_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uipaq.c_uipaq_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uipaq_softc = type { i32 }
%struct.usb_page_cache = type { i32 }

@UIPAQ_BUF_SIZE = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uipaq_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uipaq_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uipaq_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.uipaq_softc* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.uipaq_softc* %9, %struct.uipaq_softc** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @USB_GET_STATE(%struct.usb_xfer* %10)
  switch i32 %11, label %29 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %2, %2
  br label %13

13:                                               ; preds = %33, %12
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %14, i32 0)
  store %struct.usb_page_cache* %15, %struct.usb_page_cache** %6, align 8
  %16 = load %struct.uipaq_softc*, %struct.uipaq_softc** %5, align 8
  %17 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %16, i32 0, i32 0
  %18 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %19 = load i32, i32* @UIPAQ_BUF_SIZE, align 4
  %20 = call i32 @ucom_get_data(i32* %17, %struct.usb_page_cache* %18, i32 0, i32 %19, i32* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %23, i32 0, i32 %24)
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %26)
  br label %28

28:                                               ; preds = %22, %13
  br label %37

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %35 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %34)
  br label %13

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %28
  ret void
}

declare dso_local %struct.uipaq_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_get_data(i32*, %struct.usb_page_cache*, i32, i32, i32*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
