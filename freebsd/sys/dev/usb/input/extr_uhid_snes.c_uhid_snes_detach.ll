; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_snes_softc = type { i32, i32, i32, i32, i32 }

@UHID_SNES_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uhid_snes_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_snes_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhid_snes_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.uhid_snes_softc* @device_get_softc(i32 %4)
  store %struct.uhid_snes_softc* %5, %struct.uhid_snes_softc** %3, align 8
  %6 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %6, i32 0, i32 4
  %8 = call i32 @usb_fifo_detach(i32* %7)
  %9 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %9, i32 0, i32 3
  %11 = call i32 @usb_fifo_detach(i32* %10)
  %12 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %15, i32 0, i32 1
  %17 = call i32 @usb_callout_stop(i32* %16)
  %18 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_unlock(i32* %19)
  %21 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %3, align 8
  %22 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UHID_SNES_N_TRANSFER, align 4
  %25 = call i32 @usbd_transfer_unsetup(i32 %23, i32 %24)
  %26 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %26, i32 0, i32 1
  %28 = call i32 @usb_callout_drain(i32* %27)
  %29 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %29, i32 0, i32 0
  %31 = call i32 @mtx_destroy(i32* %30)
  ret i32 0
}

declare dso_local %struct.uhid_snes_softc* @device_get_softc(i32) #1

declare dso_local i32 @usb_fifo_detach(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usb_callout_stop(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
