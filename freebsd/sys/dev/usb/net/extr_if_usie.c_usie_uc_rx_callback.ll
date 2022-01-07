; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_uc_rx_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_uc_rx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ucom_softc = type { %struct.usie_softc* }
%struct.usie_softc = type { i32*, %struct.ucom_softc* }
%struct.usb_page_cache = type { i32 }

@USIE_HIPCNS_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"transferred=%u\0A\00", align 1
@USIE_HIP_FRM_CHR = common dso_local global i32 0, align 4
@USIE_BUFSIZE = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @usie_uc_rx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_uc_rx_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucom_softc*, align 8
  %6 = alloca %struct.usie_softc*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ucom_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ucom_softc* %10, %struct.ucom_softc** %5, align 8
  %11 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %11, i32 0, i32 0
  %13 = load %struct.usie_softc*, %struct.usie_softc** %12, align 8
  store %struct.usie_softc* %13, %struct.usie_softc** %6, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @usbd_xfer_status(%struct.usb_xfer* %14, i32* %8, i32* null, i32* null, i32* null)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %78 [
    i32 128, label %18
    i32 129, label %70
  ]

18:                                               ; preds = %2
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %19, i32 0)
  store %struct.usb_page_cache* %20, %struct.usb_page_cache** %7, align 8
  %21 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %22 = load %struct.usie_softc*, %struct.usie_softc** %6, align 8
  %23 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %22, i32 0, i32 1
  %24 = load %struct.ucom_softc*, %struct.ucom_softc** %23, align 8
  %25 = icmp eq %struct.ucom_softc* %21, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @USIE_HIPCNS_MIN, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %34 = load %struct.usie_softc*, %struct.usie_softc** %6, align 8
  %35 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @usbd_copy_out(%struct.usb_page_cache* %33, i32 0, i32* %36, i32 1)
  %38 = load %struct.usie_softc*, %struct.usie_softc** %6, align 8
  %39 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @USIE_HIP_FRM_CHR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %30
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @USIE_BUFSIZE, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @USIE_BUFSIZE, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %53 = load %struct.usie_softc*, %struct.usie_softc** %6, align 8
  %54 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @usbd_copy_out(%struct.usb_page_cache* %52, i32 0, i32* %55, i32 %56)
  %58 = load %struct.usie_softc*, %struct.usie_softc** %6, align 8
  %59 = load %struct.usie_softc*, %struct.usie_softc** %6, align 8
  %60 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @usie_hip_rsp(%struct.usie_softc* %58, i32* %61, i32 %62)
  br label %71

64:                                               ; preds = %30
  br label %65

65:                                               ; preds = %64, %26, %18
  %66 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %67 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ucom_put_data(%struct.ucom_softc* %66, %struct.usb_page_cache* %67, i32 0, i32 %68)
  br label %70

70:                                               ; preds = %2, %65
  br label %71

71:                                               ; preds = %82, %70, %51
  %72 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %74 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %73)
  %75 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %72, i32 0, i32 %74)
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %77 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %76)
  br label %86

78:                                               ; preds = %2
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %84 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %83)
  br label %71

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %71
  ret void
}

declare dso_local %struct.ucom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usie_hip_rsp(%struct.usie_softc*, i32*, i32) #1

declare dso_local i32 @ucom_put_data(%struct.ucom_softc*, %struct.usb_page_cache*, i32, i32) #1

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
