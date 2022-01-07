; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32 }

@CGEM_NET_CTRL = common dso_local global i32 0, align 4
@CGEM_NET_CFG = common dso_local global i32 0, align 4
@CGEM_NET_CTRL_CLR_STAT_REGS = common dso_local global i32 0, align 4
@CGEM_TX_STAT = common dso_local global i32 0, align 4
@CGEM_TX_STAT_ALL = common dso_local global i32 0, align 4
@CGEM_RX_STAT = common dso_local global i32 0, align 4
@CGEM_RX_STAT_ALL = common dso_local global i32 0, align 4
@CGEM_INTR_DIS = common dso_local global i32 0, align 4
@CGEM_INTR_ALL = common dso_local global i32 0, align 4
@CGEM_HASH_BOT = common dso_local global i32 0, align 4
@CGEM_HASH_TOP = common dso_local global i32 0, align 4
@CGEM_TX_QBAR = common dso_local global i32 0, align 4
@CGEM_RX_QBAR = common dso_local global i32 0, align 4
@CGEM_NET_CFG_DBUS_WIDTH_32 = common dso_local global i32 0, align 4
@CGEM_NET_CFG_MDC_CLK_DIV_64 = common dso_local global i32 0, align 4
@CGEM_NET_CTRL_MGMT_PORT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*)* @cgem_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_reset(%struct.cgem_softc* %0) #0 {
  %2 = alloca %struct.cgem_softc*, align 8
  store %struct.cgem_softc* %0, %struct.cgem_softc** %2, align 8
  %3 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %4 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %3)
  %5 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %6 = load i32, i32* @CGEM_NET_CTRL, align 4
  %7 = call i32 @WR4(%struct.cgem_softc* %5, i32 %6, i32 0)
  %8 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %9 = load i32, i32* @CGEM_NET_CFG, align 4
  %10 = call i32 @WR4(%struct.cgem_softc* %8, i32 %9, i32 0)
  %11 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %12 = load i32, i32* @CGEM_NET_CTRL, align 4
  %13 = load i32, i32* @CGEM_NET_CTRL_CLR_STAT_REGS, align 4
  %14 = call i32 @WR4(%struct.cgem_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %16 = load i32, i32* @CGEM_TX_STAT, align 4
  %17 = load i32, i32* @CGEM_TX_STAT_ALL, align 4
  %18 = call i32 @WR4(%struct.cgem_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %20 = load i32, i32* @CGEM_RX_STAT, align 4
  %21 = load i32, i32* @CGEM_RX_STAT_ALL, align 4
  %22 = call i32 @WR4(%struct.cgem_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %24 = load i32, i32* @CGEM_INTR_DIS, align 4
  %25 = load i32, i32* @CGEM_INTR_ALL, align 4
  %26 = call i32 @WR4(%struct.cgem_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %28 = load i32, i32* @CGEM_HASH_BOT, align 4
  %29 = call i32 @WR4(%struct.cgem_softc* %27, i32 %28, i32 0)
  %30 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %31 = load i32, i32* @CGEM_HASH_TOP, align 4
  %32 = call i32 @WR4(%struct.cgem_softc* %30, i32 %31, i32 0)
  %33 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %34 = load i32, i32* @CGEM_TX_QBAR, align 4
  %35 = call i32 @WR4(%struct.cgem_softc* %33, i32 %34, i32 0)
  %36 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %37 = load i32, i32* @CGEM_RX_QBAR, align 4
  %38 = call i32 @WR4(%struct.cgem_softc* %36, i32 %37, i32 0)
  %39 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %40 = load i32, i32* @CGEM_NET_CFG, align 4
  %41 = load i32, i32* @CGEM_NET_CFG_DBUS_WIDTH_32, align 4
  %42 = load i32, i32* @CGEM_NET_CFG_MDC_CLK_DIV_64, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @WR4(%struct.cgem_softc* %39, i32 %40, i32 %43)
  %45 = load i32, i32* @CGEM_NET_CTRL_MGMT_PORT_EN, align 4
  %46 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %47 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %49 = load i32, i32* @CGEM_NET_CTRL, align 4
  %50 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %51 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @WR4(%struct.cgem_softc* %48, i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
