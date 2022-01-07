; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ulpt.c_ulpt_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ulpt_softc = type { i32, %struct.usb_fifo** }
%struct.usb_fifo = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_FIFO_RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"no FIFO\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"state=0x%x\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ulpt_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulpt_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ulpt_softc*, align 8
  %6 = alloca %struct.usb_fifo*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ulpt_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ulpt_softc* %10, %struct.ulpt_softc** %5, align 8
  %11 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %11, i32 0, i32 1
  %13 = load %struct.usb_fifo**, %struct.usb_fifo*** %12, align 8
  %14 = load i64, i64* @USB_FIFO_RX, align 8
  %15 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %13, i64 %14
  %16 = load %struct.usb_fifo*, %struct.usb_fifo** %15, align 8
  store %struct.usb_fifo* %16, %struct.usb_fifo** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @usbd_xfer_status(%struct.usb_xfer* %17, i32* %8, i32* null, i32* null, i32* null)
  %19 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %20 = icmp eq %struct.usb_fifo* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %83

23:                                               ; preds = %2
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = call i32 @USB_GET_STATE(%struct.usb_xfer* %24)
  %26 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = call i32 @USB_GET_STATE(%struct.usb_xfer* %27)
  switch i32 %28, label %71 [
    i32 128, label %29
    i32 129, label %58
  ]

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = call i32 @usbd_xfer_set_interval(%struct.usb_xfer* %38, i32 500)
  br label %45

40:                                               ; preds = %32
  %41 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %37
  br label %51

46:                                               ; preds = %29
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %48 = call i32 @usbd_xfer_set_interval(%struct.usb_xfer* %47, i32 0)
  %49 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %50 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %45
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %53 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %52, i32 0)
  store %struct.usb_page_cache* %53, %struct.usb_page_cache** %7, align 8
  %54 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %55 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @usb_fifo_put_data(%struct.usb_fifo* %54, %struct.usb_page_cache* %55, i32 0, i32 %56, i32 1)
  br label %58

58:                                               ; preds = %23, %51
  br label %59

59:                                               ; preds = %79, %58
  %60 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %61 = call i32 @usb_fifo_put_bytes_max(%struct.usb_fifo* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %66 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %65)
  %67 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %64, i32 0, i32 %66)
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %69 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %68)
  br label %70

70:                                               ; preds = %63, %59
  br label %83

71:                                               ; preds = %23
  %72 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %73 = call i32 @usbd_xfer_set_interval(%struct.usb_xfer* %72, i32 0)
  %74 = load %struct.ulpt_softc*, %struct.ulpt_softc** %5, align 8
  %75 = getelementptr inbounds %struct.ulpt_softc, %struct.ulpt_softc* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %81 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %80)
  br label %59

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %21, %82, %70
  ret void
}

declare dso_local %struct.ulpt_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_interval(%struct.usb_xfer*, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_fifo_put_data(%struct.usb_fifo*, %struct.usb_page_cache*, i32, i32, i32) #1

declare dso_local i32 @usb_fifo_put_bytes_max(%struct.usb_fifo*) #1

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
