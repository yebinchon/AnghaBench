; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_cbi_data_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_cbi_data_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umass_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32 }

@UDMASS_CBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"max_bulk=%d, data_rem=%d\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@umass_cam_cb = common dso_local global i32 0, align 4
@UMASS_T_CBI_DATA_RD_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umass_t_cbi_data_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_t_cbi_data_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umass_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.umass_softc* %10, %struct.umass_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %7, i32* %8, i32* null, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %89 [
    i32 128, label %17
    i32 129, label %44
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %20 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, %18
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %26 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %32 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, %30
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %17
  %40 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %41 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %17
  br label %44

44:                                               ; preds = %2, %43
  %45 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %46 = load i32, i32* @UDMASS_CBI, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %49 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @DPRINTF(%struct.umass_softc* %45, i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51)
  %53 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %54 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %60 = call i32 @umass_cbi_start_status(%struct.umass_softc* %59)
  br label %108

61:                                               ; preds = %44
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %64 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %62, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %70 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %75 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %76 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @usbd_xfer_set_timeout(%struct.usb_xfer* %74, i32 %78)
  %80 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %81 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %82 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %80, i32 0, i32 %84, i32 %85)
  %87 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %88 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %87)
  br label %108

89:                                               ; preds = %2
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %95 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, @umass_cam_cb
  br i1 %98, label %99, label %103

99:                                               ; preds = %93, %89
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @umass_tr_error(%struct.usb_xfer* %100, i32 %101)
  br label %107

103:                                              ; preds = %93
  %104 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %105 = load i32, i32* @UMASS_T_CBI_DATA_RD_CS, align 4
  %106 = call i32 @umass_transfer_start(%struct.umass_softc* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %73, %58
  ret void
}

declare dso_local %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @umass_cbi_start_status(%struct.umass_softc*) #1

declare dso_local i32 @usbd_xfer_set_timeout(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @umass_tr_error(%struct.usb_xfer*, i32) #1

declare dso_local i32 @umass_transfer_start(%struct.umass_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
