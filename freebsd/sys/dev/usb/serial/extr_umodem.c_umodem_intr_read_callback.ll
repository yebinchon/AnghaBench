; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_intr_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_intr_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.usb_cdc_notification = type { i32, i32, i32*, i32 }
%struct.umodem_softc = type { i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"received short packet, %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"truncating message\0A\00", align 1
@UCDC_NOTIFICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"unknown message type, 0x%02x, on notify pipe!\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"invalid notification length, %d bytes!\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"notify bytes = %02x%02x\0A\00", align 1
@UCDC_N_SERIAL_RI = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_DSR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"unknown notify message: 0x%02x\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umodem_intr_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umodem_intr_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_cdc_notification, align 8
  %6 = alloca %struct.umodem_softc*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.umodem_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.umodem_softc* %11, %struct.umodem_softc** %6, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @usbd_xfer_status(%struct.usb_xfer* %12, i32* %9, i32* null, i32* null, i32* null)
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @USB_GET_STATE(%struct.usb_xfer* %14)
  switch i32 %15, label %133 [
    i32 128, label %16
    i32 129, label %125
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %126

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 24
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 24, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %29 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %28, i32 0)
  store %struct.usb_page_cache* %29, %struct.usb_page_cache** %7, align 8
  %30 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @usbd_copy_out(%struct.usb_page_cache* %30, i32 0, %struct.usb_cdc_notification* %5, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 8
  store i32 %34, i32* %9, align 4
  %35 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @UGETW(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %27
  %44 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @UCDC_NOTIFICATION, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %126

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %120 [
    i32 130, label %55
  ]

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %124

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %69)
  %71 = load %struct.umodem_softc*, %struct.umodem_softc** %6, align 8
  %72 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %71, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = load %struct.umodem_softc*, %struct.umodem_softc** %6, align 8
  %74 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UCDC_N_SERIAL_RI, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %61
  %83 = load i32, i32* @SER_RI, align 4
  %84 = load %struct.umodem_softc*, %struct.umodem_softc** %6, align 8
  %85 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %61
  %89 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @UCDC_N_SERIAL_DSR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load i32, i32* @SER_DSR, align 4
  %98 = load %struct.umodem_softc*, %struct.umodem_softc** %6, align 8
  %99 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %88
  %103 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @UCDC_N_SERIAL_DCD, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i32, i32* @SER_DCD, align 4
  %112 = load %struct.umodem_softc*, %struct.umodem_softc** %6, align 8
  %113 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %102
  %117 = load %struct.umodem_softc*, %struct.umodem_softc** %6, align 8
  %118 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %117, i32 0, i32 0
  %119 = call i32 @ucom_status_change(i32* %118)
  br label %124

120:                                              ; preds = %52
  %121 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %5, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %116, %58
  br label %125

125:                                              ; preds = %2, %124
  br label %126

126:                                              ; preds = %137, %125, %48, %19
  %127 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %128 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %129 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %128)
  %130 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %127, i32 0, i32 %129)
  %131 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %132 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %131)
  br label %141

133:                                              ; preds = %2
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %139 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %138)
  br label %126

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %126
  ret void
}

declare dso_local %struct.umodem_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.usb_cdc_notification*, i32) #1

declare dso_local i32 @UGETW(i32) #1

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
