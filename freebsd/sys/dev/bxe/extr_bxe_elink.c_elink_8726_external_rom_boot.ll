; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_external_rom_boot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_external_rom_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET = common dso_local global i32 0, align 4
@MDIO_PMA_REG_MISC_CTRL1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*)* @elink_8726_external_rom_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_8726_external_rom_boot(%struct.elink_phy* %0, %struct.elink_params* %1) #0 {
  %3 = alloca %struct.elink_phy*, align 8
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %3, align 8
  store %struct.elink_params* %1, %struct.elink_params** %4, align 8
  %6 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %7 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %6, i32 0, i32 1
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  store %struct.bxe_softc* %8, %struct.bxe_softc** %5, align 8
  %9 = call i32 @DELAY(i32 100000)
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %11 = load %struct.elink_phy*, %struct.elink_phy** %3, align 8
  %12 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %13 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %14 = call i32 @elink_cl45_write(%struct.bxe_softc* %10, %struct.elink_phy* %11, i32 %12, i32 %13, i32 395)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %16 = load %struct.elink_phy*, %struct.elink_phy** %3, align 8
  %17 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %18 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %19 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL_ROM_MICRO_RESET, align 4
  %20 = call i32 @elink_cl45_write(%struct.bxe_softc* %15, %struct.elink_phy* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %22 = load %struct.elink_phy*, %struct.elink_phy** %3, align 8
  %23 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %24 = load i32, i32* @MDIO_PMA_REG_MISC_CTRL1, align 4
  %25 = call i32 @elink_cl45_write(%struct.bxe_softc* %21, %struct.elink_phy* %22, i32 %23, i32 %24, i32 1)
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %27 = load %struct.elink_phy*, %struct.elink_phy** %3, align 8
  %28 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %29 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL, align 4
  %30 = load i32, i32* @MDIO_PMA_REG_GEN_CTRL_ROM_RESET_INTERNAL_MP, align 4
  %31 = call i32 @elink_cl45_write(%struct.bxe_softc* %26, %struct.elink_phy* %27, i32 %28, i32 %29, i32 %30)
  %32 = call i32 @DELAY(i32 150000)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %34 = load %struct.elink_phy*, %struct.elink_phy** %3, align 8
  %35 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %36 = load i32, i32* @MDIO_PMA_REG_MISC_CTRL1, align 4
  %37 = call i32 @elink_cl45_write(%struct.bxe_softc* %33, %struct.elink_phy* %34, i32 %35, i32 %36, i32 0)
  %38 = call i32 @DELAY(i32 200000)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %40 = load %struct.elink_phy*, %struct.elink_phy** %3, align 8
  %41 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %42 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @elink_save_bcm_spirom_ver(%struct.bxe_softc* %39, %struct.elink_phy* %40, i32 %43)
  ret void
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @elink_save_bcm_spirom_ver(%struct.bxe_softc*, %struct.elink_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
