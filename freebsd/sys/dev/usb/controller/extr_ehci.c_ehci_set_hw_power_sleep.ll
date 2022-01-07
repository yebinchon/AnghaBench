; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_set_hw_power_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_set_hw_power_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }
%struct.ehci_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*, i32)* @ehci_set_hw_power_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_set_hw_power_sleep(%struct.usb_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehci_softc*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %7 = call %struct.ehci_softc* @EHCI_BUS2SC(%struct.usb_bus* %6)
  store %struct.ehci_softc* %7, %struct.ehci_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %9
    i32 130, label %12
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.ehci_softc*, %struct.ehci_softc** %5, align 8
  %11 = call i32 @ehci_suspend(%struct.ehci_softc* %10)
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.ehci_softc*, %struct.ehci_softc** %5, align 8
  %14 = call i32 @ehci_resume(%struct.ehci_softc* %13)
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %12, %9
  ret void
}

declare dso_local %struct.ehci_softc* @EHCI_BUS2SC(%struct.usb_bus*) #1

declare dso_local i32 @ehci_suspend(%struct.ehci_softc*) #1

declare dso_local i32 @ehci_resume(%struct.ehci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
