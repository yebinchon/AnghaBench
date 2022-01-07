; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ulpt_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i32, i32*, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@LPS_INVERT = common dso_local global i32 0, align 4
@LPS_MASK = common dso_local global i32 0, align 4
@LPS_SELECT = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s: offline\0A\00", align 1
@LPS_NOPAPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: out of paper\0A\00", align 1
@LPS_NERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: output error\0A\00", align 1
@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_GET_PORT_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ulpt_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulpt_status_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ulpt_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.ulpt_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.ulpt_softc* %11, %struct.ulpt_softc** %5, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  switch i32 %13, label %103 [
    i32 128, label %14
    i32 129, label %71
  ]

14:                                               ; preds = %2
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %15, i32 1)
  store %struct.usb_page_cache* %16, %struct.usb_page_cache** %7, align 8
  %17 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %18 = call i32 @usbd_copy_out(%struct.usb_page_cache* %17, i32 0, i32* %8, i32 1)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @LPS_INVERT, align 4
  %21 = xor i32 %19, %20
  %22 = load i32, i32* @LPS_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @LPS_SELECT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %14
  %38 = load i32, i32* @LOG_NOTICE, align 4
  %39 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_get_nameunit(i32 %41)
  %43 = call i32 @log(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %70

44:                                               ; preds = %14
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @LPS_NOPAPER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* @LOG_NOTICE, align 4
  %51 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %52 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @device_get_nameunit(i32 %53)
  %55 = call i32 @log(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %69

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @LPS_NERR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* @LOG_NOTICE, align 4
  %63 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %64 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @device_get_nameunit(i32 %65)
  %67 = call i32 @log(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %61, %56
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %69, %37
  br label %112

71:                                               ; preds = %2
  %72 = load i32, i32* @UT_READ_CLASS_INTERFACE, align 4
  %73 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* @UR_GET_PORT_STATUS, align 4
  %75 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @USETW(i32 %77, i32 0)
  %79 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %80 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %81, i32* %84, align 4
  %85 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @USETW(i32 %89, i32 1)
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %92 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %91, i32 0)
  store %struct.usb_page_cache* %92, %struct.usb_page_cache** %7, align 8
  %93 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %94 = call i32 @usbd_copy_in(%struct.usb_page_cache* %93, i32 0, %struct.usb_device_request* %6, i32 32)
  %95 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %96 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %95, i32 0, i32 32)
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %98 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %97, i32 1, i32 1)
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %100 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %99, i32 2)
  %101 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %102 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %101)
  br label %112

103:                                              ; preds = %2
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @usbd_errstr(i32 %104)
  %106 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %103
  br label %112

112:                                              ; preds = %111, %71, %70
  ret void
}

declare dso_local %struct.ulpt_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

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
