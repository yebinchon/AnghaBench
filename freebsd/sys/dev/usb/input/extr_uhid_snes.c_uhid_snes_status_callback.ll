; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhid_snes_softc = type { i32, i32 }
%struct.usb_device_request = type { i32, i32*, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UREQ_GET_PORT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhid_snes_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhid_snes_status_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhid_snes_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.uhid_snes_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.uhid_snes_softc* %11, %struct.uhid_snes_softc** %5, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  switch i32 %13, label %60 [
    i32 129, label %14
    i32 128, label %46
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @UT_READ_CLASS_INTERFACE, align 4
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @UREQ_GET_PORT_STATUS, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @USETW(i32 %20, i32 0)
  %22 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %5, align 8
  %23 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %24, i32* %27, align 4
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @USETW(i32 %32, i32 1)
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %35 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %34, i32 0)
  store %struct.usb_page_cache* %35, %struct.usb_page_cache** %7, align 8
  %36 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %37 = call i32 @usbd_copy_in(%struct.usb_page_cache* %36, i32 0, %struct.usb_device_request* %6, i32 32)
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %38, i32 0, i32 32)
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %41 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %40, i32 1, i32 1)
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %43 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %42, i32 2)
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %45 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %44)
  br label %61

46:                                               ; preds = %2
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %48 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %47, i32 1)
  store %struct.usb_page_cache* %48, %struct.usb_page_cache** %7, align 8
  %49 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %50 = call i32 @usbd_copy_out(%struct.usb_page_cache* %49, i32 0, i32* %8, i32 1)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %5, align 8
  %53 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %5, align 8
  %59 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %46, %14
  ret void
}

declare dso_local %struct.uhid_snes_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
