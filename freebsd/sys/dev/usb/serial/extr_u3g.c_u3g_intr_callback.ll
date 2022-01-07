; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ucom_softc = type { i64, %struct.u3g_softc* }
%struct.u3g_softc = type { i32*, i32* }
%struct.usb_page_cache = type { i32 }
%struct.usb_cdc_notification = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"message too short (expected 8, received %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"message too short (expected 2 data bytes, received %d)\0A\00", align 1
@UCDC_NOTIFICATION = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"notify bytes = 0x%02x, 0x%02x\0A\00", align 1
@UCDC_N_SERIAL_RI = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_DSR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @u3g_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u3g_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucom_softc*, align 8
  %6 = alloca %struct.u3g_softc*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.usb_cdc_notification, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.ucom_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.ucom_softc* %13, %struct.ucom_softc** %5, align 8
  %14 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %14, i32 0, i32 1
  %16 = load %struct.u3g_softc*, %struct.u3g_softc** %15, align 8
  store %struct.u3g_softc* %16, %struct.u3g_softc** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @usbd_xfer_status(%struct.usb_xfer* %17, i32* %9, i32* null, i32* null, i32* null)
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call i32 @USB_GET_STATE(%struct.usb_xfer* %19)
  switch i32 %20, label %138 [
    i32 128, label %21
    i32 129, label %130
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %131

27:                                               ; preds = %21
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %29 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %28, i32 0)
  store %struct.usb_page_cache* %29, %struct.usb_page_cache** %7, align 8
  %30 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @usbd_copy_out(%struct.usb_page_cache* %30, i32 0, %struct.usb_cdc_notification* %8, i32 %31)
  %33 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @UGETW(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %131

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UCDC_NOTIFICATION, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %129

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @UCDC_N_SERIAL_STATE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %129

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %59)
  %61 = load %struct.u3g_softc*, %struct.u3g_softc** %6, align 8
  %62 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %65 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load %struct.u3g_softc*, %struct.u3g_softc** %6, align 8
  %69 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %72 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @UCDC_N_SERIAL_RI, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %51
  %84 = load i32, i32* @SER_RI, align 4
  %85 = load %struct.u3g_softc*, %struct.u3g_softc** %6, align 8
  %86 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %89 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %84
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %83, %51
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @UCDC_N_SERIAL_DSR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load i32, i32* @SER_DSR, align 4
  %101 = load %struct.u3g_softc*, %struct.u3g_softc** %6, align 8
  %102 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %105 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %100
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %99, %94
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @UCDC_N_SERIAL_DCD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load i32, i32* @SER_DCD, align 4
  %117 = load %struct.u3g_softc*, %struct.u3g_softc** %6, align 8
  %118 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %121 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %116
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %115, %110
  %127 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %128 = call i32 @ucom_status_change(%struct.ucom_softc* %127)
  br label %129

129:                                              ; preds = %126, %46, %41
  br label %130

130:                                              ; preds = %2, %129
  br label %131

131:                                              ; preds = %142, %130, %38, %24
  %132 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %133 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %134 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %133)
  %135 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %132, i32 0, i32 %134)
  %136 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %137 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %136)
  br label %146

138:                                              ; preds = %2
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %144 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %143)
  br label %131

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %131
  ret void
}

declare dso_local %struct.ucom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.usb_cdc_notification*, i32) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @ucom_status_change(%struct.ucom_softc*) #1

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
