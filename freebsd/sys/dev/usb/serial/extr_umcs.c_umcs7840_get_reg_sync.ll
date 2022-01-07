; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_get_reg_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_get_reg_sync.c"
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
@.str = private unnamed_addr constant [47 x i8] c"Reading register %d failed: invalid length %d\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Reading register %d failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.umcs7840_softc*, i32, i32*)* @umcs7840_get_reg_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.umcs7840_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usb_device_request, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.umcs7840_softc* %0, %struct.umcs7840_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @MCS7840_RDREQ, align 4
  %14 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @USETW(i32 %16, i32 0)
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @USETW(i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UMCS7840_READ_LENGTH, align 4
  %25 = call i32 @USETW(i32 %23, i32 %24)
  %26 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %27 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %30 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %7, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* @UMCS7840_CTRL_TIMEOUT, align 4
  %35 = call i64 @usbd_do_request_proc(i32 %28, i32* %31, %struct.usb_device_request* %8, i8* %33, i32 0, i32* %10, i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %3
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %44 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %49, i64* %4, align 8
  br label %64

50:                                               ; preds = %39, %3
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %5, align 8
  %55 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @usbd_errstr(i64 %58)
  %60 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %53, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %42
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_proc(i32, i32*, %struct.usb_device_request*, i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
