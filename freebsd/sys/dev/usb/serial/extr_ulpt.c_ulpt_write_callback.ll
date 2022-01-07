; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ulpt_softc = type { %struct.usb_fifo** }
%struct.usb_fifo = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_FIFO_TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"no FIFO\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"state=0x%x actlen=%d\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ulpt_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulpt_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ulpt_softc*, align 8
  %6 = alloca %struct.usb_fifo*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.ulpt_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.ulpt_softc* %11, %struct.ulpt_softc** %5, align 8
  %12 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %13 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %12, i32 0, i32 0
  %14 = load %struct.usb_fifo**, %struct.usb_fifo*** %13, align 8
  %15 = load i64, i64* @USB_FIFO_TX, align 8
  %16 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %14, i64 %15
  %17 = load %struct.usb_fifo*, %struct.usb_fifo** %16, align 8
  store %struct.usb_fifo* %17, %struct.usb_fifo** %6, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %8, i32* null, i32* null, i32* null)
  %20 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %21 = icmp eq %struct.usb_fifo* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = call i32 @USB_GET_STATE(%struct.usb_xfer* %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = call i32 @USB_GET_STATE(%struct.usb_xfer* %29)
  switch i32 %30, label %49 [
    i32 128, label %31
    i32 129, label %31
  ]

31:                                               ; preds = %24, %24
  br label %32

32:                                               ; preds = %53, %31
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %34 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %33, i32 0)
  store %struct.usb_page_cache* %34, %struct.usb_page_cache** %7, align 8
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %38 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @usb_fifo_get_data(%struct.usb_fifo* %37, %struct.usb_page_cache* %38, i32 0, i32 %39, i32* %8, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %43, i32 0, i32 %44)
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %47 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %46)
  br label %48

48:                                               ; preds = %42, %32
  br label %57

49:                                               ; preds = %24
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %55 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %54)
  br label %32

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %22, %56, %48
  ret void
}

declare dso_local %struct.ulpt_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usb_fifo_get_data(%struct.usb_fifo*, %struct.usb_page_cache*, i32, i32, i32*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
