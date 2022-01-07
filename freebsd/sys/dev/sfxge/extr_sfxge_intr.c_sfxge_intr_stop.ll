; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, %struct.sfxge_intr }
%struct.sfxge_intr = type { i64 }

@SFXGE_INTR_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Interrupts not started\00", align 1
@SFXGE_INTR_INITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfxge_intr_stop(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sfxge_intr*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %4 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %5 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %4, i32 0, i32 1
  store %struct.sfxge_intr* %5, %struct.sfxge_intr** %3, align 8
  %6 = load %struct.sfxge_intr*, %struct.sfxge_intr** %3, align 8
  %7 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SFXGE_INTR_STARTED, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @SFXGE_INTR_INITIALIZED, align 8
  %14 = load %struct.sfxge_intr*, %struct.sfxge_intr** %3, align 8
  %15 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @efx_intr_disable(i32 %18)
  %20 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %21 = call i32 @sfxge_intr_bus_disable(%struct.sfxge_softc* %20)
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @efx_intr_fini(i32 %24)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_intr_disable(i32) #1

declare dso_local i32 @sfxge_intr_bus_disable(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_intr_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
