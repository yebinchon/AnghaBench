; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_set_hw_power_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_set_hw_power_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }
%struct.xhci_softc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Stopping the XHCI\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Starting the XHCI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*, i32)* @xhci_set_hw_power_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_set_hw_power_sleep(%struct.usb_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_softc*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %7 = call %struct.xhci_softc* @XHCI_BUS2SC(%struct.usb_bus* %6)
  store %struct.xhci_softc* %7, %struct.xhci_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %25 [
    i32 128, label %9
    i32 129, label %15
    i32 130, label %21
  ]

9:                                                ; preds = %2
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %12 = call i32 @xhci_halt_controller(%struct.xhci_softc* %11)
  %13 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %14 = call i32 @xhci_reset_controller(%struct.xhci_softc* %13)
  br label %26

15:                                               ; preds = %2
  %16 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %18 = call i32 @xhci_halt_controller(%struct.xhci_softc* %17)
  %19 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %20 = call i32 @xhci_reset_controller(%struct.xhci_softc* %19)
  br label %26

21:                                               ; preds = %2
  %22 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %24 = call i32 @xhci_start_controller(%struct.xhci_softc* %23)
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %21, %15, %9
  ret void
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(%struct.usb_bus*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @xhci_halt_controller(%struct.xhci_softc*) #1

declare dso_local i32 @xhci_reset_controller(%struct.xhci_softc*) #1

declare dso_local i32 @xhci_start_controller(%struct.xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
