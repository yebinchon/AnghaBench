; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88772a_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88772a_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { %struct.usb_ether }
%struct.usb_ether = type { i32 }

@AXE_GPIO_RELOAD_EEPROM = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AXE_CMD_RXCTL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axe_softc*)* @axe_ax88772a_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_ax88772a_init(%struct.axe_softc* %0) #0 {
  %2 = alloca %struct.axe_softc*, align 8
  %3 = alloca %struct.usb_ether*, align 8
  store %struct.axe_softc* %0, %struct.axe_softc** %2, align 8
  %4 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %5 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %4, i32 0, i32 0
  store %struct.usb_ether* %5, %struct.usb_ether** %3, align 8
  %6 = load i32, i32* @AXE_GPIO_RELOAD_EEPROM, align 4
  %7 = load i32, i32* @hz, align 4
  %8 = sdiv i32 %7, 32
  %9 = call i32 @AXE_GPIO_WRITE(i32 %6, i32 %8)
  %10 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %11 = call i32 @axe_ax88772_phywake(%struct.axe_softc* %10)
  %12 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %13 = load i32, i32* @AXE_CMD_RXCTL_WRITE, align 4
  %14 = call i32 @axe_cmd(%struct.axe_softc* %12, i32 %13, i32 0, i32 0, i32* null)
  ret void
}

declare dso_local i32 @AXE_GPIO_WRITE(i32, i32) #1

declare dso_local i32 @axe_ax88772_phywake(%struct.axe_softc*) #1

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
