; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdce_softc = type { i32, i32*, i32 }
%struct.usb_device_request = type { i64, i64 }

@UT_WRITE_CLASS_INTERFACE = common dso_local global i64 0, align 8
@UCDC_NCM_SET_ETHERNET_PACKET_FILTER = common dso_local global i64 0, align 8
@CDCE_NOTIFY_SPEED_CHANGE = common dso_local global i32 0, align 4
@CDCE_INTR_TX = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**, i32*, i32, i32*)* @cdce_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdce_handle_request(i32 %0, i8* %1, i8** %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.cdce_softc*, align 8
  %15 = alloca %struct.usb_device_request*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.cdce_softc* @device_get_softc(i32 %17)
  store %struct.cdce_softc* %18, %struct.cdce_softc** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.usb_device_request*
  store %struct.usb_device_request* %20, %struct.usb_device_request** %15, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %6
  %29 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UCDC_NCM_SET_ETHERNET_PACKET_FILTER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load i32, i32* %16, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.cdce_softc*, %struct.cdce_softc** %14, align 8
  %39 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %38, i32 0, i32 0
  %40 = call i32 @mtx_lock(i32* %39)
  %41 = load i32, i32* @CDCE_NOTIFY_SPEED_CHANGE, align 4
  %42 = load %struct.cdce_softc*, %struct.cdce_softc** %14, align 8
  %43 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.cdce_softc*, %struct.cdce_softc** %14, align 8
  %45 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @CDCE_INTR_TX, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usbd_transfer_start(i32 %49)
  %51 = load %struct.cdce_softc*, %struct.cdce_softc** %14, align 8
  %52 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %51, i32 0, i32 0
  %53 = call i32 @mtx_unlock(i32* %52)
  br label %54

54:                                               ; preds = %37, %34
  store i32 0, i32* %7, align 4
  br label %57

55:                                               ; preds = %28, %6
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.cdce_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
