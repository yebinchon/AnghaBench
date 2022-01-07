; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umoscom_softc = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"got %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"transfer failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umoscom_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umoscom_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umoscom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.umoscom_softc* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.umoscom_softc* %9, %struct.umoscom_softc** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @usbd_xfer_status(%struct.usb_xfer* %10, i32* %7, i32* null, i32* null, i32* null)
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  switch i32 %13, label %33 [
    i32 128, label %14
    i32 129, label %24
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %17, i32 0)
  store %struct.usb_page_cache* %18, %struct.usb_page_cache** %6, align 8
  %19 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %20 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %19, i32 0, i32 0
  %21 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ucom_put_data(i32* %20, %struct.usb_page_cache* %21, i32 0, i32 %22)
  br label %24

24:                                               ; preds = %2, %14
  br label %25

25:                                               ; preds = %37, %24
  %26 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %29 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %28)
  %30 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %27, i32 0, i32 %29)
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %31)
  br label %42

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %40 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %39)
  br label %25

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %25
  ret void
}

declare dso_local %struct.umoscom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_put_data(i32*, %struct.usb_page_cache*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
