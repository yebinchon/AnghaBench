; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32, i32, i32, i64, i64, i64, i32 }

@RTWN_STARTED = common dso_local global i32 0, align 4
@RTWN_RUNNING = common dso_local global i32 0, align 4
@RTWN_FW_LOADED = common dso_local global i32 0, align 4
@RTWN_TEMP_MEASURED = common dso_local global i32 0, align 4
@RTWN_VAP_ID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_stop(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %3)
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RTWN_STARTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %13 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %12)
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %16 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %15, i32 0, i32 7
  %17 = call i32 @callout_stop(i32* %16)
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %19 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @RTWN_STARTED, align 4
  %21 = load i32, i32* @RTWN_RUNNING, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RTWN_FW_LOADED, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @RTWN_TEMP_MEASURED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %33 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %37 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %39 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @RTWN_VAP_ID_INVALID, align 4
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %44 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %43, i32 0, i32 2
  %45 = call i32 @bzero(i32* %44, i32 4)
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %47 = call i32 @rtwn_abort_xfers(%struct.rtwn_softc* %46)
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %49 = call i32 @rtwn_drain_mbufq(%struct.rtwn_softc* %48)
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %51 = call i32 @rtwn_power_off(%struct.rtwn_softc* %50)
  %52 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %53 = call i32 @rtwn_reset_lists(%struct.rtwn_softc* %52, i32* null)
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %55 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %54)
  br label %56

56:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @rtwn_abort_xfers(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_drain_mbufq(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_power_off(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_reset_lists(%struct.rtwn_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
