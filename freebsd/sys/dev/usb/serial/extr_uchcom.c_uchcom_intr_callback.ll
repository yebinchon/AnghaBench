; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uchcom_softc = type { i32 }
%struct.usb_page_cache = type { i32 }

@UCHCOM_INTR_LEAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"actlen = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"data = 0x%02X 0x%02X 0x%02X 0x%02X\0A\00", align 1
@UCHCOM_INTR_STAT1 = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uchcom_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uchcom_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uchcom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.uchcom_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.uchcom_softc* %11, %struct.uchcom_softc** %5, align 8
  %12 = load i32, i32* @UCHCOM_INTR_LEAST, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @usbd_xfer_status(%struct.usb_xfer* %16, i32* %9, i32* null, i32* null, i32* null)
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @USB_GET_STATE(%struct.usb_xfer* %18)
  switch i32 %19, label %58 [
    i32 128, label %20
    i32 129, label %50
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @UCHCOM_INTR_LEAST, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %27, i32 0)
  store %struct.usb_page_cache* %28, %struct.usb_page_cache** %6, align 8
  %29 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %30 = load i32, i32* @UCHCOM_INTR_LEAST, align 4
  %31 = call i32 @usbd_copy_out(%struct.usb_page_cache* %29, i32 0, i32* %15, i32 %30)
  %32 = getelementptr inbounds i32, i32* %15, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = getelementptr inbounds i32, i32* %15, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %15, i64 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds i32, i32* %15, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35, i32 %37, i32 %39)
  %41 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %42 = load i64, i64* @UCHCOM_INTR_STAT1, align 8
  %43 = getelementptr inbounds i32, i32* %15, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uchcom_convert_status(%struct.uchcom_softc* %41, i32 %44)
  %46 = load %struct.uchcom_softc*, %struct.uchcom_softc** %5, align 8
  %47 = getelementptr inbounds %struct.uchcom_softc, %struct.uchcom_softc* %46, i32 0, i32 0
  %48 = call i32 @ucom_status_change(i32* %47)
  br label %49

49:                                               ; preds = %26, %20
  br label %50

50:                                               ; preds = %2, %49
  br label %51

51:                                               ; preds = %62, %50
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %54 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %53)
  %55 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %52, i32 0, i32 %54)
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %56)
  br label %66

58:                                               ; preds = %2
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %63)
  br label %51

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %67)
  ret void
}

declare dso_local %struct.uchcom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @uchcom_convert_status(%struct.uchcom_softc*, i32) #1

declare dso_local i32 @ucom_status_change(i32*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
