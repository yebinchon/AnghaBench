; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmegadci_softc = type { %struct.TYPE_5__, i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@USB_REV_1_1 = common dso_local global i32 0, align 4
@atmegadci_bus_methods = common dso_local global i32 0, align 4
@ATMEGA_USBCON = common dso_local global i32 0, align 4
@ATMEGA_USBCON_USBE = common dso_local global i32 0, align 4
@ATMEGA_USBCON_FRZCLK = common dso_local global i32 0, align 4
@ATMEGA_UHWCON = common dso_local global i32 0, align 4
@ATMEGA_UHWCON_UVREGE = common dso_local global i32 0, align 4
@ATMEGA_UHWCON_UIMOD = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ATMEGA_USBCON_OTGPADE = common dso_local global i32 0, align 4
@ATMEGA_USBCON_VBUSTE = common dso_local global i32 0, align 4
@ATMEGA_UDCON = common dso_local global i32 0, align 4
@ATMEGA_UDCON_DETACH = common dso_local global i32 0, align 4
@ATMEGA_UDIEN = common dso_local global i32 0, align 4
@ATMEGA_UDINT_SUSPE = common dso_local global i32 0, align 4
@ATMEGA_UDINT_EORSTE = common dso_local global i32 0, align 4
@ATMEGA_UERST = common dso_local global i32 0, align 4
@ATMEGA_EP_MAX = common dso_local global i32 0, align 4
@ATMEGA_UENUM = common dso_local global i32 0, align 4
@ATMEGA_UEIENX = common dso_local global i32 0, align 4
@ATMEGA_UECONX = common dso_local global i32 0, align 4
@ATMEGA_USBSTA = common dso_local global i32 0, align 4
@ATMEGA_USBSTA_VBUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmegadci_init(%struct.atmegadci_softc* %0) #0 {
  %2 = alloca %struct.atmegadci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.atmegadci_softc* %0, %struct.atmegadci_softc** %2, align 8
  %4 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @USB_REV_1_1, align 4
  %6 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %7 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %5, i32* %8, align 8
  %9 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %10 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32* @atmegadci_bus_methods, i32** %11, align 8
  %12 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %13 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %12, i32 0, i32 0
  %14 = call i32 @USB_BUS_LOCK(%struct.TYPE_5__* %13)
  %15 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %16 = load i32, i32* @ATMEGA_USBCON, align 4
  %17 = load i32, i32* @ATMEGA_USBCON_USBE, align 4
  %18 = load i32, i32* @ATMEGA_USBCON_FRZCLK, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %15, i32 %16, i32 %19)
  %21 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %22 = load i32, i32* @ATMEGA_UHWCON, align 4
  %23 = load i32, i32* @ATMEGA_UHWCON_UVREGE, align 4
  %24 = load i32, i32* @ATMEGA_UHWCON_UIMOD, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %21, i32 %22, i32 %25)
  %27 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %28 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %27, i32 73, i32 22)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %45, %1
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 20
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %34 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %33, i32 73)
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %48

38:                                               ; preds = %32
  %39 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %40 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* @hz, align 4
  %43 = sdiv i32 %42, 100
  %44 = call i32 @usb_pause_mtx(i32* %41, i32 %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %29

48:                                               ; preds = %37, %29
  %49 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %50 = load i32, i32* @ATMEGA_USBCON, align 4
  %51 = load i32, i32* @ATMEGA_USBCON_USBE, align 4
  %52 = load i32, i32* @ATMEGA_USBCON_OTGPADE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ATMEGA_USBCON_VBUSTE, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %49, i32 %50, i32 %55)
  %57 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %58 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %57, i32 0, i32 1
  %59 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %58, align 8
  %60 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %61 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %60, i32 0, i32 0
  %62 = call i32 %59(%struct.TYPE_5__* %61)
  %63 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %64 = load i32, i32* @ATMEGA_UDCON, align 4
  %65 = load i32, i32* @ATMEGA_UDCON_DETACH, align 4
  %66 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %63, i32 %64, i32 %65)
  %67 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %68 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* @hz, align 4
  %71 = sdiv i32 %70, 20
  %72 = call i32 @usb_pause_mtx(i32* %69, i32 %71)
  %73 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %74 = load i32, i32* @ATMEGA_UDIEN, align 4
  %75 = load i32, i32* @ATMEGA_UDINT_SUSPE, align 4
  %76 = load i32, i32* @ATMEGA_UDINT_EORSTE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %73, i32 %74, i32 %77)
  %79 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %80 = load i32, i32* @ATMEGA_UERST, align 4
  %81 = load i32, i32* @ATMEGA_EP_MAX, align 4
  %82 = shl i32 1, %81
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %79, i32 %80, i32 %83)
  %85 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %86 = load i32, i32* @ATMEGA_UERST, align 4
  %87 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %85, i32 %86, i32 0)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %103, %48
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @ATMEGA_EP_MAX, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %94 = load i32, i32* @ATMEGA_UENUM, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %98 = load i32, i32* @ATMEGA_UEIENX, align 4
  %99 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %97, i32 %98, i32 0)
  %100 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %101 = load i32, i32* @ATMEGA_UECONX, align 4
  %102 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %100, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %88

106:                                              ; preds = %88
  %107 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %108 = call i32 @atmegadci_clocks_off(%struct.atmegadci_softc* %107)
  %109 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %110 = load i32, i32* @ATMEGA_USBSTA, align 4
  %111 = call i32 @ATMEGA_READ_1(%struct.atmegadci_softc* %109, i32 %110)
  store i32 %111, i32* %3, align 4
  %112 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @ATMEGA_USBSTA_VBUS, align 4
  %115 = and i32 %113, %114
  %116 = call i32 @atmegadci_vbus_interrupt(%struct.atmegadci_softc* %112, i32 %115)
  %117 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %118 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %117, i32 0, i32 0
  %119 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_5__* %118)
  %120 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %2, align 8
  %121 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %120, i32 0, i32 0
  %122 = call i32 @atmegadci_do_poll(%struct.TYPE_5__* %121)
  ret i32 0
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i32) #1

declare dso_local i32 @ATMEGA_READ_1(%struct.atmegadci_softc*, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @atmegadci_clocks_off(%struct.atmegadci_softc*) #1

declare dso_local i32 @atmegadci_vbus_interrupt(%struct.atmegadci_softc*, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @atmegadci_do_poll(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
