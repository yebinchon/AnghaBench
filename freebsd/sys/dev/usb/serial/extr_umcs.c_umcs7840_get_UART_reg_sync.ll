; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_get_UART_reg_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_get_UART_reg_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umcs7840_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@MCS7840_RDREQ = common dso_local global i32 0, align 4
@UMCS7840_READ_LENGTH = common dso_local global i32 0, align 4
@UMCS7840_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Reading UART%d register %d failed: invalid length %d\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Reading UART%d register %d failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.umcs7840_softc*, i32, i32, i32*)* @umcs7840_get_UART_reg_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @umcs7840_get_UART_reg_sync(%struct.umcs7840_softc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.umcs7840_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usb_device_request, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.umcs7840_softc* %0, %struct.umcs7840_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = shl i32 %15, 8
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @MCS7840_RDREQ, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @USETW(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @USETW(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @UMCS7840_READ_LENGTH, align 4
  %32 = call i32 @USETW(i32 %30, i32 %31)
  %33 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %6, align 8
  %34 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %6, align 8
  %37 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %9, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load i32, i32* @UMCS7840_CTRL_TIMEOUT, align 4
  %42 = call i64 @usbd_do_request_proc(i32 %35, i32* %38, %struct.usb_device_request* %10, i8* %40, i32 0, i32* %13, i32 %41)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %6, align 8
  %51 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %57, i64* %5, align 8
  br label %73

58:                                               ; preds = %46, %4
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %6, align 8
  %63 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @usbd_errstr(i64 %67)
  %69 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %61, %58
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %49
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_proc(i32, i32*, %struct.usb_device_request*, i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
