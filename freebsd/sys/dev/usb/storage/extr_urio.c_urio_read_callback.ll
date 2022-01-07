; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.urio_softc = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_fifo** }
%struct.usb_fifo = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_FIFO_RX = common dso_local global i64 0, align 8
@URIO_FLAG_READ_STALL = common dso_local global i32 0, align 4
@URIO_T_RD_CS = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @urio_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urio_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urio_softc*, align 8
  %6 = alloca %struct.usb_fifo*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.urio_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.urio_softc* %10, %struct.urio_softc** %5, align 8
  %11 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %12 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_fifo**, %struct.usb_fifo*** %13, align 8
  %15 = load i64, i64* @USB_FIFO_RX, align 8
  %16 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %14, i64 %15
  %17 = load %struct.usb_fifo*, %struct.usb_fifo** %16, align 8
  store %struct.usb_fifo* %17, %struct.usb_fifo** %6, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %8, i32* null, i32* null, i32* null)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %56 [
    i32 128, label %22
    i32 129, label %29
  ]

22:                                               ; preds = %2
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %23, i32 0)
  store %struct.usb_page_cache* %24, %struct.usb_page_cache** %7, align 8
  %25 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %26 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @usb_fifo_put_data(%struct.usb_fifo* %25, %struct.usb_page_cache* %26, i32 0, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %2, %22
  %30 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %31 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @URIO_FLAG_READ_STALL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %38 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @URIO_T_RD_CS, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usbd_transfer_start(i32 %42)
  br label %74

44:                                               ; preds = %29
  %45 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %46 = call i32 @usb_fifo_put_bytes_max(%struct.usb_fifo* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %51 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %50)
  %52 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %49, i32 0, i32 %51)
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %54 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %53)
  br label %55

55:                                               ; preds = %48, %44
  br label %74

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* @URIO_FLAG_READ_STALL, align 4
  %62 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %63 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %67 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @URIO_T_RD_CS, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usbd_transfer_start(i32 %71)
  br label %73

73:                                               ; preds = %60, %56
  br label %74

74:                                               ; preds = %73, %55, %36
  ret void
}

declare dso_local %struct.urio_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_fifo_put_data(%struct.usb_fifo*, %struct.usb_page_cache*, i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @usb_fifo_put_bytes_max(%struct.usb_fifo*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
