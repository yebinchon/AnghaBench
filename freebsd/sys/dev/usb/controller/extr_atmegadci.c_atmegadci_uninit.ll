; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmegadci_softc = type { i32, %struct.TYPE_2__, i32 (i32*)* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }

@ATMEGA_UDIEN = common dso_local global i32 0, align 4
@ATMEGA_UERST = common dso_local global i32 0, align 4
@ATMEGA_EP_MAX = common dso_local global i32 0, align 4
@ATMEGA_UHWCON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atmegadci_uninit(%struct.atmegadci_softc* %0) #0 {
  %2 = alloca %struct.atmegadci_softc*, align 8
  store %struct.atmegadci_softc* %0, %struct.atmegadci_softc** %2, align 8
  %3 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %4 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %3, i32 0, i32 0
  %5 = call i32 @USB_BUS_LOCK(i32* %4)
  %6 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %7 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %6, i32 0, i32 2
  %8 = load i32 (i32*)*, i32 (i32*)** %7, align 8
  %9 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %10 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %9, i32 0, i32 0
  %11 = call i32 %8(i32* %10)
  %12 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %13 = load i32, i32* @ATMEGA_UDIEN, align 4
  %14 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %12, i32 %13, i32 0)
  %15 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %16 = load i32, i32* @ATMEGA_UERST, align 4
  %17 = load i32, i32* @ATMEGA_EP_MAX, align 4
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %15, i32 %16, i32 %19)
  %21 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %22 = load i32, i32* @ATMEGA_UERST, align 4
  %23 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %21, i32 %22, i32 0)
  %24 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %25 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %28 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %31 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %34 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %37 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %40 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %43 = call i32 @atmegadci_pull_down(%struct.atmegadci_softc* %42)
  %44 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %45 = call i32 @atmegadci_clocks_off(%struct.atmegadci_softc* %44)
  %46 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %47 = load i32, i32* @ATMEGA_UHWCON, align 4
  %48 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %46, i32 %47, i32 0)
  %49 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %50 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %49, i32 0, i32 0
  %51 = call i32 @USB_BUS_UNLOCK(i32* %50)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i32) #1

declare dso_local i32 @atmegadci_pull_down(%struct.atmegadci_softc*) #1

declare dso_local i32 @atmegadci_clocks_off(%struct.atmegadci_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
