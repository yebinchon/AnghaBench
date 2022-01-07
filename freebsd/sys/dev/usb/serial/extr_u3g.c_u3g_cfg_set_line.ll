; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_cfg_set_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_cfg_set_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i64, %struct.u3g_softc* }
%struct.u3g_softc = type { i32, i64*, i32* }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SET_CONTROL_LINE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @u3g_cfg_set_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u3g_cfg_set_line(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.u3g_softc*, align 8
  %4 = alloca %struct.usb_device_request, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %5 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %5, i32 0, i32 1
  %7 = load %struct.u3g_softc*, %struct.u3g_softc** %6, align 8
  store %struct.u3g_softc* %7, %struct.u3g_softc** %3, align 8
  %8 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 4
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @UCDC_SET_CONTROL_LINE_STATE, align 4
  %11 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %15 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @USETW(i32 %13, i32 %21)
  %23 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %24 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 %30, i64* %33, align 8
  %34 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @USETW(i32 %38, i32 0)
  %40 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %41 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %44 = call i32 @ucom_cfg_do_request(i32 %42, %struct.ucom_softc* %43, %struct.usb_device_request* %4, i32* null, i32 0, i32 1000)
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, %struct.ucom_softc*, %struct.usb_device_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
