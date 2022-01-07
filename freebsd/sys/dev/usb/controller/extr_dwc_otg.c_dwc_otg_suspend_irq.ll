; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_suspend_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_suspend_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@GINTMSK_USBSUSPMSK = common dso_local global i32 0, align 4
@GINTMSK_WKUPINTMSK = common dso_local global i32 0, align 4
@DOTG_GINTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*)* @dwc_otg_suspend_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_suspend_irq(%struct.dwc_otg_softc* %0) #0 {
  %2 = alloca %struct.dwc_otg_softc*, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %2, align 8
  %3 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %4 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %10 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %13 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %8
  %21 = load i32, i32* @GINTMSK_USBSUSPMSK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %24 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @GINTMSK_WKUPINTMSK, align 4
  %28 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %29 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %33 = load i32, i32* @DOTG_GINTMSK, align 4
  %34 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %35 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %20, %8
  %39 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %40 = call i32 @dwc_otg_root_intr(%struct.dwc_otg_softc* %39)
  br label %41

41:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @dwc_otg_root_intr(%struct.dwc_otg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
