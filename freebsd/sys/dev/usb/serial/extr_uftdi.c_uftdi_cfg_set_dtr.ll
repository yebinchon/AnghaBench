; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_cfg_set_dtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_cfg_set_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32, %struct.uftdi_softc* }
%struct.uftdi_softc = type { i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"DTR=%u\0A\00", align 1
@FTDI_SIO_SET_DTR_HIGH = common dso_local global i32 0, align 4
@FTDI_SIO_SET_DTR_LOW = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@FTDI_SIO_MODEM_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @uftdi_cfg_set_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uftdi_cfg_set_dtr(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uftdi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device_request, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %9, i32 0, i32 1
  %11 = load %struct.uftdi_softc*, %struct.uftdi_softc** %10, align 8
  store %struct.uftdi_softc* %11, %struct.uftdi_softc** %5, align 8
  %12 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FTDI_SIO_SET_DTR_HIGH, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @FTDI_SIO_SET_DTR_LOW, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @FTDI_SIO_MODEM_CTRL, align 4
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @USETW(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @USETW(i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @USETW(i32 %38, i32 0)
  %40 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %41 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %44 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %43, i32 0, i32 0
  %45 = call i32 @ucom_cfg_do_request(i32 %42, i32* %44, %struct.usb_device_request* %8, i32* null, i32 0, i32 1000)
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i64) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
