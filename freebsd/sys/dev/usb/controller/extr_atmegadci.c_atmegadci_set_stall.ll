; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_set_stall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_set_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_endpoint = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.atmegadci_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"endpoint=%p\0A\00", align 1
@UE_ADDR = common dso_local global i32 0, align 4
@ATMEGA_UENUM = common dso_local global i32 0, align 4
@ATMEGA_UECONX = common dso_local global i32 0, align 4
@ATMEGA_UECONX_EPEN = common dso_local global i32 0, align 4
@ATMEGA_UECONX_STALLRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint*, i32*)* @atmegadci_set_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmegadci_set_stall(%struct.usb_device* %0, %struct.usb_endpoint* %1, i32* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.atmegadci_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @USB_BUS_LOCK_ASSERT(i32 %11, i32 %12)
  %14 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %15 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.atmegadci_softc* @ATMEGA_BUS2SC(i32 %18)
  store %struct.atmegadci_softc* %19, %struct.atmegadci_softc** %7, align 8
  %20 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %21 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UE_ADDR, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %7, align 8
  %28 = load i32, i32* @ATMEGA_UENUM, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %7, align 8
  %32 = load i32, i32* @ATMEGA_UECONX, align 4
  %33 = load i32, i32* @ATMEGA_UECONX_EPEN, align 4
  %34 = load i32, i32* @ATMEGA_UECONX_STALLRQ, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %31, i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*) #1

declare dso_local %struct.atmegadci_softc* @ATMEGA_BUS2SC(i32) #1

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
