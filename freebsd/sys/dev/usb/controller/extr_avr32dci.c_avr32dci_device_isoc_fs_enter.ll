; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_device_isoc_fs_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_device_isoc_fs_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.avr32dci_softc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"xfer=%p next=%d nframes=%d\0A\00", align 1
@UE_ADDR = common dso_local global i32 0, align 4
@AVR32_FNUM = common dso_local global i32 0, align 4
@AVR32_FRAME_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"start next=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @avr32dci_device_isoc_fs_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_device_isoc_fs_enter(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.avr32dci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.avr32dci_softc* @AVR32_BUS2SC(i32 %11)
  store %struct.avr32dci_softc* %12, %struct.avr32dci_softc** %3, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %13, i32 %18, i32 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UE_ADDR, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %3, align 8
  %29 = load i32, i32* @AVR32_FNUM, align 4
  %30 = call i32 @AVR32_READ_4(%struct.avr32dci_softc* %28, i32 %29)
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @AVR32_FRAME_MASK, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %37 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %35, %40
  %42 = load i32, i32* @AVR32_FRAME_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %1
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %53 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50, %1
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 3
  %59 = load i32, i32* @AVR32_FRAME_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %62 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %66 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %70 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @DPRINTFN(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %56, %50
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %77 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* @AVR32_FRAME_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %4, align 4
  %85 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %3, align 8
  %86 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @usb_isoc_time_expand(i32* %86, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %93 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %91, %95
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %98 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %100 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %103 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %101
  store i32 %107, i32* %105, align 4
  %108 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %109 = call i32 @avr32dci_setup_standard_chain(%struct.usb_xfer* %108)
  ret void
}

declare dso_local %struct.avr32dci_softc* @AVR32_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @AVR32_READ_4(%struct.avr32dci_softc*, i32) #1

declare dso_local i64 @usb_isoc_time_expand(i32*, i32) #1

declare dso_local i32 @avr32dci_setup_standard_chain(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
