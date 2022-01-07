; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_clocks_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_clocks_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmegadci_softc = type { %struct.TYPE_2__, i32, i32 (i32*)* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ATMEGA_USBCON = common dso_local global i32 0, align 4
@ATMEGA_USBCON_USBE = common dso_local global i32 0, align 4
@ATMEGA_USBCON_OTGPADE = common dso_local global i32 0, align 4
@ATMEGA_USBCON_FRZCLK = common dso_local global i32 0, align 4
@ATMEGA_USBCON_VBUSTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmegadci_softc*)* @atmegadci_clocks_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmegadci_clocks_off(%struct.atmegadci_softc* %0) #0 {
  %2 = alloca %struct.atmegadci_softc*, align 8
  store %struct.atmegadci_softc* %0, %struct.atmegadci_softc** %2, align 8
  %3 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %4 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %11 = load i32, i32* @ATMEGA_USBCON, align 4
  %12 = load i32, i32* @ATMEGA_USBCON_USBE, align 4
  %13 = load i32, i32* @ATMEGA_USBCON_OTGPADE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ATMEGA_USBCON_FRZCLK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ATMEGA_USBCON_VBUSTE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %10, i32 %11, i32 %18)
  %20 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %21 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %20, i32 0, i32 2
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %24 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %23, i32 0, i32 1
  %25 = call i32 %22(i32* %24)
  %26 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %27 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
