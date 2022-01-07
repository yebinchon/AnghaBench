; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_softc = type { %struct.TYPE_5__, i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@USB_REV_1_1 = common dso_local global i32 0, align 4
@avr32dci_bus_methods = common dso_local global i32 0, align 4
@AVR32_CTRL_DEV_EN_USBA = common dso_local global i32 0, align 4
@AVR32_CTRL_DEV_DETACH = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AVR32_INT_DET_SUSPD = common dso_local global i32 0, align 4
@AVR32_INT_ENDRESET = common dso_local global i32 0, align 4
@AVR32_EPTRST = common dso_local global i32 0, align 4
@AVR32_EP_MAX = common dso_local global i32 0, align 4
@AVR32_EPTCTL_EPT_ENABL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avr32dci_init(%struct.avr32dci_softc* %0) #0 {
  %2 = alloca %struct.avr32dci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.avr32dci_softc* %0, %struct.avr32dci_softc** %2, align 8
  %4 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @USB_REV_1_1, align 4
  %6 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %7 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %5, i32* %8, align 8
  %9 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %10 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32* @avr32dci_bus_methods, i32** %11, align 8
  %12 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %13 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %12, i32 0, i32 0
  %14 = call i32 @USB_BUS_LOCK(%struct.TYPE_5__* %13)
  %15 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %16 = load i32, i32* @AVR32_CTRL_DEV_EN_USBA, align 4
  %17 = call i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc* %15, i32 %16, i32 0)
  %18 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %19 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %18, i32 0, i32 1
  %20 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %19, align 8
  %21 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %22 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %21, i32 0, i32 0
  %23 = call i32 %20(%struct.TYPE_5__* %22)
  %24 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %25 = load i32, i32* @AVR32_CTRL_DEV_DETACH, align 4
  %26 = call i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc* %24, i32 %25, i32 0)
  %27 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %28 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* @hz, align 4
  %31 = sdiv i32 %30, 20
  %32 = call i32 @usb_pause_mtx(i32* %29, i32 %31)
  %33 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %34 = call i32 @avr32dci_mod_ien(%struct.avr32dci_softc* %33, i32 0, i32 -1)
  %35 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %36 = load i32, i32* @AVR32_INT_DET_SUSPD, align 4
  %37 = load i32, i32* @AVR32_INT_ENDRESET, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @avr32dci_mod_ien(%struct.avr32dci_softc* %35, i32 %38, i32 0)
  %40 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %41 = load i32, i32* @AVR32_EPTRST, align 4
  %42 = load i32, i32* @AVR32_EP_MAX, align 4
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %40, i32 %41, i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %56, %1
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @AVR32_EP_MAX, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @AVR32_EPTCTLDIS(i32 %52)
  %54 = load i32, i32* @AVR32_EPTCTL_EPT_ENABL, align 4
  %55 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %51, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %46

59:                                               ; preds = %46
  %60 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %61 = call i32 @avr32dci_clocks_off(%struct.avr32dci_softc* %60)
  %62 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %63 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %62, i32 0, i32 0
  %64 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_5__* %63)
  %65 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %66 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %65, i32 0, i32 0
  %67 = call i32 @avr32dci_do_poll(%struct.TYPE_5__* %66)
  ret i32 0
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @avr32dci_mod_ien(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_WRITE_4(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_EPTCTLDIS(i32) #1

declare dso_local i32 @avr32dci_clocks_off(%struct.avr32dci_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @avr32dci_do_poll(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
