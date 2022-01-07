; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_cfg_set_break.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_cfg_set_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.ubser_softc* }
%struct.ubser_softc = type { i32, i64 }
%struct.usb_device_request = type { i32, i64*, i64*, i32, i32 }

@UT_READ_VENDOR_INTERFACE = common dso_local global i32 0, align 4
@VENDOR_SET_BREAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"send break failed, error=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @ubser_cfg_set_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubser_cfg_set_break(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ubser_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_device_request, align 8
  %8 = alloca i64, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %9, i32 0, i32 1
  %11 = load %struct.ubser_softc*, %struct.ubser_softc** %10, align 8
  store %struct.ubser_softc* %11, %struct.ubser_softc** %5, align 8
  %12 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  %18 = load i32, i32* @UT_READ_VENDOR_INTERFACE, align 4
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @VENDOR_SET_BREAK, align 4
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 %22, i64* %25, align 8
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @USETW(i32 %39, i32 0)
  %41 = load %struct.ubser_softc*, %struct.ubser_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ubser_softc, %struct.ubser_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %45 = call i64 @ucom_cfg_do_request(i32 %43, %struct.ucom_softc* %44, %struct.usb_device_request* %7, i32* null, i32 0, i32 1000)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %17
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @usbd_errstr(i64 %49)
  %51 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %17
  br label %53

53:                                               ; preds = %52, %2
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @ucom_cfg_do_request(i32, %struct.ucom_softc*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
