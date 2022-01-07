; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_bulk_tx_callback_h2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_bulk_tx_callback_h2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.rsu_softc = type { i32 }

@RSU_BULK_TX_H2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @rsu_bulk_tx_callback_h2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_bulk_tx_callback_h2c(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsu_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = call %struct.rsu_softc* @usbd_xfer_softc(%struct.usb_xfer* %6)
  store %struct.rsu_softc* %7, %struct.rsu_softc** %5, align 8
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @RSU_BULK_TX_H2C, align 4
  %11 = call i32 @rsu_bulk_tx_callback_sub(%struct.usb_xfer* %8, i32 %9, i32 %10)
  %12 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %13 = call i32 @rsu_start(%struct.rsu_softc* %12)
  ret void
}

declare dso_local %struct.rsu_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @rsu_bulk_tx_callback_sub(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @rsu_start(%struct.rsu_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
