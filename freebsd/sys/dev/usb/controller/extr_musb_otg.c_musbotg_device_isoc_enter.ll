; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_device_isoc_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_device_isoc_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.musbotg_softc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"xfer=%p next=%d nframes=%d\0A\00", align 1
@MUSB2_REG_FRAME = common dso_local global i32 0, align 4
@MUSB2_MASK_FRAME = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"start next=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @musbotg_device_isoc_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_device_isoc_enter(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.musbotg_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32 %11)
  store %struct.musbotg_softc* %12, %struct.musbotg_softc** %3, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %13, i32 %18, i32 %21)
  %23 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %24 = load i32, i32* @MUSB2_REG_FRAME, align 4
  %25 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %28 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %26, %31
  %33 = load i32, i32* @MUSB2_MASK_FRAME, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %36 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @usbd_get_speed(i32 %39)
  %41 = load i64, i64* @USB_SPEED_HIGH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 7
  %48 = sdiv i32 %47, 8
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %1
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %51 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %55 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %60, %53
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 3
  %67 = load i32, i32* @MUSB2_MASK_FRAME, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %70 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %74 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %78 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %64, %60
  %84 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %85 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* @MUSB2_MASK_FRAME, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %4, align 4
  %93 = load %struct.musbotg_softc*, %struct.musbotg_softc** %3, align 8
  %94 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @usb_isoc_time_expand(i32* %94, i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %104 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %107 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %105
  store i32 %111, i32* %109, align 4
  %112 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %113 = call i32 @musbotg_setup_standard_chain(%struct.usb_xfer* %112)
  ret void
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @MUSB2_READ_2(%struct.musbotg_softc*, i32) #1

declare dso_local i64 @usbd_get_speed(i32) #1

declare dso_local i64 @usb_isoc_time_expand(i32*, i32) #1

declare dso_local i32 @musbotg_setup_standard_chain(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
