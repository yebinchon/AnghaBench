; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_device_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.saf1761_otg_td*, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.saf1761_otg_td = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.saf1761_otg_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"xfer=%p, endpoint=%p, error=%d\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @saf1761_otg_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_device_done(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.saf1761_otg_softc*, align 8
  %6 = alloca %struct.saf1761_otg_td*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32 %11)
  store %struct.saf1761_otg_softc* %12, %struct.saf1761_otg_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @USB_BUS_LOCK_ASSERT(i32 %17, i32 %18)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %20, i32 %23, i32 %24)
  %26 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %27 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %26, i32 0, i32 0
  %28 = call i32 @USB_BUS_SPIN_LOCK(i32* %27)
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_MODE_DEVICE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = call i32 @saf1761_otg_intr_set(%struct.usb_xfer* %36, i32 0)
  br label %49

38:                                               ; preds = %2
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %40 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %39, i32 0, i32 0
  %41 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %40, align 8
  store %struct.saf1761_otg_td* %41, %struct.saf1761_otg_td** %6, align 8
  %42 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %6, align 8
  %43 = icmp ne %struct.saf1761_otg_td* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %46 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %6, align 8
  %47 = call i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc* %45, %struct.saf1761_otg_td* %46)
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @usbd_transfer_done(%struct.usb_xfer* %50, i32 %51)
  %53 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %54 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %53, i32 0, i32 0
  %55 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %54)
  ret void
}

declare dso_local %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @saf1761_otg_intr_set(%struct.usb_xfer*, i32) #1

declare dso_local i32 @saf1761_host_channel_free(%struct.saf1761_otg_softc*, %struct.saf1761_otg_td*) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
