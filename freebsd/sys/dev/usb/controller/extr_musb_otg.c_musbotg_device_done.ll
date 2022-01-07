; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_device_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.musbotg_td*, %struct.TYPE_2__*, i32 }
%struct.musbotg_td = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.musbotg_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"xfer=%p, endpoint=%p, error=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"disabled interrupts on endpoint\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @musbotg_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_device_done(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.musbotg_td*, align 8
  %6 = alloca %struct.musbotg_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @USB_BUS_LOCK_ASSERT(i32 %11, i32 %12)
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %14, i32 %17, i32 %18)
  %20 = call i32 (i32, i8*, ...) @DPRINTFN(i32 14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32 %25)
  store %struct.musbotg_softc* %26, %struct.musbotg_softc** %6, align 8
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %27, i32 0, i32 0
  %29 = load %struct.musbotg_td*, %struct.musbotg_td** %28, align 8
  store %struct.musbotg_td* %29, %struct.musbotg_td** %5, align 8
  %30 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %31 = icmp ne %struct.musbotg_td* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %34 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %39 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %40 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %38, %struct.musbotg_td* %39)
  br label %41

41:                                               ; preds = %37, %32, %2
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @usbd_transfer_done(%struct.usb_xfer* %42, i32 %43)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
