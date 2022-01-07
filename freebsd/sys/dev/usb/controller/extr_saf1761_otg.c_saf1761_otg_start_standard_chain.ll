; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_start_standard_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_start_standard_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.saf1761_otg_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@saf1761_otg_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @saf1761_otg_start_standard_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_start_standard_chain(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.saf1761_otg_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(%struct.TYPE_4__* %8)
  store %struct.saf1761_otg_softc* %9, %struct.saf1761_otg_softc** %3, align 8
  %10 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %12 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %11, i32 0, i32 0
  %13 = call i32 @USB_BUS_SPIN_LOCK(i32* %12)
  %14 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %16 = call i32 @saf1761_otg_xfer_do_fifo(%struct.saf1761_otg_softc* %14, %struct.usb_xfer* %15)
  %17 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %19 = call i64 @saf1761_otg_xfer_do_complete(%struct.saf1761_otg_softc* %17, %struct.usb_xfer* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %23 = call i32 @saf1761_otg_intr_set(%struct.usb_xfer* %22, i32 1)
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %25 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %31 = call i32 @usbd_transfer_enqueue(i32* %29, %struct.usb_xfer* %30)
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %33 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @usbd_transfer_timeout_ms(%struct.usb_xfer* %37, i32* @saf1761_otg_timeout, i64 %40)
  br label %42

42:                                               ; preds = %36, %21
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %3, align 8
  %45 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %44, i32 0, i32 0
  %46 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %45)
  ret void
}

declare dso_local %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(%struct.TYPE_4__*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @saf1761_otg_xfer_do_fifo(%struct.saf1761_otg_softc*, %struct.usb_xfer*) #1

declare dso_local i64 @saf1761_otg_xfer_do_complete(%struct.saf1761_otg_softc*, %struct.usb_xfer*) #1

declare dso_local i32 @saf1761_otg_intr_set(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_enqueue(i32*, %struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_timeout_ms(%struct.usb_xfer*, i32*, i64) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
