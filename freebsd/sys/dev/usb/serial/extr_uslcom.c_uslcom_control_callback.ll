; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_control_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_control_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uslcom_softc = type { i32, i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@USLCOM_MHS_CTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@USLCOM_MHS_DSR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@USLCOM_MHS_RI = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@USLCOM_MHS_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"status change msr=0x%02x (was 0x%02x)\0A\00", align 1
@USLCOM_READ = common dso_local global i32 0, align 4
@USLCOM_GET_MDMSTS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uslcom_control_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uslcom_control_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uslcom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca %struct.usb_device_request, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.uslcom_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.uslcom_softc* %11, %struct.uslcom_softc** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  switch i32 %13, label %102 [
    i32 128, label %14
    i32 129, label %73
  ]

14:                                               ; preds = %2
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %15, i32 1)
  store %struct.usb_page_cache* %16, %struct.usb_page_cache** %6, align 8
  %17 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %18 = call i32 @usbd_copy_out(%struct.usb_page_cache* %17, i32 0, i32* %9, i32 4)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @USLCOM_MHS_CTS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @SER_CTS, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @USLCOM_MHS_DSR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @SER_DSR, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @USLCOM_MHS_RI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @SER_RI, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @USLCOM_MHS_DCD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @SER_DCD, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %57 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %63 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %68 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %70 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %69, i32 0, i32 2
  %71 = call i32 @ucom_status_change(i32* %70)
  br label %72

72:                                               ; preds = %60, %54
  br label %111

73:                                               ; preds = %2
  %74 = load i32, i32* @USLCOM_READ, align 4
  %75 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @USLCOM_GET_MDMSTS, align 4
  %77 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @USETW(i32 %79, i32 0)
  %81 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %84 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @USETW(i32 %82, i32 %85)
  %87 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @USETW(i32 %88, i32 4)
  %90 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %91 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %90, i32 2)
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %93 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %92, i32 0, i32 20)
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %95 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %94, i32 1, i32 4)
  %96 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %97 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %96, i32 0)
  store %struct.usb_page_cache* %97, %struct.usb_page_cache** %6, align 8
  %98 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %99 = call i32 @usbd_copy_in(%struct.usb_page_cache* %98, i32 0, %struct.usb_device_request* %7, i32 20)
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %101 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %100)
  br label %111

102:                                              ; preds = %2
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @usbd_errstr(i32 %107)
  %109 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %102
  br label %111

111:                                              ; preds = %110, %73, %72
  ret void
}

declare dso_local %struct.uslcom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @ucom_status_change(i32*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
