; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_device_isoc_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_device_isoc_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_7__*, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.octusb_softc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"xfer=%p next=%d nframes=%d\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"start next=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @octusb_device_isoc_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octusb_device_isoc_enter(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.octusb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.octusb_softc* @OCTUSB_BUS2SC(i32 %11)
  store %struct.octusb_softc* %12, %struct.octusb_softc** %3, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %13, i32 %18, i32 %21)
  %23 = load %struct.octusb_softc*, %struct.octusb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @cvmx_usb_get_frame_number(i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %38 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %36, %41
  %43 = and i32 %42, 2047
  store i32 %43, i32* %4, align 4
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i64 @usbd_get_speed(%struct.TYPE_8__* %48)
  %50 = load i64, i64* @USB_SPEED_HIGH, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %1
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %54 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 7
  %57 = sdiv i32 %56, 8
  store i32 %57, i32* %6, align 4
  br label %62

58:                                               ; preds = %1
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %60 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %64 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69, %62
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 3
  %76 = and i32 %75, 2047
  %77 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %78 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %82 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %86 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %73, %69
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %93 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %96, %97
  %99 = and i32 %98, 2047
  store i32 %99, i32* %4, align 4
  %100 = load %struct.octusb_softc*, %struct.octusb_softc** %3, align 8
  %101 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @usb_isoc_time_expand(i32* %101, i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %111 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %114 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %112
  store i32 %118, i32* %116, align 4
  ret void
}

declare dso_local %struct.octusb_softc* @OCTUSB_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @cvmx_usb_get_frame_number(i32*) #1

declare dso_local i64 @usbd_get_speed(%struct.TYPE_8__*) #1

declare dso_local i64 @usb_isoc_time_expand(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
