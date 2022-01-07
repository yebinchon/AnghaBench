; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ucycom.c_ucycom_intr_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ucycom.c_ucycom_intr_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ucycom_softc = type { i32, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unsupported model number\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ucycom_intr_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucycom_intr_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucycom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.ucycom_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.ucycom_softc* %12, %struct.ucycom_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %10, i32* null, i32* null, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %15, i32 0)
  store %struct.usb_page_cache* %16, %struct.usb_page_cache** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %86 [
    i32 128, label %19
    i32 129, label %77
  ]

19:                                               ; preds = %2
  %20 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %58 [
    i32 131, label %23
    i32 130, label %41
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %78

27:                                               ; preds = %23
  %28 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %30 = call i32 @usbd_copy_out(%struct.usb_page_cache* %28, i32 0, i32* %29, i32 1)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -8
  %34 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %35 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 7
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %60

41:                                               ; preds = %19
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %78

45:                                               ; preds = %41
  %46 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %48 = call i32 @usbd_copy_out(%struct.usb_page_cache* %46, i32 0, i32* %47, i32 2)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -8
  %52 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %53 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 2
  store i32 %57, i32* %10, align 4
  store i32 2, i32* %8, align 4
  br label %60

58:                                               ; preds = %19
  %59 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %78

60:                                               ; preds = %45, %27
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %71 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %70, i32 0, i32 2
  %72 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ucom_put_data(i32* %71, %struct.usb_page_cache* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %66
  br label %77

77:                                               ; preds = %2, %76
  br label %78

78:                                               ; preds = %90, %77, %58, %44, %26
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %80 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %81 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %79, i32 0, i32 %82)
  %84 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %85 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %84)
  br label %94

86:                                               ; preds = %2
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %92 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %91)
  br label %78

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %78
  ret void
}

declare dso_local %struct.ucycom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @ucom_put_data(i32*, %struct.usb_page_cache*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
