; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_pause_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_pause_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.bnxt_link_info }
%struct.bnxt_link_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.hwrm_port_phy_cfg_input = type { i32, i32, i32 }

@HWRM_PORT_PHY_CFG_INPUT_AUTO_PAUSE_AUTONEG_PAUSE = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_AUTO_PAUSE_RX = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_AUTO_PAUSE_TX = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_ENABLES_AUTO_PAUSE = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_PAUSE_RX = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FORCE_PAUSE_TX = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_ENABLES_FORCE_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_softc*, %struct.hwrm_port_phy_cfg_input*)* @bnxt_hwrm_set_pause_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_set_pause_common(%struct.bnxt_softc* %0, %struct.hwrm_port_phy_cfg_input* %1) #0 {
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.hwrm_port_phy_cfg_input*, align 8
  %5 = alloca %struct.bnxt_link_info*, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  store %struct.hwrm_port_phy_cfg_input* %1, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %6 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %6, i32 0, i32 0
  store %struct.bnxt_link_info* %7, %struct.bnxt_link_info** %5, align 8
  %8 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %9 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_AUTO_PAUSE_AUTONEG_PAUSE, align 4
  %15 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %16 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %18 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_AUTO_PAUSE_RX, align 4
  %24 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %25 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %13
  %29 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %30 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_AUTO_PAUSE_TX, align 4
  %36 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %37 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_ENABLES_AUTO_PAUSE, align 4
  %42 = call i32 @htole32(i32 %41)
  %43 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %44 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %78

47:                                               ; preds = %2
  %48 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %49 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_PAUSE_RX, align 4
  %55 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %56 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %61 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FORCE_PAUSE_TX, align 4
  %67 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %68 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_ENABLES_FORCE_PAUSE, align 4
  %73 = call i32 @htole32(i32 %72)
  %74 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %75 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %40
  ret void
}

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
