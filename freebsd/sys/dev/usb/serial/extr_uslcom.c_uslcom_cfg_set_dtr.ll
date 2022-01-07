; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_cfg_set_dtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_cfg_set_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uslcom_softc* }
%struct.uslcom_softc = type { i32, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"onoff = %d\0A\00", align 1
@USLCOM_MHS_DTR_ON = common dso_local global i32 0, align 4
@USLCOM_MHS_DTR_SET = common dso_local global i32 0, align 4
@USLCOM_WRITE = common dso_local global i32 0, align 4
@USLCOM_SET_MHS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Setting DTR failed (ignored)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i64)* @uslcom_cfg_set_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uslcom_cfg_set_dtr(%struct.ucom_softc* %0, i64 %1) #0 {
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
  %12 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @USLCOM_MHS_DTR_ON, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @USLCOM_MHS_DTR_SET, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @USLCOM_WRITE, align 4
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @USLCOM_SET_MHS, align 4
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @USETW(i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %34 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @USETW(i32 %32, i32 %35)
  %37 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @USETW(i32 %38, i32 0)
  %40 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %41 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %44 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %43, i32 0, i32 0
  %45 = call i64 @ucom_cfg_do_request(i32 %42, i32* %44, %struct.usb_device_request* %6, i32* null, i32 0, i32 1000)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %18
  %48 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %18
  ret void
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
