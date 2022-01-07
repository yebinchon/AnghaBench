; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_read_callbackN.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_read_callbackN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umcs7840_softc = type { %struct.ucom_softc* }
%struct.ucom_softc = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Port %d read, state = %d, data length = %d\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32, i64)* @umcs7840_read_callbackN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umcs7840_read_callbackN(%struct.usb_xfer* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.umcs7840_softc*, align 8
  %8 = alloca %struct.ucom_softc*, align 8
  %9 = alloca %struct.usb_page_cache*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %12 = call %struct.umcs7840_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.umcs7840_softc* %12, %struct.umcs7840_softc** %7, align 8
  %13 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  %14 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %13, i32 0, i32 0
  %15 = load %struct.ucom_softc*, %struct.ucom_softc** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %15, i64 %16
  store %struct.ucom_softc* %17, %struct.ucom_softc** %8, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %10, i32* null, i32* null, i32* null)
  %20 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %21 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %24 = call i32 @USB_GET_STATE(%struct.usb_xfer* %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @DPRINTF(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i32 %25)
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %28 = call i32 @USB_GET_STATE(%struct.usb_xfer* %27)
  switch i32 %28, label %44 [
    i32 128, label %29
    i32 129, label %36
  ]

29:                                               ; preds = %3
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %31 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %30, i32 0)
  store %struct.usb_page_cache* %31, %struct.usb_page_cache** %9, align 8
  %32 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %33 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ucom_put_data(%struct.ucom_softc* %32, %struct.usb_page_cache* %33, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %3, %29
  br label %37

37:                                               ; preds = %48, %36
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %40 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %39)
  %41 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %38, i32 0, i32 %40)
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %43 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %42)
  br label %52

44:                                               ; preds = %3
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %50 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %49)
  br label %37

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %37
  ret void
}

declare dso_local %struct.umcs7840_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_put_data(%struct.ucom_softc*, %struct.usb_page_cache*, i32, i32) #1

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
