; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.h_iwm_mvm_get_phy_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.h_iwm_mvm_get_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IWM_FW_PHY_CFG_TX_CHAIN = common dso_local global i32 0, align 4
@IWM_FW_PHY_CFG_RX_CHAIN = common dso_local global i32 0, align 4
@IWM_FW_PHY_CFG_TX_CHAIN_POS = common dso_local global i32 0, align 4
@IWM_FW_PHY_CFG_RX_CHAIN_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_mvm_get_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_get_phy_config(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %6 = load i32, i32* @IWM_FW_PHY_CFG_TX_CHAIN, align 4
  %7 = load i32, i32* @IWM_FW_PHY_CFG_RX_CHAIN, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %11 = call i32 @iwm_mvm_get_valid_rx_ant(%struct.iwm_softc* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %13 = call i32 @iwm_mvm_get_valid_tx_ant(%struct.iwm_softc* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IWM_FW_PHY_CFG_TX_CHAIN_POS, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IWM_FW_PHY_CFG_RX_CHAIN_POS, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %24 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %26, %27
  ret i32 %28
}

declare dso_local i32 @iwm_mvm_get_valid_rx_ant(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_get_valid_tx_ant(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
