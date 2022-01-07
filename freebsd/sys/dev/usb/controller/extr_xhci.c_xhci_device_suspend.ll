; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32*, i32 }
%struct.xhci_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@XHCI_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to suspend endpoint %u on slot %u (ignored).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @xhci_device_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_device_suspend(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %9)
  store %struct.xhci_softc* %10, %struct.xhci_softc** %3, align 8
  %11 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %22 = call i32 @XHCI_CMD_LOCK(%struct.xhci_softc* %21)
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %39, %17
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @XHCI_MAX_ENDPOINTS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @xhci_cmd_stop_ep(%struct.xhci_softc* %28, i32 1, i32 %29, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %44 = call i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc* %43)
  br label %45

45:                                               ; preds = %42, %16
  ret void
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @XHCI_CMD_LOCK(%struct.xhci_softc*) #1

declare dso_local i64 @xhci_cmd_stop_ep(%struct.xhci_softc*, i32, i32, i32) #1

declare dso_local i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
