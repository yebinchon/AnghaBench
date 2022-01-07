; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_device_isoc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_device_isoc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_10__*, i64, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.dwc_otg_softc = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"xfer=%p next=%d nframes=%d\0A\00", align 1
@USB_MODE_HOST = common dso_local global i64 0, align 8
@DOTG_HFNUM = common dso_local global i32 0, align 4
@HFNUM_FRNUM_MASK = common dso_local global i32 0, align 4
@DOTG_DSTS = common dso_local global i32 0, align 4
@DWC_OTG_FRAME_MASK = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"start next=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @dwc_otg_device_isoc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_device_isoc_start(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %9 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %8, i32 0, i32 3
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32 %12)
  store %struct.dwc_otg_softc* %13, %struct.dwc_otg_softc** %3, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %15 = call i32 @usbd_xfer_get_fps_shift(%struct.usb_xfer* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %18 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %23 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %16, i32 %21, i32 %24)
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_MODE_HOST, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %38 = load i32, i32* @DOTG_HFNUM, align 4
  %39 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @HFNUM_FRNUM_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %6, align 4
  br label %49

43:                                               ; preds = %1
  %44 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %45 = load i32, i32* @DOTG_DSTS, align 4
  %46 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @DSTS_SOFFN_GET(i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %51 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = sdiv i32 %56, 8
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i32, i32* @DWC_OTG_FRAME_MASK, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %63 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @USB_SPEED_HIGH, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %58
  %72 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %73 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %74, %75
  %77 = add nsw i32 %76, 7
  %78 = sdiv i32 %77, 8
  store i32 %78, i32* %5, align 4
  br label %83

79:                                               ; preds = %58
  %80 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %81 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %71
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %86 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %84, %89
  %91 = load i32, i32* @DWC_OTG_FRAME_MASK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %4, align 4
  %93 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %94 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %83
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %99, %83
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 3
  %106 = load i32, i32* @DWC_OTG_FRAME_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %109 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %113 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %117 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @DPRINTFN(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %103, %99
  %123 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %124 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load i32, i32* @DWC_OTG_FRAME_MASK, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %4, align 4
  %132 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %133 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %6, align 4
  %135 = call i64 @usb_isoc_time_expand(i32* %133, i32 %134)
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %143 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %145 = call i32 @dwc_otg_setup_standard_chain(%struct.usb_xfer* %144)
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %148 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %146
  store i32 %152, i32* %150, align 4
  %153 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %154 = call i32 @dwc_otg_start_standard_chain(%struct.usb_xfer* %153)
  ret void
}

declare dso_local %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32) #1

declare dso_local i32 @usbd_xfer_get_fps_shift(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DSTS_SOFFN_GET(i32) #1

declare dso_local i64 @usb_isoc_time_expand(i32*, i32) #1

declare dso_local i32 @dwc_otg_setup_standard_chain(%struct.usb_xfer*) #1

declare dso_local i32 @dwc_otg_start_standard_chain(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
