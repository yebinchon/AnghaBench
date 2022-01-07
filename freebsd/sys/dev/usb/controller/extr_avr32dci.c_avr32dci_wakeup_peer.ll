; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_wakeup_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_wakeup_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32dci_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AVR32_CTRL_DEV_REWAKEUP = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.avr32dci_softc*)* @avr32dci_wakeup_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_wakeup_peer(%struct.avr32dci_softc* %0) #0 {
  %2 = alloca %struct.avr32dci_softc*, align 8
  store %struct.avr32dci_softc* %0, %struct.avr32dci_softc** %2, align 8
  %3 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %4 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %11 = load i32, i32* @AVR32_CTRL_DEV_REWAKEUP, align 4
  %12 = call i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc* %10, i32 %11, i32 0)
  %13 = load %struct.avr32dci_softc*, %struct.avr32dci_softc** %2, align 8
  %14 = getelementptr inbounds %struct.avr32dci_softc, %struct.avr32dci_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* @hz, align 4
  %17 = sdiv i32 %16, 125
  %18 = call i32 @usb_pause_mtx(i32* %15, i32 %17)
  br label %19

19:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @avr32dci_mod_ctrl(%struct.avr32dci_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
