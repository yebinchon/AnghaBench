; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_ep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_endpoint = type { i32* }
%struct.avr32dci_softc = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"pipe=%p, addr=%d, endpt=%d, mode=%d (%d,%d)\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_ISOCHRONOUS = common dso_local global i32 0, align 4
@avr32dci_device_isoc_fs_methods = common dso_local global i32 0, align 4
@avr32dci_device_non_isoc_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)* @avr32dci_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_ep_init(%struct.usb_device* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  %7 = alloca %struct.avr32dci_softc*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  store %struct.usb_endpoint* %2, %struct.usb_endpoint** %6, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.avr32dci_softc* @AVR32_BUS2SC(i32 %10)
  store %struct.avr32dci_softc* %11, %struct.avr32dci_softc** %7, align 8
  %12 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %7, align 8
  %24 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %12, i32 %15, i32 %18, i32 %22, i64 %25, i64 %28)
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %7, align 8
  %34 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %3
  %38 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_SPEED_FULL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_SPEED_HIGH, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %65

50:                                               ; preds = %43, %37
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %52 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UE_XFERTYPE, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %60 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %59, i32 0, i32 0
  store i32* @avr32dci_device_isoc_fs_methods, i32** %60, align 8
  br label %64

61:                                               ; preds = %50
  %62 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %63 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %62, i32 0, i32 0
  store i32* @avr32dci_device_non_isoc_methods, i32** %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %49, %64, %3
  ret void
}

declare dso_local %struct.avr32dci_softc* @AVR32_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
