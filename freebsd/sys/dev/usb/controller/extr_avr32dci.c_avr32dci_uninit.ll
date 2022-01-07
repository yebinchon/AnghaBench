; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_softc = type { i32, %struct.TYPE_2__, i32 (i32*)* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }

@AVR32_EPTRST = common dso_local global i32 0, align 4
@AVR32_EP_MAX = common dso_local global i32 0, align 4
@AVR32_EPTCTL_EPT_ENABL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avr32dci_uninit(%struct.avr32dci_softc* %0) #0 {
  %2 = alloca %struct.avr32dci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.avr32dci_softc* %0, %struct.avr32dci_softc** %2, align 8
  %4 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %4, i32 0, i32 0
  %6 = call i32 @USB_BUS_LOCK(i32* %5)
  %7 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %8 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %7, i32 0, i32 2
  %9 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %10 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %11 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %10, i32 0, i32 0
  %12 = call i32 %9(i32* %11)
  %13 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %14 = call i32 @avr32dci_mod_ien(%struct.avr32dci_softc* %13, i32 0, i32 -1)
  %15 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %16 = load i32, i32* @AVR32_EPTRST, align 4
  %17 = load i32, i32* @AVR32_EP_MAX, align 4
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %15, i32 %16, i32 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %31, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @AVR32_EP_MAX, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @AVR32_EPTCTLDIS(i32 %27)
  %29 = load i32, i32* @AVR32_EPTCTL_EPT_ENABL, align 4
  %30 = call i32 @AVR32_WRITE_4(%struct.avr32dci_softc* %26, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %36 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %39 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %42 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %45 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %48 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %51 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %54 = call i32 @avr32dci_pull_down(%struct.avr32dci_softc* %53)
  %55 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %56 = call i32 @avr32dci_clocks_off(%struct.avr32dci_softc* %55)
  %57 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %58 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %57, i32 0, i32 0
  %59 = call i32 @USB_BUS_UNLOCK(i32* %58)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @avr32dci_mod_ien(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_WRITE_4(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @AVR32_EPTCTLDIS(i32) #1

declare dso_local i32 @avr32dci_pull_down(%struct.avr32dci_softc*) #1

declare dso_local i32 @avr32dci_clocks_off(%struct.avr32dci_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
