; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_ctrl_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_ctrl_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uchcom_softc = type { i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RD REQ 0x%02X VAL 0x%04X IDX 0x%04X LEN %d\0A\00", align 1
@USB_SHORT_XFER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uchcom_softc*, i32, i32, i32, i8*, i32)* @uchcom_ctrl_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uchcom_ctrl_read(%struct.uchcom_softc* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.uchcom_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device_request, align 4
  store %struct.uchcom_softc* %0, %struct.uchcom_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @USETW(i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @USETW(i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @USETW(i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @DPRINTF(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.uchcom_softc*, %struct.uchcom_softc** %7, align 8
  %36 = getelementptr inbounds %struct.uchcom_softc, %struct.uchcom_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uchcom_softc*, %struct.uchcom_softc** %7, align 8
  %39 = getelementptr inbounds %struct.uchcom_softc, %struct.uchcom_softc* %38, i32 0, i32 0
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* @USB_SHORT_XFER_OK, align 4
  %42 = call i32 @ucom_cfg_do_request(i32 %37, i32* %39, %struct.usb_device_request* %13, i8* %40, i32 %41, i32 1000)
  ret void
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
