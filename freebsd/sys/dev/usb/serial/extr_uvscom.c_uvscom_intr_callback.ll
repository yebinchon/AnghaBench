; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvscom.c_uvscom_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvscom.c_uvscom_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uvscom_softc = type { i32, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@UVSCOM_TXRDY = common dso_local global i32 0, align 4
@ULSR_TXRDY = common dso_local global i32 0, align 4
@UVSCOM_RXRDY = common dso_local global i32 0, align 4
@ULSR_RXRDY = common dso_local global i32 0, align 4
@UVSCOM_CTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@UVSCOM_DSR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@UVSCOM_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uvscom_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvscom_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvscom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.uvscom_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.uvscom_softc* %10, %struct.uvscom_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_status(%struct.usb_xfer* %11, i32* %8, i32* null, i32* null, i32* null)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %104 [
    i32 128, label %15
    i32 129, label %96
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %95

18:                                               ; preds = %15
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %19, i32 0)
  store %struct.usb_page_cache* %20, %struct.usb_page_cache** %6, align 8
  %21 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %23 = call i32 @usbd_copy_out(%struct.usb_page_cache* %21, i32 0, i32* %22, i32 8)
  %24 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %25 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %27 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %31 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UVSCOM_TXRDY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %18
  %38 = load i32, i32* @ULSR_TXRDY, align 4
  %39 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %40 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %18
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @UVSCOM_RXRDY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* @ULSR_RXRDY, align 4
  %51 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %52 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UVSCOM_CTS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @SER_CTS, align 4
  %63 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %64 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %55
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @UVSCOM_DSR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @SER_DSR, align 4
  %75 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %76 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UVSCOM_DCD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i32, i32* @SER_DCD, align 4
  %87 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %88 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.uvscom_softc*, %struct.uvscom_softc** %5, align 8
  %93 = getelementptr inbounds %struct.uvscom_softc, %struct.uvscom_softc* %92, i32 0, i32 1
  %94 = call i32 @ucom_status_change(i32* %93)
  br label %95

95:                                               ; preds = %91, %15
  br label %96

96:                                               ; preds = %2, %95
  br label %97

97:                                               ; preds = %108, %96
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %100 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %99)
  %101 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %98, i32 0, i32 %100)
  %102 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %103 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %102)
  br label %112

104:                                              ; preds = %2
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %110 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %109)
  br label %97

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %97
  ret void
}

declare dso_local %struct.uvscom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @ucom_status_change(i32*) #1

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
