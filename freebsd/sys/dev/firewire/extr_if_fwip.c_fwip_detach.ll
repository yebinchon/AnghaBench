; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwip.c_fwip_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwip_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fwip_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwip_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwip_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @device_get_softc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.fwip_softc*
  store %struct.fwip_softc* %8, %struct.fwip_softc** %3, align 8
  %9 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %10 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = call i32 (...) @splimp()
  store i32 %13, i32* %5, align 4
  %14 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %15 = call i32 @fwip_stop(%struct.fwip_softc* %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = call i32 @firewire_ifdetach(%struct.ifnet* %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = call i32 @if_free(%struct.ifnet* %18)
  %20 = load %struct.fwip_softc*, %struct.fwip_softc** %3, align 8
  %21 = getelementptr inbounds %struct.fwip_softc, %struct.fwip_softc* %20, i32 0, i32 0
  %22 = call i32 @mtx_destroy(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @splx(i32 %23)
  ret i32 0
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @fwip_stop(%struct.fwip_softc*) #1

declare dso_local i32 @firewire_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
