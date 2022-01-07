; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_radio_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_radio_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhso_softc = type { i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"usbd_do_request_flags failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhso_softc*, i32)* @uhso_radio_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_radio_ctrl(%struct.uhso_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uhso_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device_request, align 4
  %7 = alloca i64, align 8
  store %struct.uhso_softc* %0, %struct.uhso_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @UT_VENDOR, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 130, i32 129
  %14 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @USETW(i32 %16, i32 0)
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @USETW(i32 %19, i32 0)
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @USETW(i32 %22, i32 0)
  %24 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %25 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @usbd_do_request(i32 %26, i32* null, %struct.usb_device_request* %6, i32* null)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %32 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @usbd_errstr(i64 %34)
  %36 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %3, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request(i32, i32*, %struct.usb_device_request*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
