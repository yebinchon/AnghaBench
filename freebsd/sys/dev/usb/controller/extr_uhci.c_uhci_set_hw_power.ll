; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_set_hw_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_set_hw_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }
%struct.uhci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_HW_POWER_CONTROL = common dso_local global i32 0, align 4
@USB_HW_POWER_NON_ROOT_HUB = common dso_local global i32 0, align 4
@USB_HW_POWER_BULK = common dso_local global i32 0, align 4
@USB_HW_POWER_INTERRUPT = common dso_local global i32 0, align 4
@USB_HW_POWER_ISOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Some USB transfer is active on unit %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Power save on unit %u.\0A\00", align 1
@UHCI_CMD_MAXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*)* @uhci_set_hw_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_set_hw_power(%struct.usb_bus* %0) #0 {
  %2 = alloca %struct.usb_bus*, align 8
  %3 = alloca %struct.uhci_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_bus* %0, %struct.usb_bus** %2, align 8
  %5 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %6 = call %struct.uhci_softc* @UHCI_BUS2SC(%struct.usb_bus* %5)
  store %struct.uhci_softc* %6, %struct.uhci_softc** %3, align 8
  %7 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %9 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %8)
  %10 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %11 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @USB_HW_POWER_CONTROL, align 4
  %15 = load i32, i32* @USB_HW_POWER_NON_ROOT_HUB, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @USB_HW_POWER_BULK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @USB_HW_POWER_INTERRUPT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USB_HW_POWER_ISOC, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %13, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.uhci_softc*, %struct.uhci_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uhci_softc, %struct.uhci_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_get_unit(i32 %29)
  %31 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.uhci_softc*, %struct.uhci_softc** %3, align 8
  %33 = call i32 @uhci_restart(%struct.uhci_softc* %32)
  br label %44

34:                                               ; preds = %1
  %35 = load %struct.uhci_softc*, %struct.uhci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.uhci_softc, %struct.uhci_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @device_get_unit(i32 %38)
  %40 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.uhci_softc*, %struct.uhci_softc** %3, align 8
  %42 = load i32, i32* @UHCI_CMD_MAXP, align 4
  %43 = call i32 @UHCICMD(%struct.uhci_softc* %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %25
  %45 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %46 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %45)
  ret void
}

declare dso_local %struct.uhci_softc* @UHCI_BUS2SC(%struct.usb_bus*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @uhci_restart(%struct.uhci_softc*) #1

declare dso_local i32 @UHCICMD(%struct.uhci_softc*, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
