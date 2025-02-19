; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_get_port_speed_hostc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_get_port_speed_hostc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_softc = type { i32 }

@EHCI_HOSTC_PSPD_SHIFT = common dso_local global i32 0, align 4
@EHCI_HOSTC_PSPD_MASK = common dso_local global i32 0, align 4
@EHCI_PORT_SPEED_HIGH = common dso_local global i32 0, align 4
@UPS_HIGH_SPEED = common dso_local global i32 0, align 4
@EHCI_PORT_SPEED_LOW = common dso_local global i32 0, align 4
@UPS_LOW_SPEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehci_get_port_speed_hostc(%struct.ehci_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ehci_softc* %0, %struct.ehci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ehci_softc*, %struct.ehci_softc** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @EHCI_HOSTC(i32 %8)
  %10 = call i32 @EOREAD4(%struct.ehci_softc* %7, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EHCI_HOSTC_PSPD_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = load i32, i32* @EHCI_HOSTC_PSPD_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @EHCI_PORT_SPEED_HIGH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @UPS_HIGH_SPEED, align 4
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EHCI_PORT_SPEED_LOW, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @UPS_LOW_SPEED, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @EOREAD4(%struct.ehci_softc*, i32) #1

declare dso_local i32 @EHCI_HOSTC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
