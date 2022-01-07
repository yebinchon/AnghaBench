; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_set_reg_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_set_reg_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umcs7840_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@MCS7840_WRREQ = common dso_local global i32 0, align 4
@UMCS7840_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Writing register %d failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.umcs7840_softc*, i32, i32)* @umcs7840_set_reg_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.umcs7840_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device_request, align 4
  %8 = alloca i64, align 8
  store %struct.umcs7840_softc* %0, %struct.umcs7840_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @MCS7840_WRREQ, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @USETW(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @USETW(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @USETW(i32 %22, i32 0)
  %24 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %4, align 8
  %25 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %4, align 8
  %28 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* @UMCS7840_CTRL_TIMEOUT, align 4
  %31 = call i64 @usbd_do_request_proc(i32 %26, i32* %29, %struct.usb_device_request* %7, i32* null, i32 0, i32* null, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %3
  %35 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %4, align 8
  %36 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @usbd_errstr(i64 %39)
  %41 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %34, %3
  %43 = load i64, i64* %8, align 8
  ret i64 %43
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_proc(i32, i32*, %struct.usb_device_request*, i32*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
