; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_handle_request.c_usb_handle_set_stall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_handle_request.c_usb_handle_set_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*, i32, i32)* @usb_handle_set_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_handle_set_stall(%struct.usb_xfer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %10 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %7, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %15 = call i32 @USB_XFER_UNLOCK(%struct.usb_xfer* %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @usbd_get_ep_by_addr(%struct.usb_device* %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @usbd_set_endpoint_stall(%struct.usb_device* %16, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %23 = call i32 @USB_XFER_LOCK(%struct.usb_xfer* %22)
  %24 = load i32, i32* %8, align 4
  ret i32 %24
}

declare dso_local i32 @USB_XFER_UNLOCK(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_set_endpoint_stall(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usbd_get_ep_by_addr(%struct.usb_device*, i32) #1

declare dso_local i32 @USB_XFER_LOCK(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
