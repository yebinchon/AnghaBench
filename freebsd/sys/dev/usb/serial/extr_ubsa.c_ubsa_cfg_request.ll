; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubsa.c_ubsa_cfg_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubsa.c_ubsa_cfg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsa_softc = type { i32, i32, i64 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"device request failed, err=%s (ignored)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubsa_softc*, i32, i32)* @ubsa_cfg_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsa_cfg_request(%struct.ubsa_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ubsa_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device_request, align 8
  %8 = alloca i64, align 8
  store %struct.ubsa_softc* %0, %struct.ubsa_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @USETW(i32 %14, i32 %15)
  %17 = load %struct.ubsa_softc*, %struct.ubsa_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 %19, i64* %22, align 8
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @USETW(i32 %27, i32 0)
  %29 = load %struct.ubsa_softc*, %struct.ubsa_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ubsa_softc*, %struct.ubsa_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %32, i32 0, i32 0
  %34 = call i64 @ucom_cfg_do_request(i32 %31, i32* %33, %struct.usb_device_request* %7, i32* null, i32 0, i32 1000)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @usbd_errstr(i64 %38)
  %40 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
