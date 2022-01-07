; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32*, i32 }
%struct.xhci_softc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@XHCI_ST_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @xhci_device_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_device_uninit(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %7)
  store %struct.xhci_softc* %8, %struct.xhci_softc** %3, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %16 = call i32 @XHCI_CMD_LOCK(%struct.xhci_softc* %15)
  %17 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ule i64 %20, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %14
  %26 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @xhci_cmd_disable_slot(%struct.xhci_softc* %26, i64 %27)
  %29 = load i32, i32* @XHCI_ST_DISABLED, align 4
  %30 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %31 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 4
  %37 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %38 = call i32 @xhci_free_device_ext(%struct.usb_device* %37)
  br label %39

39:                                               ; preds = %25, %14
  %40 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %41 = call i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc* %40)
  br label %42

42:                                               ; preds = %39, %13
  ret void
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i32 @XHCI_CMD_LOCK(%struct.xhci_softc*) #1

declare dso_local i32 @xhci_cmd_disable_slot(%struct.xhci_softc*, i64) #1

declare dso_local i32 @xhci_free_device_ext(%struct.usb_device*) #1

declare dso_local i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
