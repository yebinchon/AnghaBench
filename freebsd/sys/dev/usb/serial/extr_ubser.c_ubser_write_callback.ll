; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ubser_softc = type { i64, i32, i64 }
%struct.usb_page_cache = type { i32 }

@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ubser_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubser_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubser_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca [1 x i64], align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.ubser_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.ubser_softc* %11, %struct.ubser_softc** %5, align 8
  %12 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %13 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %62 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %2, %2
  br label %18

18:                                               ; preds = %66, %17
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %19, i32 0)
  store %struct.usb_page_cache* %20, %struct.usb_page_cache** %6, align 8
  br label %21

21:                                               ; preds = %55, %18
  %22 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %23 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %30 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %31 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @ucom_get_data(i64 %28, %struct.usb_page_cache* %29, i32 1, i32 %33, i32* %9)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %21
  %37 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %38 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %42 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %43 = call i32 @usbd_copy_in(%struct.usb_page_cache* %41, i32 0, i64* %42, i32 1)
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %44, i32 0, i32 %46)
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %49 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %48)
  %50 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %51 = call i32 @ubser_inc_tx_unit(%struct.ubser_softc* %50)
  br label %61

52:                                               ; preds = %21
  %53 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %54 = call i32 @ubser_inc_tx_unit(%struct.ubser_softc* %53)
  br label %55

55:                                               ; preds = %52
  %56 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %57 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %21, label %61

61:                                               ; preds = %55, %36
  br label %70

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %68 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %67)
  br label %18

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %61
  ret void
}

declare dso_local %struct.ubser_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_get_data(i64, %struct.usb_page_cache*, i32, i32, i32*) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i64*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @ubser_inc_tx_unit(%struct.ubser_softc*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
