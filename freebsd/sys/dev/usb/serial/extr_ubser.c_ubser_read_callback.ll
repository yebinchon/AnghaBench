; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ubser_softc = type { i64, i64 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid actlen=0!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid serial number!\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ubser_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubser_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubser_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca [1 x i64], align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ubser_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ubser_softc* %10, %struct.ubser_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_status(%struct.usb_xfer* %11, i32* %8, i32* null, i32* null, i32* null)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %53 [
    i32 128, label %15
    i32 129, label %45
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %46

20:                                               ; preds = %15
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %21, i32 0)
  store %struct.usb_page_cache* %22, %struct.usb_page_cache** %6, align 8
  %23 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %24 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %25 = call i32 @usbd_copy_out(%struct.usb_page_cache* %23, i32 0, i64* %24, i32 1)
  %26 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %46

34:                                               ; preds = %20
  %35 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %37, %39
  %41 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @ucom_put_data(i64 %40, %struct.usb_page_cache* %41, i32 1, i32 %43)
  br label %45

45:                                               ; preds = %2, %34
  br label %46

46:                                               ; preds = %57, %45, %32, %18
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %49 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %48)
  %50 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %47, i32 0, i32 %49)
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %52 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %51)
  br label %61

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %59 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %58)
  br label %46

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %46
  ret void
}

declare dso_local %struct.ubser_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i64*, i32) #1

declare dso_local i32 @ucom_put_data(i64, %struct.usb_page_cache*, i32, i32) #1

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
