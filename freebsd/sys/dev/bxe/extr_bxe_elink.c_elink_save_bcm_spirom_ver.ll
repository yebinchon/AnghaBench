; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_save_bcm_spirom_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_save_bcm_spirom_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_ROM_VER1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_ROM_VER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.elink_phy*, i32)* @elink_save_bcm_spirom_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_save_bcm_spirom_ver(%struct.bxe_softc* %0, %struct.elink_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %10 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %11 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %12 = load i32, i32* @MDIO_PMA_REG_ROM_VER1, align 4
  %13 = call i32 @elink_cl45_read(%struct.bxe_softc* %9, %struct.elink_phy* %10, i32 %11, i32 %12, i32* %7)
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %15 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %16 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %17 = load i32, i32* @MDIO_PMA_REG_ROM_VER2, align 4
  %18 = call i32 @elink_cl45_read(%struct.bxe_softc* %14, %struct.elink_phy* %15, i32 %16, i32 %17, i32* %8)
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 16
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %26 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @elink_save_spirom_version(%struct.bxe_softc* %19, i32 %20, i32 %24, i32 %27)
  ret void
}

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_save_spirom_version(%struct.bxe_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
