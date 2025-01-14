; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.axge_softc = type { i32 }
%struct.mii_data = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @axge_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axge_tick(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.axge_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.axge_softc* %6, %struct.axge_softc** %3, align 8
  %7 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %8 = call %struct.mii_data* @GET_MII(%struct.axge_softc* %7)
  store %struct.mii_data* %8, %struct.mii_data** %4, align 8
  %9 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @AXGE_LOCK_ASSERT(%struct.axge_softc* %9, i32 %10)
  %12 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %13 = call i32 @mii_tick(%struct.mii_data* %12)
  ret void
}

declare dso_local %struct.axge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.mii_data* @GET_MII(%struct.axge_softc*) #1

declare dso_local i32 @AXGE_LOCK_ASSERT(%struct.axge_softc*, i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
