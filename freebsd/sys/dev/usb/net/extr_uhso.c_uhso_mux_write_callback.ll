; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_mux_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_mux_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhso_softc = type { i32* }
%struct.uhso_tty = type { i64 }
%struct.usb_page_cache = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"status=%d, using mux port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"wrote %zd data bytes to muxport %d\0A\00", align 1
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SEND_ENCAPSULATED_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Prepared %d bytes for transmit on muxport %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhso_mux_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_mux_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhso_softc*, align 8
  %6 = alloca %struct.uhso_tty*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.usb_device_request, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_page_search, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.uhso_softc* %12, %struct.uhso_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %9, i32* null, i32* null, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call %struct.uhso_tty* @usbd_xfer_get_priv(%struct.usb_xfer* %15)
  store %struct.uhso_tty* %16, %struct.uhso_tty** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  %19 = load %struct.uhso_tty*, %struct.uhso_tty** %6, align 8
  %20 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = call i32 @USB_GET_STATE(%struct.usb_xfer* %23)
  switch i32 %24, label %89 [
    i32 128, label %25
    i32 129, label %34
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 20
  %29 = trunc i64 %28 to i32
  %30 = load %struct.uhso_tty*, %struct.uhso_tty** %6, align 8
  %31 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %32)
  br label %34

34:                                               ; preds = %2, %25
  br label %35

35:                                               ; preds = %97, %34
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %36, i32 1)
  store %struct.usb_page_cache* %37, %struct.usb_page_cache** %7, align 8
  %38 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %39 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.uhso_tty*, %struct.uhso_tty** %6, align 8
  %42 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %46 = call i32 @ucom_get_data(i32* %44, %struct.usb_page_cache* %45, i32 0, i32 32, i32* %9)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %35
  %49 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %50 = call i32 @usbd_get_page(%struct.usb_page_cache* %49, i32 0, %struct.usb_page_search* %10)
  %51 = call i32 @memset(%struct.usb_device_request* %8, i32 0, i32 20)
  %52 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %53 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @UCDC_SEND_ENCAPSULATED_COMMAND, align 4
  %55 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @USETW(i32 %57, i32 0)
  %59 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.uhso_tty*, %struct.uhso_tty** %6, align 8
  %62 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @USETW(i32 %60, i32 %64)
  %66 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @USETW(i32 %67, i32 %68)
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %70, i32 0)
  store %struct.usb_page_cache* %71, %struct.usb_page_cache** %7, align 8
  %72 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %73 = call i32 @usbd_copy_in(%struct.usb_page_cache* %72, i32 0, %struct.usb_device_request* %8, i32 20)
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %75 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %74, i32 0, i32 20)
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %76, i32 1, i32 %77)
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %80 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %79, i32 2)
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.uhso_tty*, %struct.uhso_tty** %6, align 8
  %83 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %81, i64 %84)
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %87 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %86)
  br label %88

88:                                               ; preds = %48, %35
  br label %100

89:                                               ; preds = %2
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @usbd_errstr(i32 %90)
  %92 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %100

97:                                               ; preds = %89
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %99 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %98)
  br label %35

100:                                              ; preds = %96, %88
  ret void
}

declare dso_local %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.uhso_tty* @usbd_xfer_get_priv(%struct.usb_xfer*) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_get_data(i32*, %struct.usb_page_cache*, i32, i32, i32*) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @memset(%struct.usb_device_request*, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
