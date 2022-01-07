; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_write_callbackN.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_write_callbackN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umcs7840_softc = type { %struct.ucom_softc* }
%struct.ucom_softc = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Port %d write, state = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Port %d write, has %d bytes\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32, i64)* @umcs7840_write_callbackN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umcs7840_write_callbackN(%struct.usb_xfer* %0, i32 %1, i64 %2) #0 {
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
  %18 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %19 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %22 = call i32 @USB_GET_STATE(%struct.usb_xfer* %21)
  %23 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %25 = call i32 @USB_GET_STATE(%struct.usb_xfer* %24)
  switch i32 %25, label %48 [
    i32 129, label %26
    i32 128, label %26
  ]

26:                                               ; preds = %3, %3
  br label %27

27:                                               ; preds = %52, %26
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %29 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %28, i32 0)
  store %struct.usb_page_cache* %29, %struct.usb_page_cache** %9, align 8
  %30 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %31 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %33 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %32)
  %34 = call i32 @ucom_get_data(%struct.ucom_softc* %30, %struct.usb_page_cache* %31, i32 0, i32 %33, i32* %10)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %38 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %42, i32 0, i32 %43)
  %45 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %46 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %45)
  br label %47

47:                                               ; preds = %36, %27
  br label %56

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %54 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %53)
  br label %27

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %47
  ret void
}

declare dso_local %struct.umcs7840_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_get_data(%struct.ucom_softc*, %struct.usb_page_cache*, i32, i32, i32*) #1

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
