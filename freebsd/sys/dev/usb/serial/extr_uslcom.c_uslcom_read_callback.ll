; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uslcom_softc = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uslcom_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uslcom_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uslcom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.uslcom_softc* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.uslcom_softc* %9, %struct.uslcom_softc** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @usbd_xfer_status(%struct.usb_xfer* %10, i32* %7, i32* null, i32* null, i32* null)
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  switch i32 %13, label %30 [
    i32 128, label %14
    i32 129, label %22
  ]

14:                                               ; preds = %2
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %15, i32 0)
  store %struct.usb_page_cache* %16, %struct.usb_page_cache** %6, align 8
  %17 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %18 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %17, i32 0, i32 0
  %19 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ucom_put_data(i32* %18, %struct.usb_page_cache* %19, i32 0, i32 %20)
  br label %22

22:                                               ; preds = %2, %14
  br label %23

23:                                               ; preds = %34, %22
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %25)
  %27 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %24, i32 0, i32 %26)
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %29 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %28)
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %35)
  br label %23

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %23
  ret void
}

declare dso_local %struct.uslcom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_put_data(i32*, %struct.usb_page_cache*, i32, i32) #1

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
