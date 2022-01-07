; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvisor.c_uvisor_cfg_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvisor.c_uvisor_cfg_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uvisor_softc* }
%struct.uvisor_softc = type { i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UVISOR_CONNECTION_INFO_SIZE = common dso_local global i32 0, align 4
@UT_READ_VENDOR_ENDPOINT = common dso_local global i32 0, align 4
@UVISOR_CLOSE_NOTIFICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"close notification failed, error=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @uvisor_cfg_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvisor_cfg_close(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.uvisor_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_device_request, align 4
  %7 = alloca i64, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %8 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %8, i32 0, i32 0
  %10 = load %struct.uvisor_softc*, %struct.uvisor_softc** %9, align 8
  store %struct.uvisor_softc* %10, %struct.uvisor_softc** %3, align 8
  %11 = load i32, i32* @UVISOR_CONNECTION_INFO_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @UT_READ_VENDOR_ENDPOINT, align 4
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @UVISOR_CLOSE_NOTIFICATION, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @USETW(i32 %20, i32 0)
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @USETW(i32 %23, i32 0)
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UVISOR_CONNECTION_INFO_SIZE, align 4
  %28 = call i32 @USETW(i32 %26, i32 %27)
  %29 = load %struct.uvisor_softc*, %struct.uvisor_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.uvisor_softc*, %struct.uvisor_softc** %3, align 8
  %33 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %32, i32 0, i32 0
  %34 = call i64 @ucom_cfg_do_request(i32 %31, i32* %33, %struct.usb_device_request* %6, i32* %14, i32 0, i32 1000)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @usbd_errstr(i64 %38)
  %40 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @USETW(i32, i32) #2

declare dso_local i64 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #2

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #2

declare dso_local i32 @usbd_errstr(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
