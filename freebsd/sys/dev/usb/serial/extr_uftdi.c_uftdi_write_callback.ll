; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uftdi_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@UFTDI_OBUFSIZE = common dso_local global i64 0, align 8
@UFTDI_OPKTSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uftdi_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uftdi_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uftdi_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1 x i32], align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.uftdi_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.uftdi_softc* %11, %struct.uftdi_softc** %5, align 8
  %12 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %15 [
    i32 129, label %23
    i32 128, label %23
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %20)
  br label %22

22:                                               ; preds = %19, %15
  br label %23

23:                                               ; preds = %2, %2, %22
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %24, i32 0)
  store %struct.usb_page_cache* %25, %struct.usb_page_cache** %6, align 8
  %26 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %27 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %32 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %31, i32 0, i32 1
  %33 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %34 = load i64, i64* @UFTDI_OBUFSIZE, align 8
  %35 = call i32 @ucom_get_data(%struct.TYPE_2__* %32, %struct.usb_page_cache* %33, i64 0, i64 %34, i64* %8)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %97

38:                                               ; preds = %30
  br label %87

39:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %67, %39
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @UFTDI_OBUFSIZE, align 8
  %43 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %44 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = sub nsw i64 %46, 1
  %48 = icmp slt i64 %41, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %51 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %50, i32 0, i32 1
  %52 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %55 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load i64, i64* @UFTDI_OPKTSIZE, align 8
  %59 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %60 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = call i32 @ucom_get_data(%struct.TYPE_2__* %51, %struct.usb_page_cache* %52, i64 %57, i64 %62, i64* %7)
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %49, %40
  %66 = phi i1 [ false, %40 ], [ %64, %49 ]
  br i1 %66, label %67, label %86

67:                                               ; preds = %65
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %70 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @FTDI_OUT_TAG(i64 %68, i32 %72)
  %74 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %78 = call i32 @usbd_copy_in(%struct.usb_page_cache* %75, i64 %76, i32* %77, i32 1)
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %81 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i64, i64* %8, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %8, align 8
  br label %40

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %38
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %91, i32 0, i64 %92)
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %95 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %94)
  br label %96

96:                                               ; preds = %90, %87
  br label %97

97:                                               ; preds = %96, %37
  ret void
}

declare dso_local %struct.uftdi_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @ucom_get_data(%struct.TYPE_2__*, %struct.usb_page_cache*, i64, i64, i64*) #1

declare dso_local i32 @FTDI_OUT_TAG(i64, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i64, i32*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i64) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
