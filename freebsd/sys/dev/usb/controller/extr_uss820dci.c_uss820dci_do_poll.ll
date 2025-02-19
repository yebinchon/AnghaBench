; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_do_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }
%struct.uss820dci_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*)* @uss820dci_do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_do_poll(%struct.usb_bus* %0) #0 {
  %2 = alloca %struct.usb_bus*, align 8
  %3 = alloca %struct.uss820dci_softc*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %2, align 8
  %4 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %5 = call %struct.uss820dci_softc* @USS820_DCI_BUS2SC(%struct.usb_bus* %4)
  store %struct.uss820dci_softc* %5, %struct.uss820dci_softc** %3, align 8
  %6 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %6, i32 0, i32 0
  %8 = call i32 @USB_BUS_LOCK(i32* %7)
  %9 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %9, i32 0, i32 0
  %11 = call i32 @USB_BUS_SPIN_LOCK(i32* %10)
  %12 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %13 = call i32 @uss820dci_interrupt_poll_locked(%struct.uss820dci_softc* %12)
  %14 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %15 = call i32 @uss820dci_interrupt_complete_locked(%struct.uss820dci_softc* %14)
  %16 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %16, i32 0, i32 0
  %18 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %17)
  %19 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %20 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %19, i32 0, i32 0
  %21 = call i32 @USB_BUS_UNLOCK(i32* %20)
  ret void
}

declare dso_local %struct.uss820dci_softc* @USS820_DCI_BUS2SC(%struct.usb_bus*) #1

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @uss820dci_interrupt_poll_locked(%struct.uss820dci_softc*) #1

declare dso_local i32 @uss820dci_interrupt_complete_locked(%struct.uss820dci_softc*) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
