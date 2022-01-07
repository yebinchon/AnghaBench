; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uipaq.c_uipaq_cfg_set_rts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uipaq.c_uipaq_cfg_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uipaq_softc* }
%struct.uipaq_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"onoff=%d\0A\00", align 1
@UCDC_LINE_RTS = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SET_CONTROL_LINE_STATE = common dso_local global i32 0, align 4
@UIPAQ_IFACE_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @uipaq_cfg_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uipaq_cfg_set_rts(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uipaq_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 0
  %9 = load %struct.uipaq_softc*, %struct.uipaq_softc** %8, align 8
  store %struct.uipaq_softc* %9, %struct.uipaq_softc** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @UCDC_LINE_RTS, align 4
  %16 = load %struct.uipaq_softc*, %struct.uipaq_softc** %5, align 8
  %17 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @UCDC_LINE_RTS, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.uipaq_softc*, %struct.uipaq_softc** %5, align 8
  %24 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @UCDC_SET_CONTROL_LINE_STATE, align 4
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.uipaq_softc*, %struct.uipaq_softc** %5, align 8
  %35 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @USETW(i32 %33, i32 %36)
  %38 = load i64, i64* @UIPAQ_IFACE_INDEX, align 8
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
  %48 = load %struct.uipaq_softc*, %struct.uipaq_softc** %5, align 8
  %49 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.uipaq_softc*, %struct.uipaq_softc** %5, align 8
  %52 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %51, i32 0, i32 0
  %53 = call i32 @ucom_cfg_do_request(i32 %50, i32* %52, %struct.usb_device_request* %6, i32* null, i32 0, i32 1000)
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
