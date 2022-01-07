; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_bs_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_bs_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhso_softc = type { i32*, i32, i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.usb_cdc_notification = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"status %d, actlen=%d\0A\00", align 1
@UCDC_NOTIFICATION_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"UCDC notification too short: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"UCDC notification too large: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Interface mismatch, got %d expected %d\0A\00", align 1
@UCDC_NOTIFICATION = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"notify = 0x%02x\0A\00", align 1
@UCDC_N_SERIAL_RI = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_DSR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@UCDC_N_SERIAL_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhso_bs_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_bs_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhso_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_cdc_notification, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.uhso_softc* %10, %struct.uhso_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_status(%struct.usb_xfer* %11, i32* %7, i32* null, i32* null, i32* null)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %124 [
    i32 128, label %19
    i32 129, label %122
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @UCDC_NOTIFICATION_LENGTH, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %123

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 24
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i32 24, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %35 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %34, i32 0)
  store %struct.usb_page_cache* %35, %struct.usb_page_cache** %6, align 8
  %36 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @usbd_copy_out(%struct.usb_page_cache* %36, i32 0, %struct.usb_cdc_notification* %8, i32 %37)
  %39 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @UGETW(i32 %40)
  %42 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %43 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @UGETW(i32 %48)
  %50 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %51 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %52)
  br label %123

54:                                               ; preds = %33
  %55 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @UCDC_NOTIFICATION, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %121

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @UCDC_N_SERIAL_STATE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %121

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %71 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  %72 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %73 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %72, i32 0, i32 2
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @UCDC_N_SERIAL_RI, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %64
  %82 = load i32, i32* @SER_RI, align 4
  %83 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %84 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %64
  %88 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UCDC_N_SERIAL_DSR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i32, i32* @SER_DSR, align 4
  %97 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %98 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %87
  %102 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %8, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @UCDC_N_SERIAL_DCD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* @SER_DCD, align 4
  %111 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %112 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %101
  %116 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %117 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = call i32 @ucom_status_change(i32* %119)
  br label %121

121:                                              ; preds = %115, %59, %54
  br label %122

122:                                              ; preds = %2, %121
  br label %123

123:                                              ; preds = %129, %122, %46, %23
  br label %124

124:                                              ; preds = %2, %123
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %132

129:                                              ; preds = %124
  %130 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %131 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %130)
  br label %123

132:                                              ; preds = %128
  ret void
}

declare dso_local %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.usb_cdc_notification*, i32) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @ucom_status_change(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
