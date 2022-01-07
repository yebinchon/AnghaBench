; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_intr_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_intr_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.cdce_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Received %d bytes\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @cdce_intr_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdce_intr_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdce_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = call %struct.cdce_softc* @usbd_xfer_softc(%struct.usb_xfer* %7)
  store %struct.cdce_softc* %8, %struct.cdce_softc** %5, align 8
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call i32 @usbd_xfer_status(%struct.usb_xfer* %9, i32* %6, i32* null, i32* null, i32* null)
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @USB_GET_STATE(%struct.usb_xfer* %11)
  switch i32 %12, label %24 [
    i32 128, label %13
    i32 129, label %16
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %2, %13
  br label %17

17:                                               ; preds = %39, %16
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %19)
  %21 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %18, i32 0, i32 %20)
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %23 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %22)
  br label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %30 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usbd_get_mode(i32 %32)
  %34 = load i32, i32* @USB_MODE_HOST, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %38 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %37)
  br label %39

39:                                               ; preds = %36, %28
  br label %17

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %17
  ret void
}

declare dso_local %struct.cdce_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_get_mode(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
