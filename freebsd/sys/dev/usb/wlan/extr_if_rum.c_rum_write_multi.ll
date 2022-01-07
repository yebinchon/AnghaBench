; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_write_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_write_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@RT2573_WRITE_MULTI_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not multi write MAC register: %s\0A\00", align 1
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rum_softc*, i64, i8*, i64)* @rum_write_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rum_write_multi(%struct.rum_softc* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.rum_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_device_request, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %14 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @RT2573_WRITE_MULTI_MAC, align 4
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @USETW(i32 %18, i64 0)
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %54, %4
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %12, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @USETW(i32 %26, i64 %29)
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %12, align 8
  %35 = sub i64 %33, %34
  %36 = call i64 @MIN(i64 %35, i32 64)
  %37 = call i32 @USETW(i32 %32, i64 %36)
  %38 = load %struct.rum_softc*, %struct.rum_softc** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = call i64 @rum_do_request(%struct.rum_softc* %38, %struct.usb_device_request* %10, i8* %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %24
  %46 = load %struct.rum_softc*, %struct.rum_softc** %6, align 8
  %47 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @usbd_errstr(i64 %49)
  %51 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %5, align 8
  br label %59

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 64
  store i64 %56, i64* %12, align 8
  br label %20

57:                                               ; preds = %20
  %58 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %45
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i32 @USETW(i32, i64) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @rum_do_request(%struct.rum_softc*, %struct.usb_device_request*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
