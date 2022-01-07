; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_free_rx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_free_rx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_usb_softc = type { i32, i32, i64, i64, i32 }

@RTWN_USB_RX_LIST_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_usb_free_rx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_usb_free_rx_list(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.rtwn_usb_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = call %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc* %4)
  store %struct.rtwn_usb_softc* %5, %struct.rtwn_usb_softc** %3, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RTWN_USB_RX_LIST_COUNT, align 4
  %11 = call i32 @rtwn_usb_free_list(%struct.rtwn_softc* %6, i32 %9, i32 %10)
  %12 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %16, i32 0, i32 1
  %18 = call i32 @STAILQ_INIT(i32* %17)
  %19 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %20 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %19, i32 0, i32 0
  %21 = call i32 @STAILQ_INIT(i32* %20)
  ret void
}

declare dso_local %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_usb_free_list(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
