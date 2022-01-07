; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uplcom_softc = type { i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"actlen = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"status = 0x%02x\0A\00", align 1
@UPLCOM_STATE_INDEX = common dso_local global i64 0, align 8
@RSAQ_STATUS_CTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@RSAQ_STATUS_OVERRUN_ERROR = common dso_local global i32 0, align 4
@ULSR_OE = common dso_local global i32 0, align 4
@RSAQ_STATUS_PARITY_ERROR = common dso_local global i32 0, align 4
@ULSR_PE = common dso_local global i32 0, align 4
@RSAQ_STATUS_FRAME_ERROR = common dso_local global i32 0, align 4
@ULSR_FE = common dso_local global i32 0, align 4
@RSAQ_STATUS_RING = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@RSAQ_STATUS_BREAK_ERROR = common dso_local global i32 0, align 4
@ULSR_BI = common dso_local global i32 0, align 4
@RSAQ_STATUS_DSR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@RSAQ_STATUS_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uplcom_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uplcom_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uplcom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca [9 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.uplcom_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.uplcom_softc* %10, %struct.uplcom_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_status(%struct.usb_xfer* %11, i32* %8, i32* null, i32* null, i32* null)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %150 [
    i32 128, label %15
    i32 129, label %142
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 9
  br i1 %19, label %20, label %141

20:                                               ; preds = %15
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %21, i32 0)
  store %struct.usb_page_cache* %22, %struct.usb_page_cache** %6, align 8
  %23 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %25 = call i32 @usbd_copy_out(%struct.usb_page_cache* %23, i32 0, i32* %24, i32 36)
  %26 = load i64, i64* @UPLCOM_STATE_INDEX, align 8
  %27 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %31 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %33 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load i64, i64* @UPLCOM_STATE_INDEX, align 8
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RSAQ_STATUS_CTS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %20
  %41 = load i32, i32* @SER_CTS, align 4
  %42 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %43 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %20
  %47 = load i64, i64* @UPLCOM_STATE_INDEX, align 8
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RSAQ_STATUS_OVERRUN_ERROR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @ULSR_OE, align 4
  %55 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %56 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i64, i64* @UPLCOM_STATE_INDEX, align 8
  %61 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RSAQ_STATUS_PARITY_ERROR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @ULSR_PE, align 4
  %68 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %69 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i64, i64* @UPLCOM_STATE_INDEX, align 8
  %74 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RSAQ_STATUS_FRAME_ERROR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @ULSR_FE, align 4
  %81 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %82 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = load i64, i64* @UPLCOM_STATE_INDEX, align 8
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RSAQ_STATUS_RING, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @SER_RI, align 4
  %94 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %95 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %85
  %99 = load i64, i64* @UPLCOM_STATE_INDEX, align 8
  %100 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @RSAQ_STATUS_BREAK_ERROR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @ULSR_BI, align 4
  %107 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %108 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %98
  %112 = load i64, i64* @UPLCOM_STATE_INDEX, align 8
  %113 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RSAQ_STATUS_DSR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* @SER_DSR, align 4
  %120 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %121 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %111
  %125 = load i64, i64* @UPLCOM_STATE_INDEX, align 8
  %126 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RSAQ_STATUS_DCD, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i32, i32* @SER_DCD, align 4
  %133 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %134 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %124
  %138 = load %struct.uplcom_softc*, %struct.uplcom_softc** %5, align 8
  %139 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %138, i32 0, i32 0
  %140 = call i32 @ucom_status_change(i32* %139)
  br label %141

141:                                              ; preds = %137, %15
  br label %142

142:                                              ; preds = %2, %141
  br label %143

143:                                              ; preds = %154, %142
  %144 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %145 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %146 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %145)
  %147 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %144, i32 0, i32 %146)
  %148 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %149 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %148)
  br label %158

150:                                              ; preds = %2
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %156 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %155)
  br label %143

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %143
  ret void
}

declare dso_local %struct.uplcom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

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
