; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_mux_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_mux_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhso_softc = type { i32*, i32* }
%struct.usb_page_cache = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }
%struct.uhso_tty = type { i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ht=%p open=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"got %d bytes on mux port %d\0A\00", align 1
@UHSO_MUX_ENDPT_INTR = common dso_local global i64 0, align 8
@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_GET_ENCAPSULATED_RESPONSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhso_mux_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_mux_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhso_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca %struct.usb_device_request, align 4
  %8 = alloca %struct.uhso_tty*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.uhso_softc* %12, %struct.uhso_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %9, i32* null, i32* null, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  %17 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call %struct.uhso_tty* @usbd_xfer_get_priv(%struct.usb_xfer* %18)
  store %struct.uhso_tty* %19, %struct.uhso_tty** %8, align 8
  %20 = load %struct.uhso_tty*, %struct.uhso_tty** %8, align 8
  %21 = load %struct.uhso_tty*, %struct.uhso_tty** %8, align 8
  %22 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.uhso_tty* %20, i32 %23)
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = call i32 @USB_GET_STATE(%struct.usb_xfer* %25)
  switch i32 %26, label %96 [
    i32 128, label %27
    i32 129, label %64
  ]

27:                                               ; preds = %2
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %29 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %28, i32 1)
  store %struct.usb_page_cache* %29, %struct.usb_page_cache** %6, align 8
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = call i32 @usbd_xfer_frame_len(%struct.usb_xfer* %30, i32 1)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.uhso_tty*, %struct.uhso_tty** %8, align 8
  %34 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %32, i64 %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %41 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @UHSO_MUX_ENDPT_INTR, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usbd_transfer_start(i32 %45)
  br label %107

47:                                               ; preds = %27
  %48 = load %struct.uhso_tty*, %struct.uhso_tty** %8, align 8
  %49 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %54 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.uhso_tty*, %struct.uhso_tty** %8, align 8
  %57 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @ucom_put_data(i32* %59, %struct.usb_page_cache* %60, i32 0, i32 %61)
  br label %63

63:                                               ; preds = %52, %47
  br label %64

64:                                               ; preds = %2, %63
  br label %65

65:                                               ; preds = %104, %64
  %66 = call i32 @memset(%struct.usb_device_request* %7, i32 0, i32 20)
  %67 = load i32, i32* @UT_READ_CLASS_INTERFACE, align 4
  %68 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @UCDC_GET_ENCAPSULATED_RESPONSE, align 4
  %70 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @USETW(i32 %72, i32 0)
  %74 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uhso_tty*, %struct.uhso_tty** %8, align 8
  %77 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @USETW(i32 %75, i32 %79)
  %81 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @USETW(i32 %82, i32 1024)
  %84 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %85 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %84, i32 0)
  store %struct.usb_page_cache* %85, %struct.usb_page_cache** %6, align 8
  %86 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %87 = call i32 @usbd_copy_in(%struct.usb_page_cache* %86, i32 0, %struct.usb_device_request* %7, i32 20)
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %89 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %88, i32 0, i32 20)
  %90 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %91 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %90, i32 1, i32 1024)
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %93 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %92, i32 2)
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %95 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %94)
  br label %107

96:                                               ; preds = %2
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @usbd_errstr(i32 %97)
  %99 = call i32 (i32, i8*, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %107

104:                                              ; preds = %96
  %105 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %106 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %105)
  br label %65

107:                                              ; preds = %103, %65, %39
  ret void
}

declare dso_local %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.uhso_tty* @usbd_xfer_get_priv(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_frame_len(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @ucom_put_data(i32*, %struct.usb_page_cache*, i32, i32) #1

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
