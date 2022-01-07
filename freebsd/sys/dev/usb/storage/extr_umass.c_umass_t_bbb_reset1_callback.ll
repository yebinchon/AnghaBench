; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_bbb_reset1_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_bbb_reset1_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umass_softc = type { i32 }
%struct.usb_device_request = type { i32, i32*, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@UMASS_T_BBB_RESET2 = common dso_local global i32 0, align 4
@UDMASS_BBB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"BBB reset!\0A\00", align 1
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_BBB_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umass_t_bbb_reset1_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_t_bbb_reset1_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umass_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.umass_softc* %9, %struct.umass_softc** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @USB_GET_STATE(%struct.usb_xfer* %10)
  switch i32 %11, label %49 [
    i32 128, label %12
    i32 129, label %16
  ]

12:                                               ; preds = %2
  %13 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %14 = load i32, i32* @UMASS_T_BBB_RESET2, align 4
  %15 = call i32 @umass_transfer_start(%struct.umass_softc* %13, i32 %14)
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %18 = load i32, i32* @UDMASS_BBB, align 4
  %19 = call i32 @DPRINTF(%struct.umass_softc* %17, i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @UR_BBB_RESET, align 4
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @USETW(i32 %25, i32 0)
  %27 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %28 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %29, i32* %32, align 4
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @USETW(i32 %37, i32 0)
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %40 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %39, i32 0)
  store %struct.usb_page_cache* %40, %struct.usb_page_cache** %7, align 8
  %41 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %42 = call i32 @usbd_copy_in(%struct.usb_page_cache* %41, i32 0, %struct.usb_device_request* %6, i32 32)
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %44 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %43, i32 0, i32 32)
  %45 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %46 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %45, i32 1)
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %48 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %47)
  br label %53

49:                                               ; preds = %2
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @umass_tr_error(%struct.usb_xfer* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %16, %12
  ret void
}

declare dso_local %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @umass_transfer_start(%struct.umass_softc*, i32) #1

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @umass_tr_error(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
