; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_set_hw_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_set_hw_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }
%struct.ohci_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OHCI_CONTROL = common dso_local global i32 0, align 4
@OHCI_PLE = common dso_local global i32 0, align 4
@OHCI_IE = common dso_local global i32 0, align 4
@OHCI_CLE = common dso_local global i32 0, align 4
@OHCI_BLE = common dso_local global i32 0, align 4
@USB_HW_POWER_CONTROL = common dso_local global i32 0, align 4
@USB_HW_POWER_BULK = common dso_local global i32 0, align 4
@USB_HW_POWER_INTERRUPT = common dso_local global i32 0, align 4
@USB_HW_POWER_ISOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*)* @ohci_set_hw_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_set_hw_power(%struct.usb_bus* %0) #0 {
  %2 = alloca %struct.usb_bus*, align 8
  %3 = alloca %struct.ohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_bus* %0, %struct.usb_bus** %2, align 8
  %6 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %7 = call %struct.ohci_softc* @OHCI_BUS2SC(%struct.usb_bus* %6)
  store %struct.ohci_softc* %7, %struct.ohci_softc** %3, align 8
  %8 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %10 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %9)
  %11 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %12 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ohci_softc*, %struct.ohci_softc** %3, align 8
  %15 = load i32, i32* @OHCI_CONTROL, align 4
  %16 = call i32 @OREAD4(%struct.ohci_softc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @OHCI_PLE, align 4
  %18 = load i32, i32* @OHCI_IE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @OHCI_CLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @OHCI_BLE, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @USB_HW_POWER_CONTROL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @OHCI_CLE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @USB_HW_POWER_BULK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @OHCI_BLE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @USB_HW_POWER_INTERRUPT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @OHCI_PLE, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @USB_HW_POWER_ISOC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @OHCI_IE, align 4
  %60 = load i32, i32* @OHCI_PLE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.ohci_softc*, %struct.ohci_softc** %3, align 8
  %66 = load i32, i32* @OHCI_CONTROL, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @OWRITE4(%struct.ohci_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %70 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %69)
  ret void
}

declare dso_local %struct.ohci_softc* @OHCI_BUS2SC(%struct.usb_bus*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @OREAD4(%struct.ohci_softc*, i32) #1

declare dso_local i32 @OWRITE4(%struct.ohci_softc*, i32, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
