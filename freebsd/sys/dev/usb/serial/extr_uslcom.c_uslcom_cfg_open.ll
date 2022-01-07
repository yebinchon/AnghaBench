; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_cfg_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_cfg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uslcom_softc* }
%struct.uslcom_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@USLCOM_WRITE = common dso_local global i32 0, align 4
@USLCOM_IFC_ENABLE = common dso_local global i32 0, align 4
@USLCOM_IFC_ENABLE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"UART enable failed (ignored)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @uslcom_cfg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uslcom_cfg_open(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.uslcom_softc*, align 8
  %4 = alloca %struct.usb_device_request, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %5 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %5, i32 0, i32 0
  %7 = load %struct.uslcom_softc*, %struct.uslcom_softc** %6, align 8
  store %struct.uslcom_softc* %7, %struct.uslcom_softc** %3, align 8
  %8 = load i32, i32* @USLCOM_WRITE, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 4
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @USLCOM_IFC_ENABLE, align 4
  %11 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @USLCOM_IFC_ENABLE_EN, align 4
  %15 = call i32 @USETW(i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @USETW(i32 %17, i32 %20)
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @USETW(i32 %23, i32 0)
  %25 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %26 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %29 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %28, i32 0, i32 0
  %30 = call i64 @ucom_cfg_do_request(i32 %27, i32* %29, %struct.usb_device_request* %4, i32* null, i32 0, i32 1000)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %1
  %35 = load %struct.uslcom_softc*, %struct.uslcom_softc** %3, align 8
  %36 = call i32 @uslcom_watchdog(%struct.uslcom_softc* %35)
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @uslcom_watchdog(%struct.uslcom_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
