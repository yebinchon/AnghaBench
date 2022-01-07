; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_set_UART_reg_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_set_UART_reg_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umcs7840_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@MCS7840_WRREQ = common dso_local global i32 0, align 4
@UMCS7840_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Writing UART%d register %d failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.umcs7840_softc*, i32, i32, i32)* @umcs7840_set_UART_reg_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.umcs7840_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device_request, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.umcs7840_softc* %0, %struct.umcs7840_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = shl i32 %13, 8
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @MCS7840_WRREQ, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @USETW(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @USETW(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @USETW(i32 %30, i32 0)
  %32 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %33 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %36 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* @UMCS7840_CTRL_TIMEOUT, align 4
  %39 = call i64 @usbd_do_request_proc(i32 %34, i32* %37, %struct.usb_device_request* %9, i32* null, i32 0, i32* null, i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %4
  %43 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %44 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @usbd_errstr(i64 %48)
  %50 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %42, %4
  %52 = load i64, i64* %10, align 8
  ret i64 %52
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_proc(i32, i32*, %struct.usb_device_request*, i32*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
