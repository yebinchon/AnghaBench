; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid.c_uhid_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhid_softc = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.usb_device_request = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_FIFO_TX = common dso_local global i64 0, align 8
@UHID_BSIZE = common dso_local global i32 0, align 4
@UHID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhid_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhid_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhid_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 4
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.uhid_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.uhid_softc* %12, %struct.uhid_softc** %5, align 8
  %13 = load %struct.uhid_softc*, %struct.uhid_softc** %5, align 8
  %14 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %97 [
    i32 128, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.uhid_softc*, %struct.uhid_softc** %5, align 8
  %20 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %24, i32 0)
  store %struct.usb_page_cache* %25, %struct.usb_page_cache** %7, align 8
  %26 = load %struct.uhid_softc*, %struct.uhid_softc** %5, align 8
  %27 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @USB_FIFO_TX, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %34 = call i32 @usb_fifo_get_data(i32 %32, %struct.usb_page_cache* %33, i32 0, i32 1, i32* %9, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %98

40:                                               ; preds = %36
  %41 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %42 = call i32 @usbd_copy_out(%struct.usb_page_cache* %41, i32 0, i32* %10, i32 1)
  br label %44

43:                                               ; preds = %23
  br label %107

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %52

51:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %54 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %53, i32 1)
  store %struct.usb_page_cache* %54, %struct.usb_page_cache** %7, align 8
  %55 = load %struct.uhid_softc*, %struct.uhid_softc** %5, align 8
  %56 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @USB_FIFO_TX, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %63 = load i32, i32* @UHID_BSIZE, align 4
  %64 = call i32 @usb_fifo_get_data(i32 %61, %struct.usb_page_cache* %62, i32 0, i32 %63, i32* %9, i32 1)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %98

71:                                               ; preds = %66
  %72 = load %struct.uhid_softc*, %struct.uhid_softc** %5, align 8
  %73 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @UHID_OUTPUT_REPORT, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @uhid_fill_set_report(%struct.usb_device_request* %6, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %80 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %79, i32 0)
  store %struct.usb_page_cache* %80, %struct.usb_page_cache** %7, align 8
  %81 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %82 = call i32 @usbd_copy_in(%struct.usb_page_cache* %81, i32 0, %struct.usb_device_request* %6, i32 4)
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %84 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %83, i32 0, i32 4)
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %85, i32 1, i32 %86)
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 2, i32 1
  %93 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %88, i32 %92)
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %95 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %94)
  br label %96

96:                                               ; preds = %71, %52
  br label %107

97:                                               ; preds = %2
  br label %98

98:                                               ; preds = %97, %70, %39
  %99 = load %struct.uhid_softc*, %struct.uhid_softc** %5, align 8
  %100 = getelementptr inbounds %struct.uhid_softc, %struct.uhid_softc* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @USB_FIFO_TX, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @usb_fifo_get_data_error(i32 %105)
  br label %107

107:                                              ; preds = %98, %96, %43
  ret void
}

declare dso_local %struct.uhid_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_fifo_get_data(i32, %struct.usb_page_cache*, i32, i32, i32*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @uhid_fill_set_report(%struct.usb_device_request*, i32, i32, i32, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usb_fifo_get_data_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
