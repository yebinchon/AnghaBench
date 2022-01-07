; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8481_config_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8481_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@MISC_REGISTERS_GPIO_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_HIGH = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_8481_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_8481_config_init(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 1
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %7, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %12 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %13 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_HIGH, align 4
  %14 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @elink_cb_gpio_write(%struct.bxe_softc* %11, i32 %12, i32 %13, i32 %16)
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %19 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %20 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @elink_ext_phy_hw_reset(%struct.bxe_softc* %18, i32 %21)
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %24 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %25 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %26 = call i32 @elink_wait_reset_complete(%struct.bxe_softc* %23, %struct.elink_phy* %24, %struct.elink_params* %25)
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %28 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %29 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %30 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %31 = call i32 @elink_cl45_write(%struct.bxe_softc* %27, %struct.elink_phy* %28, i32 %29, i32 %30, i32 32768)
  %32 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %33 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %34 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %35 = call i32 @elink_848xx_cmn_config_init(%struct.elink_phy* %32, %struct.elink_params* %33, %struct.elink_vars* %34)
  ret i32 %35
}

declare dso_local i32 @elink_cb_gpio_write(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @elink_ext_phy_hw_reset(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_wait_reset_complete(%struct.bxe_softc*, %struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @elink_848xx_cmn_config_init(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
