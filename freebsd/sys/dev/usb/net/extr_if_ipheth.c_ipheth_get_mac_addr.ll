; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipheth_softc = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_device_request = type { i64*, i64*, i64*, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@IPHETH_CMD_GET_MACADDR = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipheth_softc*)* @ipheth_get_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipheth_get_mac_addr(%struct.ipheth_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipheth_softc*, align 8
  %4 = alloca %struct.usb_device_request, align 8
  %5 = alloca i32, align 4
  store %struct.ipheth_softc* %0, %struct.ipheth_softc** %3, align 8
  %6 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %7 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 4
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @IPHETH_CMD_GET_MACADDR, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 3
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.ipheth_softc*, %struct.ipheth_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %25, i64* %28, align 8
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.ipheth_softc*, %struct.ipheth_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipheth_softc*, %struct.ipheth_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usbd_do_request(i32 %35, i32* null, %struct.usb_device_request* %4, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %54

44:                                               ; preds = %1
  %45 = load %struct.ipheth_softc*, %struct.ipheth_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ipheth_softc*, %struct.ipheth_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %53 = call i32 @memcpy(i32 %48, i32 %51, i64 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %44, %42
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @usbd_do_request(i32, i32*, %struct.usb_device_request*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
