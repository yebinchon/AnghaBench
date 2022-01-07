; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_if_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_if_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dtsec_if_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtsec_if_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dtsec_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.dtsec_softc*
  store %struct.dtsec_softc* %5, %struct.dtsec_softc** %3, align 8
  %6 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %7 = call i32 @DTSEC_LOCK(%struct.dtsec_softc* %6)
  %8 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %9 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mii_tick(i32 %10)
  %12 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %13 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %12, i32 0, i32 0
  %14 = load i32, i32* @hz, align 4
  %15 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %16 = call i32 @callout_reset(i32* %13, i32 %14, void (i8*)* @dtsec_if_tick, %struct.dtsec_softc* %15)
  %17 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  %18 = call i32 @DTSEC_UNLOCK(%struct.dtsec_softc* %17)
  ret void
}

declare dso_local i32 @DTSEC_LOCK(%struct.dtsec_softc*) #1

declare dso_local i32 @mii_tick(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.dtsec_softc*) #1

declare dso_local i32 @DTSEC_UNLOCK(%struct.dtsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
