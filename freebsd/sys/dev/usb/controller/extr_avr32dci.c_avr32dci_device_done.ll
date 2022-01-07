; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_device_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.avr32dci_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"xfer=%p, pipe=%p, error=%d\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@UE_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"disabled interrupts!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @avr32dci_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_device_done(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.avr32dci_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.avr32dci_softc* @AVR32_BUS2SC(i32 %11)
  store %struct.avr32dci_softc* %12, %struct.avr32dci_softc** %5, align 8
  %13 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %14 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %13, i32 0, i32 0
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @USB_BUS_LOCK_ASSERT(i32* %14, i32 %15)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, ...) @DPRINTFN(i32 9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %17, i32 %20, i32 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_MODE_DEVICE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @UE_ADDR, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @AVR32_INT_EPT_INT(i32 %36)
  %38 = call i32 @avr32dci_mod_ien(%struct.avr32dci_softc* %35, i32 0, i32 %37)
  %39 = call i32 (i32, i8*, ...) @DPRINTFN(i32 15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %29, %2
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @usbd_transfer_done(%struct.usb_xfer* %41, i32 %42)
  ret void
}

declare dso_local %struct.avr32dci_softc* @AVR32_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @avr32dci_mod_ien(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_INT_EPT_INT(i32) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
