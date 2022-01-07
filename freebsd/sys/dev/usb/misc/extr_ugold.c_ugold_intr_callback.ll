; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ugold.c_ugold_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ugold.c_ugold_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ugold_softc = type { i32, i32*, i32*, i32* }
%struct.usb_page_cache = type { i32 }

@UGOLD_MAX_SENSORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%d sensor%s type ds75/12bit (temperature)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@UGOLD_OUTER = common dso_local global i64 0, align 8
@UGOLD_INNER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"invalid data length (%d bytes)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown command 0x%02x\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ugold_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ugold_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ugold_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.ugold_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.ugold_softc* %11, %struct.ugold_softc** %5, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @usbd_xfer_status(%struct.usb_xfer* %12, i32* %9, i32* null, i32* null, i32* null)
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @USB_GET_STATE(%struct.usb_xfer* %14)
  switch i32 %15, label %120 [
    i32 128, label %16
    i32 129, label %112
  ]

16:                                               ; preds = %2
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %18 = call i32 @memset(i32* %17, i32 0, i32 32)
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %19, i32 0)
  store %struct.usb_page_cache* %20, %struct.usb_page_cache** %6, align 8
  %21 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @MIN(i32 %23, i32 32)
  %25 = call i32 @usbd_copy_out(%struct.usb_page_cache* %21, i32 0, i32* %22, i32 %24)
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  switch i32 %27, label %107 [
    i32 130, label %28
    i32 131, label %51
  ]

28:                                               ; preds = %16
  %29 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %111

34:                                               ; preds = %28
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UGOLD_MAX_SENSORS, align 4
  %38 = call i32 @MIN(i32 %36, i32 %37)
  %39 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %45 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %50 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %49)
  br label %111

51:                                               ; preds = %16
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %102 [
    i32 4, label %54
    i32 2, label %78
  ]

54:                                               ; preds = %51
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %56 = load i32, i32* %55, align 16
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ugold_ds75_temp(i32 %56, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %62 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @UGOLD_OUTER, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %60, %66
  %68 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %69 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @UGOLD_OUTER, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %74 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @UGOLD_OUTER, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %51, %54
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ugold_ds75_temp(i32 %80, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @UGOLD_INNER, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %84, %90
  %92 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %93 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @UGOLD_INNER, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load %struct.ugold_softc*, %struct.ugold_softc** %5, align 8
  %98 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @UGOLD_INNER, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 1, i32* %101, align 4
  br label %106

102:                                              ; preds = %51
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %78
  br label %111

107:                                              ; preds = %16
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %106, %34, %33
  br label %112

112:                                              ; preds = %2, %111
  br label %113

113:                                              ; preds = %124, %112
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %115 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %116 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %115)
  %117 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %114, i32 0, i32 %116)
  %118 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %119 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %118)
  br label %128

120:                                              ; preds = %2
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %126 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %125)
  br label %113

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %113
  ret void
}

declare dso_local %struct.ugold_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @ugold_ds75_temp(i32, i32) #1

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
