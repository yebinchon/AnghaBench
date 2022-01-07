; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhub_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhub_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhub_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhub_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = call %struct.uhub_softc* @usbd_xfer_softc(%struct.usb_xfer* %6)
  store %struct.uhub_softc* %7, %struct.uhub_softc** %5, align 8
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call i32 @USB_GET_STATE(%struct.usb_xfer* %8)
  switch i32 %9, label %25 [
    i32 128, label %10
    i32 129, label %18
  ]

10:                                               ; preds = %2
  %11 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %13 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_needs_explore(i32 %16, i32 0)
  br label %18

18:                                               ; preds = %2, %10
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %20)
  %22 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %19, i32 0, i32 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %23)
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %33 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %32)
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %35)
  %37 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %34, i32 0, i32 %36)
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %38)
  br label %40

40:                                               ; preds = %31, %25
  br label %41

41:                                               ; preds = %40, %18
  ret void
}

declare dso_local %struct.uhub_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @usb_needs_explore(i32, i32) #1

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
