; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_set_hw_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_set_hw_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EHCI_USBCMD = common dso_local global i32 0, align 4
@EHCI_CMD_ASE = common dso_local global i32 0, align 4
@EHCI_CMD_PSE = common dso_local global i32 0, align 4
@USB_HW_POWER_CONTROL = common dso_local global i32 0, align 4
@USB_HW_POWER_BULK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Async is active\0A\00", align 1
@USB_HW_POWER_INTERRUPT = common dso_local global i32 0, align 4
@USB_HW_POWER_ISOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Periodic is active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*)* @ehci_set_hw_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_set_hw_power(%struct.usb_bus* %0) #0 {
  %2 = alloca %struct.usb_bus*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_bus* %0, %struct.usb_bus** %2, align 8
  %6 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %7 = call i32* @EHCI_BUS2SC(%struct.usb_bus* %6)
  store i32* %7, i32** %3, align 8
  %8 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %10 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %9)
  %11 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %12 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @EHCI_USBCMD, align 4
  %16 = call i32 @EOREAD4(i32* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @EHCI_CMD_ASE, align 4
  %18 = load i32, i32* @EHCI_CMD_PSE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @USB_HW_POWER_CONTROL, align 4
  %25 = load i32, i32* @USB_HW_POWER_BULK, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EHCI_CMD_ASE, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @USB_HW_POWER_INTERRUPT, align 4
  %37 = load i32, i32* @USB_HW_POWER_ISOC, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EHCI_CMD_PSE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @EHCI_USBCMD, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @EOWRITE4(i32* %47, i32 %48, i32 %49)
  %51 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %52 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %51)
  ret void
}

declare dso_local i32* @EHCI_BUS2SC(%struct.usb_bus*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @EOREAD4(i32*, i32) #1

declare dso_local i32 @EOWRITE4(i32*, i32, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
