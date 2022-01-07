; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.ipheth_softc = type { i64*, i32, i64 }
%struct.usb_device_request = type { i64*, i64*, i64*, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@IPHETH_CMD_CARRIER_CHECK = common dso_local global i32 0, align 4
@IPHETH_CTRL_BUF_SIZE = common dso_local global i64 0, align 8
@IPHETH_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@IPHETH_CARRIER_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @ipheth_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipheth_tick(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.ipheth_softc*, align 8
  %4 = alloca %struct.usb_device_request, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.ipheth_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.ipheth_softc* %7, %struct.ipheth_softc** %3, align 8
  %8 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 4
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @IPHETH_CMD_CARRIER_CHECK, align 4
  %11 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 3
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.ipheth_softc*, %struct.ipheth_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* @IPHETH_CTRL_BUF_SIZE, align 8
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  store i64 %27, i64* %30, align 8
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %35 = load %struct.ipheth_softc*, %struct.ipheth_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* @IPHETH_CTRL_TIMEOUT, align 4
  %39 = call i32 @uether_do_request(%struct.usb_ether* %34, %struct.usb_device_request* %4, i64* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %54

43:                                               ; preds = %1
  %44 = load %struct.ipheth_softc*, %struct.ipheth_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IPHETH_CARRIER_ON, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.ipheth_softc*, %struct.ipheth_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %43, %42
  ret void
}

declare dso_local %struct.ipheth_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @uether_do_request(%struct.usb_ether*, %struct.usb_device_request*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
