; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_bs_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_bs_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhso_softc = type { i32, i32, i32*, i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UHSO_IF_BULK = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SET_CONTROL_LINE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to set ctrl line state to 0x%02x: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhso_softc*)* @uhso_bs_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_bs_cfg(%struct.uhso_softc* %0) #0 {
  %2 = alloca %struct.uhso_softc*, align 8
  %3 = alloca %struct.usb_device_request, align 4
  %4 = alloca i64, align 8
  store %struct.uhso_softc* %0, %struct.uhso_softc** %2, align 8
  %5 = load %struct.uhso_softc*, %struct.uhso_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @UHSO_IFACE_USB_TYPE(i32 %7)
  %9 = load i32, i32* @UHSO_IF_BULK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %53

13:                                               ; preds = %1
  %14 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @UCDC_SET_CONTROL_LINE_STATE, align 4
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.uhso_softc*, %struct.uhso_softc** %2, align 8
  %21 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @USETW(i32 %19, i32 %22)
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uhso_softc*, %struct.uhso_softc** %2, align 8
  %27 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @USETW(i32 %25, i32 %28)
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @USETW(i32 %31, i32 0)
  %33 = load %struct.uhso_softc*, %struct.uhso_softc** %2, align 8
  %34 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.uhso_softc*, %struct.uhso_softc** %2, align 8
  %37 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i64 @ucom_cfg_do_request(i32 %35, i32* %39, %struct.usb_device_request* %3, i32* null, i32 0, i32 1000)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %13
  %44 = load %struct.uhso_softc*, %struct.uhso_softc** %2, align 8
  %45 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.uhso_softc*, %struct.uhso_softc** %2, align 8
  %48 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @usbd_errstr(i64 %50)
  %52 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %12, %43, %13
  ret void
}

declare dso_local i32 @UHSO_IFACE_USB_TYPE(i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
