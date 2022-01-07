; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_timer_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i32 }

@hz = common dso_local global i32 0, align 4
@DWC_OTG_HOST_TIMER_RATE = common dso_local global i32 0, align 4
@dwc_otg_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_otg_softc*)* @dwc_otg_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_timer_start(%struct.dwc_otg_softc* %0) #0 {
  %2 = alloca %struct.dwc_otg_softc*, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %2, align 8
  %3 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %4 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %10 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %11, i32 0, i32 1
  %13 = load i32, i32* @hz, align 4
  %14 = load i32, i32* @DWC_OTG_HOST_TIMER_RATE, align 4
  %15 = sdiv i32 1000, %14
  %16 = sdiv i32 %13, %15
  %17 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %2, align 8
  %18 = call i32 @usb_callout_reset(i32* %12, i32 %16, i32* @dwc_otg_timer, %struct.dwc_otg_softc* %17)
  br label %19

19:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @usb_callout_reset(i32*, i32, i32*, %struct.dwc_otg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
