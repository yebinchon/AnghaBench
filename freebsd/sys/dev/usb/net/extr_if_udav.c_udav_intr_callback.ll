; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }

@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @udav_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udav_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %6 = call i32 @USB_GET_STATE(%struct.usb_xfer* %5)
  switch i32 %6, label %15 [
    i32 128, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %2, %2
  br label %8

8:                                                ; preds = %19, %7
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %10)
  %12 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %9, i32 0, i32 %11)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %13)
  br label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %20)
  br label %8

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
