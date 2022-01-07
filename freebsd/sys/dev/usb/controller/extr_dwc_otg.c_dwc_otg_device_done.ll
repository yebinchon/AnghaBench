; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_device_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.dwc_otg_td*, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.dwc_otg_td = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.dwc_otg_softc = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"xfer=%p, endpoint=%p, error=%d\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @dwc_otg_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_device_done(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc_otg_softc*, align 8
  %6 = alloca %struct.dwc_otg_td*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32 %11)
  store %struct.dwc_otg_softc* %12, %struct.dwc_otg_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %13, i32 %16, i32 %17)
  %19 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %20 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %19, i32 0, i32 0
  %21 = call i32 @USB_BUS_SPIN_LOCK(i32* %20)
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %23 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USB_MODE_DEVICE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %30, i32 0, i32 0
  %32 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %31, align 8
  store %struct.dwc_otg_td* %32, %struct.dwc_otg_td** %6, align 8
  %33 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %34 = icmp ne %struct.dwc_otg_td* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %37 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %6, align 8
  %38 = call i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc* %36, %struct.dwc_otg_td* %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @usbd_transfer_done(%struct.usb_xfer* %41, i32 %42)
  %44 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %45 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %44, i32 0, i32 0
  %46 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %45)
  ret void
}

declare dso_local %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @dwc_otg_host_channel_free(%struct.dwc_otg_softc*, %struct.dwc_otg_td*) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
