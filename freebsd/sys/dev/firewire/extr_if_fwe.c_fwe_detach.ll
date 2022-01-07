; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwe_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fwe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.fwe_softc* @device_get_softc(i32 %6)
  store %struct.fwe_softc* %7, %struct.fwe_softc** %3, align 8
  %8 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = call i32 (...) @splimp()
  store i32 %12, i32* %5, align 4
  %13 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %14 = call i32 @fwe_stop(%struct.fwe_softc* %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = call i32 @ether_ifdetach(%struct.ifnet* %15)
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = call i32 @if_free(%struct.ifnet* %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @splx(i32 %19)
  %21 = load %struct.fwe_softc*, %struct.fwe_softc** %3, align 8
  %22 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %21, i32 0, i32 0
  %23 = call i32 @mtx_destroy(i32* %22)
  ret i32 0
}

declare dso_local %struct.fwe_softc* @device_get_softc(i32) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @fwe_stop(%struct.fwe_softc*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
