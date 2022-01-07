; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ucom_softc = type { i32 }
%struct.usb_page_cache = type { i32 }

@U3G_TXFRAMES = common dso_local global i32 0, align 4
@U3G_TXSIZE = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @u3g_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u3g_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ucom_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ucom_softc* %10, %struct.ucom_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @USB_GET_STATE(%struct.usb_xfer* %11)
  switch i32 %12, label %53 [
    i32 128, label %13
    i32 129, label %13
  ]

13:                                               ; preds = %2, %2
  br label %14

14:                                               ; preds = %57, %13
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %40, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @U3G_TXFRAMES, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @U3G_TXSIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer* %20, i32 %23, i32 %24)
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %26, i32 %27)
  store %struct.usb_page_cache* %28, %struct.usb_page_cache** %6, align 8
  %29 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %30 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %31 = load i32, i32* @U3G_TXSIZE, align 4
  %32 = call i32 @ucom_get_data(%struct.ucom_softc* %29, %struct.usb_page_cache* %30, i32 0, i32 %31, i32* %7)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %43

35:                                               ; preds = %19
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %15

43:                                               ; preds = %34, %15
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %47, i32 %48)
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %51 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %50)
  br label %52

52:                                               ; preds = %46, %43
  br label %61

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %59 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %58)
  br label %14

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %52
  ret void
}

declare dso_local %struct.ucom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_get_data(%struct.ucom_softc*, %struct.usb_page_cache*, i32, i32, i32*) #1

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
