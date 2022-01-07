; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_link_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_set_link_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hwrm_port_phy_cfg_input = type { i32, i32, i32, i32 }

@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_AUTO_MODE_ALL_SPEEDS = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_ENABLES_AUTO_MODE = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FLAGS_RESTART_AUTONEG = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FLAGS_FORCE = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_CFG_INPUT_FLAGS_RESET_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_softc*, %struct.hwrm_port_phy_cfg_input*)* @bnxt_hwrm_set_link_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_set_link_common(%struct.bnxt_softc* %0, %struct.hwrm_port_phy_cfg_input* %1) #0 {
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.hwrm_port_phy_cfg_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  store %struct.hwrm_port_phy_cfg_input* %1, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %7 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_AUTO_MODE_ALL_SPEEDS, align 4
  %21 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %22 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_ENABLES_AUTO_MODE, align 4
  %26 = call i32 @htole32(i32 %25)
  %27 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %28 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FLAGS_RESTART_AUTONEG, align 4
  %32 = call i32 @htole32(i32 %31)
  %33 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %34 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %48

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @htole16(i32 %38)
  %40 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %41 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FLAGS_FORCE, align 4
  %43 = call i32 @htole32(i32 %42)
  %44 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %45 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %37, %19
  %49 = load i32, i32* @HWRM_PORT_PHY_CFG_INPUT_FLAGS_RESET_PHY, align 4
  %50 = call i32 @htole32(i32 %49)
  %51 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %52 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  ret void
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
