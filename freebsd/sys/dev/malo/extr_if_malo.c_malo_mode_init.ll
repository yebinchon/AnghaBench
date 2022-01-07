; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_mode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { %struct.malo_hal*, %struct.ieee80211com }
%struct.malo_hal = type { i32 }
%struct.ieee80211com = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malo_softc*)* @malo_mode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_mode_init(%struct.malo_softc* %0) #0 {
  %2 = alloca %struct.malo_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.malo_hal*, align 8
  store %struct.malo_softc* %0, %struct.malo_softc** %2, align 8
  %5 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %6 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %5, i32 0, i32 1
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %8 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %7, i32 0, i32 0
  %9 = load %struct.malo_hal*, %struct.malo_hal** %8, align 8
  store %struct.malo_hal* %9, %struct.malo_hal** %4, align 8
  %10 = load %struct.malo_hal*, %struct.malo_hal** %4, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @malo_hal_setpromisc(%struct.malo_hal* %10, i32 %15)
  %17 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %18 = call i32 @malo_setmcastfilter(%struct.malo_softc* %17)
  %19 = load i32, i32* @ENXIO, align 4
  ret i32 %19
}

declare dso_local i32 @malo_hal_setpromisc(%struct.malo_hal*, i32) #1

declare dso_local i32 @malo_setmcastfilter(%struct.malo_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
