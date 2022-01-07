; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_softc = type { i64, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@octusb_iterate_hw_softc = common dso_local global i32 0, align 4
@octusb_bus_methods = common dso_local global i32 0, align 4
@OCTUSB_MAX_PORTS = common dso_local global i64 0, align 8
@USB_REV_2_0 = common dso_local global i32 0, align 4
@CVMX_USB_INITIALIZE_FLAGS_CLOCK_AUTO = common dso_local global i32 0, align 4
@CVMX_USB_INITIALIZE_FLAGS_DEBUG_ALL = common dso_local global i32 0, align 4
@octusbdebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octusb_init(%struct.octusb_softc* %0) #0 {
  %2 = alloca %struct.octusb_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.octusb_softc* %0, %struct.octusb_softc** %2, align 8
  %6 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %7 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %6, i32 0, i32 1
  %8 = call i32 @usb_bus_mem_flush_all(%struct.TYPE_7__* %7, i32* @octusb_iterate_hw_softc)
  %9 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %10 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32* @octusb_bus_methods, i32** %11, align 8
  %12 = call i64 (...) @cvmx_usb_get_num_ports()
  %13 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %14 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %16 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OCTUSB_MAX_PORTS, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i64, i64* @OCTUSB_MAX_PORTS, align 8
  %22 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %23 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* @USB_REV_2_0, align 4
  %26 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %27 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_CLOCK_AUTO, align 4
  store i32 %29, i32* %3, align 4
  %30 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %31 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %30, i32 0, i32 1
  %32 = call i32 @USB_BUS_LOCK(%struct.TYPE_7__* %31)
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %59, %24
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %36 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %41 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @cvmx_usb_initialize(i32* %45, i64 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %53 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %39
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %33

62:                                               ; preds = %33
  %63 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %64 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %63, i32 0, i32 1
  %65 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_7__* %64)
  %66 = load %struct.octusb_softc*, %struct.octusb_softc** %2, align 8
  %67 = getelementptr inbounds %struct.octusb_softc, %struct.octusb_softc* %66, i32 0, i32 1
  %68 = call i32 @octusb_do_poll(%struct.TYPE_7__* %67)
  ret i32 0
}

declare dso_local i32 @usb_bus_mem_flush_all(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @cvmx_usb_get_num_ports(...) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @cvmx_usb_initialize(i32*, i64, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @octusb_do_poll(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
