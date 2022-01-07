; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32* }
%struct.xhci_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@XHCI_MAX_ENDPOINTS = common dso_local global i64 0, align 8
@XHCI_MAX_STREAMS = common dso_local global i64 0, align 8
@door = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @xhci_device_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_device_resume(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %9)
  store %struct.xhci_softc* %10, %struct.xhci_softc** %3, align 8
  %11 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %22 = call i32 @XHCI_CMD_LOCK(%struct.xhci_softc* %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @USB_BUS_LOCK(i32 %25)
  store i64 1, i64* %5, align 8
  br label %27

27:                                               ; preds = %50, %17
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @XHCI_MAX_ENDPOINTS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @XHCI_MAX_STREAMS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %38 = load i32, i32* @door, align 4
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @XHCI_DOORBELL(i64 %39)
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @XHCI_DB_SID_SET(i64 %42)
  %44 = or i64 %41, %43
  %45 = call i32 @XWRITE4(%struct.xhci_softc* %37, i32 %38, i32 %40, i64 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %32

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %27

53:                                               ; preds = %27
  %54 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @USB_BUS_UNLOCK(i32 %56)
  %58 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %59 = call i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc* %58)
  br label %60

60:                                               ; preds = %53, %16
  ret void
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @XHCI_CMD_LOCK(%struct.xhci_softc*) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @XWRITE4(%struct.xhci_softc*, i32, i32, i64) #1

declare dso_local i32 @XHCI_DOORBELL(i64) #1

declare dso_local i64 @XHCI_DB_SID_SET(i64) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
