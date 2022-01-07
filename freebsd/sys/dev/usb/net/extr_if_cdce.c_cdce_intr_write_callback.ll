; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_intr_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_intr_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.cdce_softc = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_cdc_notification = type { i32, i32, i32, i32*, i32, i8* }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Transferred %d bytes\0A\00", align 1
@CDCE_NOTIFY_DONE = common dso_local global i32 0, align 4
@UCDC_NOTIFICATION = common dso_local global i8* null, align 8
@UCDC_N_NETWORK_CONNECTION = common dso_local global i32 0, align 4
@UCDC_N_CONNECTION_SPEED_CHANGE = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @cdce_intr_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdce_intr_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdce_softc*, align 8
  %6 = alloca %struct.usb_cdc_notification, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.cdce_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.cdce_softc* %11, %struct.cdce_softc** %5, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @usbd_xfer_status(%struct.usb_xfer* %12, i32* %9, i32* null, i32* null, i32* null)
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @USB_GET_STATE(%struct.usb_xfer* %14)
  switch i32 %15, label %128 [
    i32 128, label %16
    i32 129, label %31
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %20 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %29 [
    i32 131, label %22
    i32 130, label %25
  ]

22:                                               ; preds = %16
  %23 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %24 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %23, i32 0, i32 0
  store i32 130, i32* %24, align 8
  br label %30

25:                                               ; preds = %16
  %26 = load i32, i32* @CDCE_NOTIFY_DONE, align 4
  %27 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %28 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %30

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %25, %22
  br label %31

31:                                               ; preds = %2, %30
  br label %32

32:                                               ; preds = %143, %31
  %33 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %34 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 131
  br i1 %36, label %37, label %69

37:                                               ; preds = %32
  %38 = load i8*, i8** @UCDC_NOTIFICATION, align 8
  %39 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 5
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @UCDC_N_NETWORK_CONNECTION, align 4
  %41 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %43 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %46, i32* %49, align 4
  %50 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @USETW(i32 %54, i32 1)
  %56 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @USETW(i32 %57, i32 0)
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %60 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %59, i32 0)
  store %struct.usb_page_cache* %60, %struct.usb_page_cache** %7, align 8
  %61 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %62 = call i32 @usbd_copy_in(%struct.usb_page_cache* %61, i32 0, %struct.usb_cdc_notification* %6, i32 40)
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %63, i32 0, i32 40)
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %66 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %65, i32 1)
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %68 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %67)
  br label %127

69:                                               ; preds = %32
  %70 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %71 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 130
  br i1 %73, label %74, label %126

74:                                               ; preds = %69
  %75 = load i8*, i8** @UCDC_NOTIFICATION, align 8
  %76 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 5
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* @UCDC_N_CONNECTION_SPEED_CHANGE, align 4
  %78 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 4
  store i32 %77, i32* %78, align 8
  %79 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %80 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %83, i32* %86, align 4
  %87 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 0, i32* %89, align 4
  %90 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @USETW(i32 %91, i32 0)
  %93 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @USETW(i32 %94, i32 8)
  %96 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %97 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @usbd_get_speed(i32 %99)
  %101 = load i32, i32* @USB_SPEED_FULL, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %74
  store i32 425984000, i32* %8, align 4
  br label %105

104:                                              ; preds = %74
  store i32 9728000, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 0
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @USETDW(i32 %108, i32 %109)
  %111 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %6, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @USETDW(i32 %113, i32 %114)
  %116 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %117 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %116, i32 0)
  store %struct.usb_page_cache* %117, %struct.usb_page_cache** %7, align 8
  %118 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %119 = call i32 @usbd_copy_in(%struct.usb_page_cache* %118, i32 0, %struct.usb_cdc_notification* %6, i32 40)
  %120 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %121 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %120, i32 0, i32 40)
  %122 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %123 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %122, i32 1)
  %124 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %125 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %124)
  br label %126

126:                                              ; preds = %105, %69
  br label %127

127:                                              ; preds = %126, %37
  br label %145

128:                                              ; preds = %2
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %134 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @usbd_get_mode(i32 %136)
  %138 = load i32, i32* @USB_MODE_HOST, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %142 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %141)
  br label %143

143:                                              ; preds = %140, %132
  br label %32

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %127
  ret void
}

declare dso_local %struct.cdce_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.usb_cdc_notification*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_get_speed(i32) #1

declare dso_local i32 @USETDW(i32, i32) #1

declare dso_local i32 @usbd_get_mode(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
