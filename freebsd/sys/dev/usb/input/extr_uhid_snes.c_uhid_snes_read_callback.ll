; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhid_snes_softc = type { i32, %struct.usb_fifo** }
%struct.usb_fifo = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_FIFO_RX = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhid_snes_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhid_snes_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhid_snes_softc*, align 8
  %6 = alloca %struct.usb_fifo*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.uhid_snes_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.uhid_snes_softc* %11, %struct.uhid_snes_softc** %5, align 8
  %12 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %5, align 8
  %13 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %12, i32 0, i32 1
  %14 = load %struct.usb_fifo**, %struct.usb_fifo*** %13, align 8
  %15 = load i64, i64* @USB_FIFO_RX, align 8
  %16 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %14, i64 %15
  %17 = load %struct.usb_fifo*, %struct.usb_fifo** %16, align 8
  store %struct.usb_fifo* %17, %struct.usb_fifo** %6, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %8, i32* null, i32* null, i32* null)
  %20 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %21 = icmp eq %struct.usb_fifo* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %81

23:                                               ; preds = %2
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = call i32 @USB_GET_STATE(%struct.usb_xfer* %24)
  switch i32 %25, label %69 [
    i32 128, label %26
    i32 129, label %56
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %5, align 8
  %31 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = call i32 @usbd_xfer_set_interval(%struct.usb_xfer* %35, i32 500)
  br label %42

37:                                               ; preds = %29
  %38 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %5, align 8
  %39 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %34
  br label %48

43:                                               ; preds = %26
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %45 = call i32 @usbd_xfer_set_interval(%struct.usb_xfer* %44, i32 0)
  %46 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %5, align 8
  %47 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %42
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %50 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %49, i32 0)
  store %struct.usb_page_cache* %50, %struct.usb_page_cache** %7, align 8
  %51 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %52 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @usb_fifo_put_data(%struct.usb_fifo* %51, %struct.usb_page_cache* %52, i32 0, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %77, %48
  br label %56

56:                                               ; preds = %23, %55
  %57 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %58 = call i32 @usb_fifo_put_bytes_max(%struct.usb_fifo* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %62 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %63, i32 0, i32 %64)
  %66 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %67 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %66)
  br label %68

68:                                               ; preds = %60, %56
  br label %81

69:                                               ; preds = %23
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = call i32 @usbd_xfer_set_interval(%struct.usb_xfer* %70, i32 0)
  %72 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %5, align 8
  %73 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %79 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %78)
  br label %55

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %22, %80, %68
  ret void
}

declare dso_local %struct.uhid_snes_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_interval(%struct.usb_xfer*, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_fifo_put_data(%struct.usb_fifo*, %struct.usb_page_cache*, i32, i32, i32) #1

declare dso_local i32 @usb_fifo_put_bytes_max(%struct.usb_fifo*) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
