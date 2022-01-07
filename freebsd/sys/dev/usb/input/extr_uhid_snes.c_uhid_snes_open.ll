; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_snes_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.uhid_snes_softc = type { i32, %struct.usb_fifo**, i32*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@UHID_SNES_INTR_DT_RD = common dso_local global i64 0, align 8
@UHID_SNES_IFQ_MAX_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_FIFO_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @uhid_snes_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_snes_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uhid_snes_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %9 = call %struct.uhid_snes_softc* @usb_fifo_softc(%struct.usb_fifo* %8)
  store %struct.uhid_snes_softc* %9, %struct.uhid_snes_softc** %6, align 8
  %10 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %6, align 8
  %11 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %6, align 8
  %18 = call i32 @uhid_snes_reset(%struct.uhid_snes_softc* %17)
  %19 = load i32, i32* @EBUSY, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %6, align 8
  %22 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %21, i32 0, i32 3
  %23 = call i32 @mtx_lock(i32* %22)
  %24 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %6, align 8
  %25 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @UHID_SNES_INTR_DT_RD, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usbd_xfer_set_stall(i32 %29)
  %31 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %6, align 8
  %32 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %31, i32 0, i32 3
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %35 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %6, align 8
  %36 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @UHID_SNES_INTR_DT_RD, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usbd_xfer_max_len(i32 %40)
  %42 = load i32, i32* @UHID_SNES_IFQ_MAX_LEN, align 4
  %43 = call i32 @usb_fifo_alloc_buffer(%struct.usb_fifo* %34, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %20
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %20
  %49 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %50 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %6, align 8
  %51 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %50, i32 0, i32 1
  %52 = load %struct.usb_fifo**, %struct.usb_fifo*** %51, align 8
  %53 = load i64, i64* @USB_FIFO_RX, align 8
  %54 = getelementptr inbounds %struct.usb_fifo*, %struct.usb_fifo** %52, i64 %53
  store %struct.usb_fifo* %49, %struct.usb_fifo** %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %48, %46, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.uhid_snes_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @uhid_snes_reset(%struct.uhid_snes_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
