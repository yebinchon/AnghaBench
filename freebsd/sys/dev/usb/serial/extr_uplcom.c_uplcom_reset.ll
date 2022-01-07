; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uplcom_softc = type { i64 }
%struct.usb_device = type { i32 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@UPLCOM_SET_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uplcom_softc*, %struct.usb_device*)* @uplcom_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uplcom_reset(%struct.uplcom_softc* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.uplcom_softc*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_device_request, align 8
  store %struct.uplcom_softc* %0, %struct.uplcom_softc** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %6 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %7 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 4
  store i32 %6, i32* %7, align 8
  %8 = load i32, i32* @UPLCOM_SET_REQUEST, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @USETW(i32 %11, i32 0)
  %13 = load %struct.uplcom_softc*, %struct.uplcom_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 %15, i64* %18, align 8
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @USETW(i32 %23, i32 0)
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = call i32 @usbd_do_request(%struct.usb_device* %25, i32* null, %struct.usb_device_request* %5, i32* null)
  ret i32 %26
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, i32*, %struct.usb_device_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
