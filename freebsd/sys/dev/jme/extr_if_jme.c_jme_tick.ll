; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32 }
%struct.mii_data = type { i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @jme_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jme_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.jme_softc*
  store %struct.jme_softc* %6, %struct.jme_softc** %3, align 8
  %7 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %8 = call i32 @JME_LOCK_ASSERT(%struct.jme_softc* %7)
  %9 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %10 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mii_data* @device_get_softc(i32 %11)
  store %struct.mii_data* %12, %struct.mii_data** %4, align 8
  %13 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %14 = call i32 @mii_tick(%struct.mii_data* %13)
  %15 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %16 = call i32 @jme_txeof(%struct.jme_softc* %15)
  %17 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %18 = call i32 @jme_stats_update(%struct.jme_softc* %17)
  %19 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %20 = call i32 @jme_watchdog(%struct.jme_softc* %19)
  %21 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %22 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %21, i32 0, i32 0
  %23 = load i32, i32* @hz, align 4
  %24 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %25 = call i32 @callout_reset(i32* %22, i32 %23, void (i8*)* @jme_tick, %struct.jme_softc* %24)
  ret void
}

declare dso_local i32 @JME_LOCK_ASSERT(%struct.jme_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @jme_txeof(%struct.jme_softc*) #1

declare dso_local i32 @jme_stats_update(%struct.jme_softc*) #1

declare dso_local i32 @jme_watchdog(%struct.jme_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.jme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
