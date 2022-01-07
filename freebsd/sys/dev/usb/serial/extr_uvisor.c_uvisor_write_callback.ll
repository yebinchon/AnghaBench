; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvisor.c_uvisor_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvisor.c_uvisor_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uvisor_softc = type { i32 }
%struct.usb_page_cache = type { i32 }

@UVISOROFRAMES = common dso_local global i32 0, align 4
@UVISOROBUFSIZE = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uvisor_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvisor_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvisor_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.uvisor_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.uvisor_softc* %10, %struct.uvisor_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @USB_GET_STATE(%struct.usb_xfer* %11)
  switch i32 %12, label %55 [
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %2, %2
  br label %14

14:                                               ; preds = %59, %13
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @UVISOROFRAMES, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @UVISOROBUFSIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer* %20, i32 %23, i32 %24)
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %26, i32 %27)
  store %struct.usb_page_cache* %28, %struct.usb_page_cache** %6, align 8
  %29 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %29, i32 0, i32 0
  %31 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %32 = load i32, i32* @UVISOROBUFSIZE, align 4
  %33 = call i32 @ucom_get_data(i32* %30, %struct.usb_page_cache* %31, i32 0, i32 %32, i32* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %19
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %36, i32 %37, i32 %38)
  br label %41

40:                                               ; preds = %19
  br label %45

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %15

45:                                               ; preds = %40, %15
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %49, i32 %50)
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %53 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %52)
  br label %54

54:                                               ; preds = %48, %45
  br label %63

55:                                               ; preds = %2
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %61 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %60)
  br label %14

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %54
  ret void
}

declare dso_local %struct.uvisor_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_get_data(i32*, %struct.usb_page_cache*, i32, i32, i32*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
