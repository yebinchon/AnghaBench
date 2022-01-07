; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { i32, i32, %struct.usb_ether }
%struct.usb_ether = type { i32 }

@AXE_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @axe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axe_softc*, align 8
  %4 = alloca %struct.usb_ether*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.axe_softc* @device_get_softc(i32 %5)
  store %struct.axe_softc* %6, %struct.axe_softc** %3, align 8
  %7 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %8 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %7, i32 0, i32 2
  store %struct.usb_ether* %8, %struct.usb_ether** %4, align 8
  %9 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %10 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AXE_N_TRANSFER, align 4
  %13 = call i32 @usbd_transfer_unsetup(i32 %11, i32 %12)
  %14 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %15 = call i32 @uether_ifdetach(%struct.usb_ether* %14)
  %16 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %17 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_destroy(i32* %17)
  ret i32 0
}

declare dso_local %struct.axe_softc* @device_get_softc(i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @uether_ifdetach(%struct.usb_ether*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
