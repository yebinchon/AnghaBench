; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ufoma_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.usb_cdc_notification = type { i32*, i32, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"too short message\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"truncating message\0A\00", align 1
@UT_READ_VENDOR_INTERFACE = common dso_local global i32 0, align 4
@UMCPC_REQUEST_ACKNOWLEDGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Mode change failed!\0A\00", align 1
@UCDC_NOTIFICATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Wrong serial state!\0A\00", align 1
@UFOMA_CTRL_ENDPT_READ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"invalid notification length, %d bytes!\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"notify bytes = 0x%02x, 0x%02x\0A\00", align 1
@UCDC_N_SERIAL_RI = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_DSR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ufoma_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufoma_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufoma_softc*, align 8
  %6 = alloca %struct.usb_cdc_notification, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.ufoma_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.ufoma_softc* %13, %struct.ufoma_softc** %5, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @usbd_xfer_status(%struct.usb_xfer* %14, i32* %11, i32* null, i32* null, i32* null)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %182 [
    i32 128, label %18
    i32 129, label %174
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %175

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 24
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 24, i32* %11, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %29, i32 0)
  store %struct.usb_page_cache* %30, %struct.usb_page_cache** %7, align 8
  %31 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @usbd_copy_out(%struct.usb_page_cache* %31, i32 0, %struct.usb_cdc_notification* %6, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %34, 8
  store i32 %35, i32* %11, align 4
  %36 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @UGETW(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %28
  %45 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UT_READ_VENDOR_INTERFACE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @UMCPC_REQUEST_ACKNOWLEDGE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @UGETW(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 8
  %60 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %61 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 255
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  %66 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %54
  %68 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %69 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %68, i32 0, i32 7
  %70 = call i32 @cv_signal(i32* %69)
  br label %71

71:                                               ; preds = %67, %49, %44
  %72 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @UCDC_NOTIFICATION, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %175

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %172 [
    i32 131, label %80
    i32 130, label %105
  ]

80:                                               ; preds = %77
  %81 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %82 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %173

87:                                               ; preds = %80
  %88 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %89 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 255
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %94 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %99 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @UFOMA_CTRL_ENDPT_READ, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @usbd_transfer_start(i32 %103)
  br label %173

105:                                              ; preds = %77
  %106 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %107 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %173

112:                                              ; preds = %105
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 2
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %173

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %126)
  %128 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %129 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %128, i32 0, i32 4
  store i32 0, i32* %129, align 8
  %130 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %131 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %130, i32 0, i32 3
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @UCDC_N_SERIAL_RI, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %118
  %141 = load i32, i32* @SER_RI, align 4
  %142 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %143 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %118
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @UCDC_N_SERIAL_DSR, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* @SER_DSR, align 4
  %153 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %154 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %146
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @UCDC_N_SERIAL_DCD, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32, i32* @SER_DCD, align 4
  %164 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %165 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %162, %157
  %169 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %170 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %169, i32 0, i32 2
  %171 = call i32 @ucom_status_change(i32* %170)
  br label %173

172:                                              ; preds = %77
  br label %173

173:                                              ; preds = %172, %168, %115, %110, %97, %85
  br label %174

174:                                              ; preds = %2, %173
  br label %175

175:                                              ; preds = %186, %174, %76, %21
  %176 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %177 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %178 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %177)
  %179 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %176, i32 0, i32 %178)
  %180 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %181 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %180)
  br label %190

182:                                              ; preds = %2
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %188 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %187)
  br label %175

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %175
  ret void
}

declare dso_local %struct.ufoma_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.usb_cdc_notification*, i32) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

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
