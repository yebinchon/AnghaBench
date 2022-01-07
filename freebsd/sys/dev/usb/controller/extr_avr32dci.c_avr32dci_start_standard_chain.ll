; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_start_standard_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_start_standard_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.avr32dci_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UE_ADDR = common dso_local global i32 0, align 4
@avr32dci_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @avr32dci_start_standard_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_start_standard_chain(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.avr32dci_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %5 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %7 = call i64 @avr32dci_xfer_do_fifo(%struct.usb_xfer* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @UE_ADDR, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call %struct.avr32dci_softc* @AVR32_BUS2SC(%struct.TYPE_4__* %19)
  store %struct.avr32dci_softc* %20, %struct.avr32dci_softc** %4, align 8
  %21 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @AVR32_INT_EPT_INT(i32 %22)
  %24 = call i32 @avr32dci_mod_ien(%struct.avr32dci_softc* %21, i32 %23, i32 0)
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %26 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %32 = call i32 @usbd_transfer_enqueue(i32* %30, %struct.usb_xfer* %31)
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %34 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %9
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %40 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @usbd_transfer_timeout_ms(%struct.usb_xfer* %38, i32* @avr32dci_timeout, i64 %41)
  br label %43

43:                                               ; preds = %37, %9
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i64 @avr32dci_xfer_do_fifo(%struct.usb_xfer*) #1

declare dso_local %struct.avr32dci_softc* @AVR32_BUS2SC(%struct.TYPE_4__*) #1

declare dso_local i32 @avr32dci_mod_ien(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_INT_EPT_INT(i32) #1

declare dso_local i32 @usbd_transfer_enqueue(i32*, %struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_timeout_ms(%struct.usb_xfer*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
