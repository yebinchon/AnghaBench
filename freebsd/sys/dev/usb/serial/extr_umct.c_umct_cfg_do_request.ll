; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umct.c_umct_cfg_do_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umct.c_umct_cfg_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umct_softc = type { i32, i32, i64 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"device request failed, err=%s (ignored)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umct_softc*, i32, i32, i32)* @umct_cfg_do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umct_cfg_do_request(%struct.umct_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.umct_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device_request, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x i32], align 16
  store %struct.umct_softc* %0, %struct.umct_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 4, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @USETW(i32 %21, i32 0)
  %23 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %24 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %25, i64* %28, align 8
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @USETW(i32 %33, i32 %34)
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @USETDW(i32* %36, i32 %37)
  %39 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %40 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %43 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %45 = call i64 @ucom_cfg_do_request(i32 %41, i32* %43, %struct.usb_device_request* %9, i32* %44, i32 0, i32 1000)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %15
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @usbd_errstr(i64 %49)
  %51 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %15
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @USETDW(i32*, i32) #1

declare dso_local i64 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
