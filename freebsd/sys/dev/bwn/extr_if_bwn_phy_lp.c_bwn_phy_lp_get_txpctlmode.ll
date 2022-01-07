; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_get_txpctlmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_get_txpctlmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.TYPE_2__ }
%struct.bwn_softc = type { i32 }
%struct.TYPE_2__ = type { %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i32 }

@BWN_PHY_TX_PWR_CTL_CMD = common dso_local global i32 0, align 4
@BWN_PHY_TX_PWR_CTL_CMD_MODE = common dso_local global i32 0, align 4
@BWN_PHYLP_TXPCTL_OFF = common dso_local global i32 0, align 4
@BWN_PHYLP_TXPCTL_ON_SW = common dso_local global i32 0, align 4
@BWN_PHYLP_TXPCTL_ON_HW = common dso_local global i32 0, align 4
@BWN_PHYLP_TXPCTL_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown command mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_phy_lp_get_txpctlmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_get_txpctlmode(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_lp*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.bwn_phy_lp* %8, %struct.bwn_phy_lp** %3, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %10, align 8
  store %struct.bwn_softc* %11, %struct.bwn_softc** %4, align 8
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %13 = load i32, i32* @BWN_PHY_TX_PWR_CTL_CMD, align 4
  %14 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BWN_PHY_TX_PWR_CTL_CMD_MODE, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %30 [
    i32 129, label %18
    i32 128, label %22
    i32 130, label %26
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @BWN_PHYLP_TXPCTL_OFF, align 4
  %20 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %21 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load i32, i32* @BWN_PHYLP_TXPCTL_ON_SW, align 4
  %24 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %25 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load i32, i32* @BWN_PHYLP_TXPCTL_ON_HW, align 4
  %28 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %29 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load i32, i32* @BWN_PHYLP_TXPCTL_UNKNOWN, align 4
  %32 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %33 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %35 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %30, %26, %22, %18
  ret void
}

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
