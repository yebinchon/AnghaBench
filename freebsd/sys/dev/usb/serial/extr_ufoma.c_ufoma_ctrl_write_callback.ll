; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_ctrl_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_ctrl_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ufoma_softc = type { i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SEND_ENCAPSULATED_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"error = %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ufoma_ctrl_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_ctrl_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufoma_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 4
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ufoma_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ufoma_softc* %10, %struct.ufoma_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @USB_GET_STATE(%struct.usb_xfer* %11)
  switch i32 %12, label %53 [
    i32 128, label %13
    i32 129, label %15
  ]

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %61, %13
  br label %15

15:                                               ; preds = %2, %14
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %16, i32 1)
  store %struct.usb_page_cache* %17, %struct.usb_page_cache** %7, align 8
  %18 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %18, i32 0, i32 1
  %20 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %21 = call i32 @ucom_get_data(i32* %19, %struct.usb_page_cache* %20, i32 0, i32 1, i32* %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %15
  %24 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @UCDC_SEND_ENCAPSULATED_COMMAND, align 4
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %31 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @USETW(i32 %29, i32 %32)
  %34 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @USETW(i32 %35, i32 0)
  %37 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @USETW(i32 %38, i32 1)
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %41 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %40, i32 0)
  store %struct.usb_page_cache* %41, %struct.usb_page_cache** %7, align 8
  %42 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %43 = call i32 @usbd_copy_in(%struct.usb_page_cache* %42, i32 0, %struct.usb_device_request* %6, i32 20)
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %45 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %44, i32 0, i32 20)
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %47 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %46, i32 1, i32 1)
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %49 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %48, i32 2)
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %51 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %50)
  br label %52

52:                                               ; preds = %23, %15
  br label %62

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @usbd_errstr(i32 %54)
  %56 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %62

61:                                               ; preds = %53
  br label %14

62:                                               ; preds = %60, %52
  ret void
}

declare dso_local %struct.ufoma_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_get_data(i32*, %struct.usb_page_cache*, i32, i32, i32*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
