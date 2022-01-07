; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_harvest_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_harvest_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@RX_GOOD_FRAMES = common dso_local global i32 0, align 4
@IFCOUNTER_IMCASTS = common dso_local global i32 0, align 4
@RX_GOOD_MCASTS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@RX_FRAME_CHECK_SEQ_ERROR = common dso_local global i32 0, align 4
@RX_LEN_OUT_OF_RANGE = common dso_local global i32 0, align 4
@RX_ALIGNMENT_ERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@TX_BYTES = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@TX_GOOD_FRAMES = common dso_local global i32 0, align 4
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@TX_GOOD_MCASTS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@TX_GOOD_UNDERRUN_ERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@TX_SINGLE_COLLISION_FRAMES = common dso_local global i32 0, align 4
@TX_MULTI_COLLISION_FRAMES = common dso_local global i32 0, align 4
@TX_LATE_COLLISIONS = common dso_local global i32 0, align 4
@TX_EXCESS_COLLISIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xae_softc*)* @xae_harvest_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xae_harvest_stats(%struct.xae_softc* %0) #0 {
  %2 = alloca %struct.xae_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.xae_softc* %0, %struct.xae_softc** %2, align 8
  %4 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %5 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %4, i32 0, i32 0
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %9 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %10 = load i32, i32* @RX_GOOD_FRAMES, align 4
  %11 = call i64 @xae_stat(%struct.xae_softc* %9, i32 %10)
  %12 = call i32 @if_inc_counter(%struct.ifnet* %7, i32 %8, i64 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = load i32, i32* @IFCOUNTER_IMCASTS, align 4
  %15 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %16 = load i32, i32* @RX_GOOD_MCASTS, align 4
  %17 = call i64 @xae_stat(%struct.xae_softc* %15, i32 %16)
  %18 = call i32 @if_inc_counter(%struct.ifnet* %13, i32 %14, i64 %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %21 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %22 = load i32, i32* @RX_FRAME_CHECK_SEQ_ERROR, align 4
  %23 = call i64 @xae_stat(%struct.xae_softc* %21, i32 %22)
  %24 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %25 = load i32, i32* @RX_LEN_OUT_OF_RANGE, align 4
  %26 = call i64 @xae_stat(%struct.xae_softc* %24, i32 %25)
  %27 = add nsw i64 %23, %26
  %28 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %29 = load i32, i32* @RX_ALIGNMENT_ERRORS, align 4
  %30 = call i64 @xae_stat(%struct.xae_softc* %28, i32 %29)
  %31 = add nsw i64 %27, %30
  %32 = call i32 @if_inc_counter(%struct.ifnet* %19, i32 %20, i64 %31)
  %33 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %34 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %35 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %36 = load i32, i32* @TX_BYTES, align 4
  %37 = call i64 @xae_stat(%struct.xae_softc* %35, i32 %36)
  %38 = call i32 @if_inc_counter(%struct.ifnet* %33, i32 %34, i64 %37)
  %39 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %40 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %41 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %42 = load i32, i32* @TX_GOOD_FRAMES, align 4
  %43 = call i64 @xae_stat(%struct.xae_softc* %41, i32 %42)
  %44 = call i32 @if_inc_counter(%struct.ifnet* %39, i32 %40, i64 %43)
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %47 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %48 = load i32, i32* @TX_GOOD_MCASTS, align 4
  %49 = call i64 @xae_stat(%struct.xae_softc* %47, i32 %48)
  %50 = call i32 @if_inc_counter(%struct.ifnet* %45, i32 %46, i64 %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %52 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %53 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %54 = load i32, i32* @TX_GOOD_UNDERRUN_ERRORS, align 4
  %55 = call i64 @xae_stat(%struct.xae_softc* %53, i32 %54)
  %56 = call i32 @if_inc_counter(%struct.ifnet* %51, i32 %52, i64 %55)
  %57 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %58 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %59 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %60 = load i32, i32* @TX_SINGLE_COLLISION_FRAMES, align 4
  %61 = call i64 @xae_stat(%struct.xae_softc* %59, i32 %60)
  %62 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %63 = load i32, i32* @TX_MULTI_COLLISION_FRAMES, align 4
  %64 = call i64 @xae_stat(%struct.xae_softc* %62, i32 %63)
  %65 = add nsw i64 %61, %64
  %66 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %67 = load i32, i32* @TX_LATE_COLLISIONS, align 4
  %68 = call i64 @xae_stat(%struct.xae_softc* %66, i32 %67)
  %69 = add nsw i64 %65, %68
  %70 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %71 = load i32, i32* @TX_EXCESS_COLLISIONS, align 4
  %72 = call i64 @xae_stat(%struct.xae_softc* %70, i32 %71)
  %73 = add nsw i64 %69, %72
  %74 = call i32 @if_inc_counter(%struct.ifnet* %57, i32 %58, i64 %73)
  ret void
}

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

declare dso_local i64 @xae_stat(%struct.xae_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
