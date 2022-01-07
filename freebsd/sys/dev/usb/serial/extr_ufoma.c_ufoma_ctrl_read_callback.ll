; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_ctrl_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_ctrl_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ufoma_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_GET_ENCAPSULATED_RESPONSE = common dso_local global i32 0, align 4
@UFOMA_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"error = %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ufoma_ctrl_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_ctrl_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufoma_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 4
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.ufoma_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.ufoma_softc* %13, %struct.ufoma_softc** %5, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @usbd_xfer_status(%struct.usb_xfer* %14, i32* null, i32* null, i32* %10, i32* %11)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %80 [
    i32 128, label %18
    i32 129, label %38
  ]

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %88, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %39

24:                                               ; preds = %19
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %25, i32 1)
  store %struct.usb_page_cache* %26, %struct.usb_page_cache** %8, align 8
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = call i32 @usbd_xfer_frame_len(%struct.usb_xfer* %27, i32 1)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %32, i32 0, i32 2
  %34 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ucom_put_data(i32* %33, %struct.usb_page_cache* %34, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %31, %24
  br label %38

38:                                               ; preds = %2, %37
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %41 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %39
  %45 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @UT_READ_CLASS_INTERFACE, align 4
  %50 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @UCDC_GET_ENCAPSULATED_RESPONSE, align 4
  %52 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @USETW(i32 %54, i32 %57)
  %59 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @USETW(i32 %60, i32 0)
  %62 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UFOMA_CMD_BUF_SIZE, align 4
  %65 = call i32 @USETW(i32 %63, i32 %64)
  %66 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %67 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %66, i32 0)
  store %struct.usb_page_cache* %67, %struct.usb_page_cache** %7, align 8
  %68 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %69 = call i32 @usbd_copy_in(%struct.usb_page_cache* %68, i32 0, %struct.usb_device_request* %6, i32 20)
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %70, i32 0, i32 20)
  %72 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %73 = load i32, i32* @UFOMA_CMD_BUF_SIZE, align 4
  %74 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %72, i32 1, i32 %73)
  %75 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %76 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %75, i32 2)
  %77 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %78 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %77)
  br label %79

79:                                               ; preds = %44, %39
  br label %89

80:                                               ; preds = %2
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @usbd_errstr(i32 %81)
  %83 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %89

88:                                               ; preds = %80
  br label %19

89:                                               ; preds = %87, %79
  ret void
}

declare dso_local %struct.ufoma_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_frame_len(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_put_data(i32*, %struct.usb_page_cache*, i32, i32) #1

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
