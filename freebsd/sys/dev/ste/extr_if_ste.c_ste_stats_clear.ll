; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_stats_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32 }

@STE_STAT_RX_OCTETS_LO = common dso_local global i32 0, align 4
@STE_STAT_RX_OCTETS_HI = common dso_local global i32 0, align 4
@STE_STAT_RX_FRAMES = common dso_local global i32 0, align 4
@STE_STAT_RX_BCAST = common dso_local global i32 0, align 4
@STE_STAT_RX_MCAST = common dso_local global i32 0, align 4
@STE_STAT_RX_LOST = common dso_local global i32 0, align 4
@STE_STAT_TX_OCTETS_LO = common dso_local global i32 0, align 4
@STE_STAT_TX_OCTETS_HI = common dso_local global i32 0, align 4
@STE_STAT_TX_FRAMES = common dso_local global i32 0, align 4
@STE_STAT_TX_BCAST = common dso_local global i32 0, align 4
@STE_STAT_TX_MCAST = common dso_local global i32 0, align 4
@STE_STAT_CARRIER_ERR = common dso_local global i32 0, align 4
@STE_STAT_SINGLE_COLLS = common dso_local global i32 0, align 4
@STE_STAT_MULTI_COLLS = common dso_local global i32 0, align 4
@STE_STAT_LATE_COLLS = common dso_local global i32 0, align 4
@STE_STAT_TX_DEFER = common dso_local global i32 0, align 4
@STE_STAT_TX_EXDEFER = common dso_local global i32 0, align 4
@STE_STAT_TX_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_stats_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_stats_clear(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %3 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %4 = call i32 @STE_LOCK_ASSERT(%struct.ste_softc* %3)
  %5 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %6 = load i32, i32* @STE_STAT_RX_OCTETS_LO, align 4
  %7 = call i32 @CSR_READ_2(%struct.ste_softc* %5, i32 %6)
  %8 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %9 = load i32, i32* @STE_STAT_RX_OCTETS_HI, align 4
  %10 = call i32 @CSR_READ_2(%struct.ste_softc* %8, i32 %9)
  %11 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %12 = load i32, i32* @STE_STAT_RX_FRAMES, align 4
  %13 = call i32 @CSR_READ_2(%struct.ste_softc* %11, i32 %12)
  %14 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %15 = load i32, i32* @STE_STAT_RX_BCAST, align 4
  %16 = call i32 @CSR_READ_1(%struct.ste_softc* %14, i32 %15)
  %17 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %18 = load i32, i32* @STE_STAT_RX_MCAST, align 4
  %19 = call i32 @CSR_READ_1(%struct.ste_softc* %17, i32 %18)
  %20 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %21 = load i32, i32* @STE_STAT_RX_LOST, align 4
  %22 = call i32 @CSR_READ_1(%struct.ste_softc* %20, i32 %21)
  %23 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %24 = load i32, i32* @STE_STAT_TX_OCTETS_LO, align 4
  %25 = call i32 @CSR_READ_2(%struct.ste_softc* %23, i32 %24)
  %26 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %27 = load i32, i32* @STE_STAT_TX_OCTETS_HI, align 4
  %28 = call i32 @CSR_READ_2(%struct.ste_softc* %26, i32 %27)
  %29 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %30 = load i32, i32* @STE_STAT_TX_FRAMES, align 4
  %31 = call i32 @CSR_READ_2(%struct.ste_softc* %29, i32 %30)
  %32 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %33 = load i32, i32* @STE_STAT_TX_BCAST, align 4
  %34 = call i32 @CSR_READ_1(%struct.ste_softc* %32, i32 %33)
  %35 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %36 = load i32, i32* @STE_STAT_TX_MCAST, align 4
  %37 = call i32 @CSR_READ_1(%struct.ste_softc* %35, i32 %36)
  %38 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %39 = load i32, i32* @STE_STAT_CARRIER_ERR, align 4
  %40 = call i32 @CSR_READ_1(%struct.ste_softc* %38, i32 %39)
  %41 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %42 = load i32, i32* @STE_STAT_SINGLE_COLLS, align 4
  %43 = call i32 @CSR_READ_1(%struct.ste_softc* %41, i32 %42)
  %44 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %45 = load i32, i32* @STE_STAT_MULTI_COLLS, align 4
  %46 = call i32 @CSR_READ_1(%struct.ste_softc* %44, i32 %45)
  %47 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %48 = load i32, i32* @STE_STAT_LATE_COLLS, align 4
  %49 = call i32 @CSR_READ_1(%struct.ste_softc* %47, i32 %48)
  %50 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %51 = load i32, i32* @STE_STAT_TX_DEFER, align 4
  %52 = call i32 @CSR_READ_1(%struct.ste_softc* %50, i32 %51)
  %53 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %54 = load i32, i32* @STE_STAT_TX_EXDEFER, align 4
  %55 = call i32 @CSR_READ_1(%struct.ste_softc* %53, i32 %54)
  %56 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %57 = load i32, i32* @STE_STAT_TX_ABORT, align 4
  %58 = call i32 @CSR_READ_1(%struct.ste_softc* %56, i32 %57)
  ret void
}

declare dso_local i32 @STE_LOCK_ASSERT(%struct.ste_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.ste_softc*, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.ste_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
