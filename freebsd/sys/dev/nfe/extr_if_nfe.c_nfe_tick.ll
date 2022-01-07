; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32 }

@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfe_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.nfe_softc*
  store %struct.nfe_softc* %7, %struct.nfe_softc** %3, align 8
  %8 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %9 = call i32 @NFE_LOCK_ASSERT(%struct.nfe_softc* %8)
  %10 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %14 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mii_data* @device_get_softc(i32 %15)
  store %struct.mii_data* %16, %struct.mii_data** %4, align 8
  %17 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %18 = call i32 @mii_tick(%struct.mii_data* %17)
  %19 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %20 = call i32 @nfe_stats_update(%struct.nfe_softc* %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @nfe_watchdog(i32 %21)
  %23 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %24 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %23, i32 0, i32 0
  %25 = load i32, i32* @hz, align 4
  %26 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %27 = call i32 @callout_reset(i32* %24, i32 %25, void (i8*)* @nfe_tick, %struct.nfe_softc* %26)
  ret void
}

declare dso_local i32 @NFE_LOCK_ASSERT(%struct.nfe_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @nfe_stats_update(%struct.nfe_softc*) #1

declare dso_local i32 @nfe_watchdog(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.nfe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
