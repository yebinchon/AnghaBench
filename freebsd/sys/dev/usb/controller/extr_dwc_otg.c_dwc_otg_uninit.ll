; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64, i64 }

@DOTG_DCTL = common dso_local global i32 0, align 4
@DCTL_SFTDISCON = common dso_local global i32 0, align 4
@DOTG_GAHBCFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc_otg_uninit(%struct.dwc_otg_softc* %0) #0 {
  %2 = alloca %struct.dwc_otg_softc*, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %2, align 8
  %3 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %4 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %3, i32 0, i32 1
  %5 = call i32 @USB_BUS_LOCK(i32* %4)
  %6 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %7 = call i32 @dwc_otg_timer_stop(%struct.dwc_otg_softc* %6)
  %8 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %9 = load i32, i32* @DOTG_DCTL, align 4
  %10 = load i32, i32* @DCTL_SFTDISCON, align 4
  %11 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %13 = load i32, i32* @DOTG_GAHBCFG, align 4
  %14 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %12, i32 %13, i32 0)
  %15 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %19 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %22 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %25 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %28 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %31 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %34 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %37 = call i32 @dwc_otg_pull_down(%struct.dwc_otg_softc* %36)
  %38 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %39 = call i32 @dwc_otg_clocks_off(%struct.dwc_otg_softc* %38)
  %40 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %41 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %40, i32 0, i32 1
  %42 = call i32 @USB_BUS_UNLOCK(i32* %41)
  %43 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %44 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %43, i32 0, i32 0
  %45 = call i32 @usb_callout_drain(i32* %44)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @dwc_otg_timer_stop(%struct.dwc_otg_softc*) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @dwc_otg_pull_down(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_clocks_off(%struct.dwc_otg_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
