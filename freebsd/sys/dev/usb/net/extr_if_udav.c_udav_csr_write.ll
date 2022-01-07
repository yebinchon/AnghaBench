; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_csr_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_csr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udav_softc = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@UDAV_REQ_REG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udav_softc*, i32, i8*, i32)* @udav_csr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udav_csr_write(%struct.udav_softc* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.udav_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device_request, align 4
  store %struct.udav_softc* %0, %struct.udav_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @UDAV_REQ_REG_WRITE, align 4
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @USETW(i32 %19, i32 0)
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @USETW(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @USETW(i32 %26, i32 %27)
  %29 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %30 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %29, i32 0, i32 0
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @uether_do_request(i32* %30, %struct.usb_device_request* %9, i8* %31, i32 1000)
  ret i32 %32
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @uether_do_request(i32*, %struct.usb_device_request*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
