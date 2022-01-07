; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_if_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.usie_softc = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.usb_cdc_notification = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"info received, actlen=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"data too short %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"bNotification=%x\0A\00", align 1
@UCDC_N_RESPONSE_AVAILABLE = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"USB transfer error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @usie_if_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_if_status_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usie_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca %struct.usb_cdc_notification, align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.usie_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.usie_softc* %10, %struct.usie_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_status(%struct.usb_xfer* %11, i32* %8, i32* null, i32* null, i32* null)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %51 [
    i32 128, label %15
    i32 129, label %43
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, -12
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %44

24:                                               ; preds = %15
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %25, i32 0)
  store %struct.usb_page_cache* %26, %struct.usb_page_cache** %6, align 8
  %27 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %28 = call i32 @usbd_copy_out(%struct.usb_page_cache* %27, i32 0, %struct.usb_cdc_notification* %7, i32 -12)
  %29 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UCDC_N_RESPONSE_AVAILABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load i32, i32* @taskqueue_thread, align 4
  %39 = load %struct.usie_softc*, %struct.usie_softc** %5, align 8
  %40 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %39, i32 0, i32 0
  %41 = call i32 @taskqueue_enqueue(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %24
  br label %43

43:                                               ; preds = %2, %42
  br label %44

44:                                               ; preds = %58, %43, %21
  %45 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %47 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %46)
  %48 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %45, i32 0, i32 %47)
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %50 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %49)
  br label %62

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @usbd_errstr(i32 %52)
  %54 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %60 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %59)
  br label %44

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %44
  ret void
}

declare dso_local %struct.usie_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.usb_cdc_notification*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
