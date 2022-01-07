; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8705_config_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8705_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"init 8705\0A\00", align 1
@MISC_REGISTERS_GPIO_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_HIGH = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_MISC_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_PHY_IDENTIFIER = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CMU_PLL_BYPASS = common dso_local global i32 0, align 4
@MDIO_WIS_DEVAD = common dso_local global i32 0, align 4
@MDIO_WIS_REG_LASI_CNTL = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_8705_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_8705_config_init(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 2
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %7, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %12 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %14 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %15 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_HIGH, align 4
  %16 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %17 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @elink_cb_gpio_write(%struct.bxe_softc* %13, i32 %14, i32 %15, i32 %18)
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %21 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %22 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @elink_ext_phy_hw_reset(%struct.bxe_softc* %20, i32 %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %26 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %27 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %28 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %29 = call i32 @elink_cl45_write(%struct.bxe_softc* %25, %struct.elink_phy* %26, i32 %27, i32 %28, i32 41024)
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %31 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %32 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %33 = call i32 @elink_wait_reset_complete(%struct.bxe_softc* %30, %struct.elink_phy* %31, %struct.elink_params* %32)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %35 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %36 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %37 = load i32, i32* @MDIO_PMA_REG_MISC_CTRL, align 4
  %38 = call i32 @elink_cl45_write(%struct.bxe_softc* %34, %struct.elink_phy* %35, i32 %36, i32 %37, i32 33416)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %40 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %41 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %42 = load i32, i32* @MDIO_PMA_REG_PHY_IDENTIFIER, align 4
  %43 = call i32 @elink_cl45_write(%struct.bxe_softc* %39, %struct.elink_phy* %40, i32 %41, i32 %42, i32 32703)
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %45 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %46 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %47 = load i32, i32* @MDIO_PMA_REG_CMU_PLL_BYPASS, align 4
  %48 = call i32 @elink_cl45_write(%struct.bxe_softc* %44, %struct.elink_phy* %45, i32 %46, i32 %47, i32 256)
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %50 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %51 = load i32, i32* @MDIO_WIS_DEVAD, align 4
  %52 = load i32, i32* @MDIO_WIS_REG_LASI_CNTL, align 4
  %53 = call i32 @elink_cl45_write(%struct.bxe_softc* %49, %struct.elink_phy* %50, i32 %51, i32 %52, i32 1)
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %55 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %56 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %59 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @elink_save_spirom_version(%struct.bxe_softc* %54, i32 %57, i32 %60, i32 0)
  %62 = load i32, i32* @ELINK_STATUS_OK, align 4
  ret i32 %62
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_cb_gpio_write(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @elink_ext_phy_hw_reset(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @elink_wait_reset_complete(%struct.bxe_softc*, %struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @elink_save_spirom_version(%struct.bxe_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
