; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_cfg_set_break.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_cfg_set_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.umodem_softc* }
%struct.umodem_softc = type { i32, i32, i32, i64 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"onoff=%d\0A\00", align 1
@USB_CDC_ACM_HAS_BREAK = common dso_local global i32 0, align 4
@UCDC_BREAK_ON = common dso_local global i32 0, align 4
@UCDC_BREAK_OFF = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SEND_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @umodem_cfg_set_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umodem_cfg_set_break(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.umodem_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  %7 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.umodem_softc*, %struct.umodem_softc** %9, align 8
  store %struct.umodem_softc* %10, %struct.umodem_softc** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %14 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @USB_CDC_ACM_HAS_BREAK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @UCDC_BREAK_ON, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @UCDC_BREAK_OFF, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @UCDC_SEND_BREAK, align 4
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @USETW(i32 %33, i32 %34)
  %36 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %37 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 %38, i64* %41, align 8
  %42 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @USETW(i32 %46, i32 0)
  %48 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %49 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %52 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %51, i32 0, i32 1
  %53 = call i32 @ucom_cfg_do_request(i32 %50, i32* %52, %struct.usb_device_request* %6, i32* null, i32 0, i32 1000)
  br label %54

54:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
