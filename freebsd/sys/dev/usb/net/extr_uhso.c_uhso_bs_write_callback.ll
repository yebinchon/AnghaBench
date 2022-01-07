; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_bs_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_bs_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhso_softc = type { i32* }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"status %d, actlen=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhso_bs_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_bs_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhso_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.uhso_softc* %9, %struct.uhso_softc** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @usbd_xfer_status(%struct.usb_xfer* %10, i32* %7, i32* null, i32* null, i32* null)
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %36 [
    i32 128, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %2, %2
  br label %19

19:                                               ; preds = %44, %18
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %20, i32 0)
  store %struct.usb_page_cache* %21, %struct.usb_page_cache** %6, align 8
  %22 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %23 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %27 = call i32 @ucom_get_data(i32* %25, %struct.usb_page_cache* %26, i32 0, i32 8192, i32* %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %30, i32 0, i32 %31)
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %34 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %33)
  br label %35

35:                                               ; preds = %29, %19
  br label %47

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @usbd_errstr(i32 %37)
  %39 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %47

44:                                               ; preds = %36
  %45 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %46 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %45)
  br label %19

47:                                               ; preds = %43, %35
  ret void
}

declare dso_local %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_get_data(i32*, %struct.usb_page_cache*, i32, i32, i32*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
