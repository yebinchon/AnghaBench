; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_stats_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@STGE_OctetRcvOk = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@STGE_FramesRcvdOk = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@STGE_FramesLostRxErrors = common dso_local global i32 0, align 4
@STGE_OctetXmtdOk = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@STGE_FramesXmtdOk = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@STGE_LateCollisions = common dso_local global i32 0, align 4
@STGE_MultiColFrames = common dso_local global i32 0, align 4
@STGE_SingleColFrames = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@STGE_FramesAbortXSColls = common dso_local global i32 0, align 4
@STGE_FramesWEXDeferal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_stats_update(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %4 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %5 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %4)
  %6 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %6, i32 0, i32 0
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %10 = load i32, i32* @STGE_OctetRcvOk, align 4
  %11 = call i64 @CSR_READ_4(%struct.stge_softc* %9, i32 %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %14 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %15 = load i32, i32* @STGE_FramesRcvdOk, align 4
  %16 = call i64 @CSR_READ_4(%struct.stge_softc* %14, i32 %15)
  %17 = call i32 @if_inc_counter(%struct.ifnet* %12, i32 %13, i64 %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %19 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %20 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %21 = load i32, i32* @STGE_FramesLostRxErrors, align 4
  %22 = call i64 @CSR_READ_2(%struct.stge_softc* %20, i32 %21)
  %23 = call i32 @if_inc_counter(%struct.ifnet* %18, i32 %19, i64 %22)
  %24 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %25 = load i32, i32* @STGE_OctetXmtdOk, align 4
  %26 = call i64 @CSR_READ_4(%struct.stge_softc* %24, i32 %25)
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %29 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %30 = load i32, i32* @STGE_FramesXmtdOk, align 4
  %31 = call i64 @CSR_READ_4(%struct.stge_softc* %29, i32 %30)
  %32 = call i32 @if_inc_counter(%struct.ifnet* %27, i32 %28, i64 %31)
  %33 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %34 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %35 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %36 = load i32, i32* @STGE_LateCollisions, align 4
  %37 = call i64 @CSR_READ_4(%struct.stge_softc* %35, i32 %36)
  %38 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %39 = load i32, i32* @STGE_MultiColFrames, align 4
  %40 = call i64 @CSR_READ_4(%struct.stge_softc* %38, i32 %39)
  %41 = add nsw i64 %37, %40
  %42 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %43 = load i32, i32* @STGE_SingleColFrames, align 4
  %44 = call i64 @CSR_READ_4(%struct.stge_softc* %42, i32 %43)
  %45 = add nsw i64 %41, %44
  %46 = call i32 @if_inc_counter(%struct.ifnet* %33, i32 %34, i64 %45)
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %49 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %50 = load i32, i32* @STGE_FramesAbortXSColls, align 4
  %51 = call i64 @CSR_READ_2(%struct.stge_softc* %49, i32 %50)
  %52 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %53 = load i32, i32* @STGE_FramesWEXDeferal, align 4
  %54 = call i64 @CSR_READ_2(%struct.stge_softc* %52, i32 %53)
  %55 = add nsw i64 %51, %54
  %56 = call i32 @if_inc_counter(%struct.ifnet* %47, i32 %48, i64 %55)
  ret void
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local i64 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

declare dso_local i64 @CSR_READ_2(%struct.stge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
