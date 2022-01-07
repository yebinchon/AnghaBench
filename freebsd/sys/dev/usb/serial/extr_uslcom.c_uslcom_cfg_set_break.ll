; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_cfg_set_break.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_cfg_set_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uslcom_softc* }
%struct.uslcom_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@USLCOM_SET_BREAK_ON = common dso_local global i32 0, align 4
@USLCOM_SET_BREAK_OFF = common dso_local global i32 0, align 4
@USLCOM_WRITE = common dso_local global i32 0, align 4
@USLCOM_SET_BREAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Set BREAK failed (ignored)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @uslcom_cfg_set_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uslcom_cfg_set_break(%struct.ucom_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uslcom_softc*, align 8
  %6 = alloca %struct.usb_device_request, align 4
  %7 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.uslcom_softc*, %struct.uslcom_softc** %9, align 8
  store %struct.uslcom_softc* %10, %struct.uslcom_softc** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @USLCOM_SET_BREAK_ON, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @USLCOM_SET_BREAK_OFF, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @USLCOM_WRITE, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @USLCOM_SET_BREAK, align 4
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @USETW(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @USETW(i32 %28, i32 %31)
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @USETW(i32 %34, i32 0)
  %36 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %37 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %40 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %39, i32 0, i32 0
  %41 = call i64 @ucom_cfg_do_request(i32 %38, i32* %40, %struct.usb_device_request* %6, i32* null, i32 0, i32 1000)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %17
  %44 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %17
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
