; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uipaq.c_uipaq_cfg_set_break.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uipaq.c_uipaq_cfg_set_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uipaq_softc* }
%struct.uipaq_softc = type { i32, i32 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UCDC_BREAK_ON = common dso_local global i32 0, align 4
@UCDC_BREAK_OFF = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SEND_BREAK = common dso_local global i32 0, align 4
@UIPAQ_IFACE_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @uipaq_cfg_set_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uipaq_cfg_set_break(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uipaq_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.uipaq_softc*, %struct.uipaq_softc** %9, align 8
  store %struct.uipaq_softc* %10, %struct.uipaq_softc** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @UCDC_BREAK_ON, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @UCDC_BREAK_OFF, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @UCDC_SEND_BREAK, align 4
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @USETW(i32 %24, i32 %25)
  %27 = load i64, i64* @UIPAQ_IFACE_INDEX, align 8
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %27, i64* %30, align 8
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @USETW(i32 %35, i32 0)
  %37 = load %struct.uipaq_softc*, %struct.uipaq_softc** %5, align 8
  %38 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uipaq_softc*, %struct.uipaq_softc** %5, align 8
  %41 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %40, i32 0, i32 0
  %42 = call i32 @ucom_cfg_do_request(i32 %39, i32* %41, %struct.usb_device_request* %6, i32* null, i32 0, i32 1000)
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
