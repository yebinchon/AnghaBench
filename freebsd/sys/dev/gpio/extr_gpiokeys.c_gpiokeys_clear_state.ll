; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_clear_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_clear_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.gpiokeys_softc* }
%struct.gpiokeys_softc = type { i64, i32, i32 }

@GPIOKEYS_GLOBAL_FLAG_POLLING = common dso_local global i32 0, align 4
@LOCK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @gpiokeys_clear_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiokeys_clear_state(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.gpiokeys_softc*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %5, align 8
  store %struct.gpiokeys_softc* %6, %struct.gpiokeys_softc** %3, align 8
  %7 = load i32, i32* @GPIOKEYS_GLOBAL_FLAG_POLLING, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %10 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @LOCK_MASK, align 4
  %14 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %15 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %19 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
