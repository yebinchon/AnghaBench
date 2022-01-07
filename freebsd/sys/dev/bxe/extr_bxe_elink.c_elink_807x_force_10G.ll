; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_807x_force_10G.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_807x_force_10G.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_10G_CTRL2 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_BCM_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.elink_phy*)* @elink_807x_force_10G to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_807x_force_10G(%struct.bxe_softc* %0, %struct.elink_phy* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.elink_phy*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %4, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %6 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %7 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %8 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %9 = call i32 @elink_cl45_write(%struct.bxe_softc* %5, %struct.elink_phy* %6, i32 %7, i32 %8, i32 8256)
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %11 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %12 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %13 = load i32, i32* @MDIO_PMA_REG_10G_CTRL2, align 4
  %14 = call i32 @elink_cl45_write(%struct.bxe_softc* %10, %struct.elink_phy* %11, i32 %12, i32 %13, i32 11)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %17 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %18 = load i32, i32* @MDIO_PMA_REG_BCM_CTRL, align 4
  %19 = call i32 @elink_cl45_write(%struct.bxe_softc* %15, %struct.elink_phy* %16, i32 %17, i32 %18, i32 0)
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %22 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %23 = load i32, i32* @MDIO_AN_REG_CTRL, align 4
  %24 = call i32 @elink_cl45_write(%struct.bxe_softc* %20, %struct.elink_phy* %21, i32 %22, i32 %23, i32 0)
  ret void
}

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
