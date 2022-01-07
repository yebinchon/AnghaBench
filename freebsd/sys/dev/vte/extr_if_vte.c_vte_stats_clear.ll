; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_stats_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32 }

@VTE_CNT_RX_DONE = common dso_local global i32 0, align 4
@VTE_CNT_MECNT0 = common dso_local global i32 0, align 4
@VTE_CNT_MECNT1 = common dso_local global i32 0, align 4
@VTE_CNT_MECNT2 = common dso_local global i32 0, align 4
@VTE_CNT_MECNT3 = common dso_local global i32 0, align 4
@VTE_CNT_TX_DONE = common dso_local global i32 0, align 4
@VTE_CNT_MECNT4 = common dso_local global i32 0, align 4
@VTE_CNT_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_stats_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_stats_clear(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %3 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %4 = load i32, i32* @VTE_CNT_RX_DONE, align 4
  %5 = call i32 @CSR_READ_2(%struct.vte_softc* %3, i32 %4)
  %6 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %7 = load i32, i32* @VTE_CNT_MECNT0, align 4
  %8 = call i32 @CSR_READ_2(%struct.vte_softc* %6, i32 %7)
  %9 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %10 = load i32, i32* @VTE_CNT_MECNT1, align 4
  %11 = call i32 @CSR_READ_2(%struct.vte_softc* %9, i32 %10)
  %12 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %13 = load i32, i32* @VTE_CNT_MECNT2, align 4
  %14 = call i32 @CSR_READ_2(%struct.vte_softc* %12, i32 %13)
  %15 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %16 = load i32, i32* @VTE_CNT_MECNT3, align 4
  %17 = call i32 @CSR_READ_2(%struct.vte_softc* %15, i32 %16)
  %18 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %19 = load i32, i32* @VTE_CNT_TX_DONE, align 4
  %20 = call i32 @CSR_READ_2(%struct.vte_softc* %18, i32 %19)
  %21 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %22 = load i32, i32* @VTE_CNT_MECNT4, align 4
  %23 = call i32 @CSR_READ_2(%struct.vte_softc* %21, i32 %22)
  %24 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %25 = load i32, i32* @VTE_CNT_PAUSE, align 4
  %26 = call i32 @CSR_READ_2(%struct.vte_softc* %24, i32 %25)
  ret void
}

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
