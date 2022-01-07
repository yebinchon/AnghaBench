; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umcs7840_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_page_cache = type { i32 }

@MCS7840_UART_ISR_NOPENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Port %d has pending interrupt: %02x (FIFO: %02x)\0A\00", align 1
@MCS7840_UART_ISR_INTMASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid interrupt data length %d\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umcs7840_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umcs7840_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umcs7840_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca [13 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.umcs7840_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.umcs7840_softc* %12, %struct.umcs7840_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %8, i32* null, i32* null, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %100 [
    i32 128, label %17
    i32 129, label %92
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 13
  br i1 %22, label %23, label %85

23:                                               ; preds = %20, %17
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %24, i32 0)
  store %struct.usb_page_cache* %25, %struct.usb_page_cache** %6, align 8
  %26 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %27 = getelementptr inbounds [13 x i64], [13 x i64]* %7, i64 0, i64 0
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @usbd_copy_out(%struct.usb_page_cache* %26, i32 0, i64* %27, i32 %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %81, %23
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %33 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %30
  %37 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %38 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds [13 x i64], [13 x i64]* %7, i64 0, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MCS7840_UART_ISR_NOPENDING, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %81

52:                                               ; preds = %36
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds [13 x i64], [13 x i64]* %7, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MCS7840_UART_ISR_INTMASK, align 8
  %58 = and i64 %56, %57
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds [13 x i64], [13 x i64]* %7, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MCS7840_UART_ISR_INTMASK, align 8
  %63 = xor i64 %62, -1
  %64 = and i64 %61, %63
  %65 = call i32 @DPRINTF(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %58, i64 %64)
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds [13 x i64], [13 x i64]* %7, i64 0, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MCS7840_UART_ISR_INTMASK, align 8
  %70 = and i64 %68, %69
  switch i64 %70, label %79 [
    i64 132, label %71
    i64 131, label %71
    i64 130, label %71
    i64 133, label %71
  ]

71:                                               ; preds = %52, %52, %52, %52
  %72 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %73 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = call i32 @ucom_status_change(%struct.TYPE_2__* %77)
  br label %80

79:                                               ; preds = %52
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %30

84:                                               ; preds = %30
  br label %91

85:                                               ; preds = %20
  %86 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %87 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %84
  br label %92

92:                                               ; preds = %2, %91
  br label %93

93:                                               ; preds = %104, %92
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %95 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %96 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %95)
  %97 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %94, i32 0, i32 %96)
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %99 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %98)
  br label %108

100:                                              ; preds = %2
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %106 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %105)
  br label %93

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %93
  ret void
}

declare dso_local %struct.umcs7840_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i64*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i64, i64, i64) #1

declare dso_local i32 @ucom_status_change(%struct.TYPE_2__*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

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
