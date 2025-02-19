; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_start_dma_delay_second.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_start_dma_delay_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ehci_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@usb_dma_delay_done_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @ehci_start_dma_delay_second to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_start_dma_delay_second(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.ehci_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ehci_softc* @EHCI_BUS2SC(i32 %8)
  store %struct.ehci_softc* %9, %struct.ehci_softc** %3, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ehci_softc*, %struct.ehci_softc** %3, align 8
  %12 = call i32 @ehci_doorbell_async(%struct.ehci_softc* %11)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = call i32 @usbd_transfer_timeout_ms(%struct.usb_xfer* %13, void (i8*)* bitcast (i32* @usb_dma_delay_done_cb to void (i8*)*), i32 4)
  ret void
}

declare dso_local %struct.ehci_softc* @EHCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ehci_doorbell_async(%struct.ehci_softc*) #1

declare dso_local i32 @usbd_transfer_timeout_ms(%struct.usb_xfer*, void (i8*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
