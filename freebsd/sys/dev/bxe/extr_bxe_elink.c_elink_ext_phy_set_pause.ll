; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ext_phy_set_pause.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ext_phy_set_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }
%struct.elink_vars = type { i32 }

@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_ADV_PAUSE = common dso_local global i32 0, align 4
@MDIO_AN_REG_ADV_PAUSE_BOTH = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC = common dso_local global i32 0, align 4
@MDIO_AN_REG_ADV_PAUSE_ASYMMETRIC = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH = common dso_local global i32 0, align 4
@MDIO_AN_REG_ADV_PAUSE_PAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Ext phy AN advertize 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_params*, %struct.elink_phy*, %struct.elink_vars*)* @elink_ext_phy_set_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_ext_phy_set_pause(%struct.elink_params* %0, %struct.elink_phy* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca %struct.elink_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %5, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %6, align 8
  %9 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 0
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  store %struct.bxe_softc* %11, %struct.bxe_softc** %8, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %13 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %14 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %15 = load i32, i32* @MDIO_AN_REG_ADV_PAUSE, align 4
  %16 = call i32 @elink_cl45_read(%struct.bxe_softc* %12, %struct.elink_phy* %13, i32 %14, i32 %15, i32* %7)
  %17 = load i32, i32* @MDIO_AN_REG_ADV_PAUSE_BOTH, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %22 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %23 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %24 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %23, i32 0, i32 0
  %25 = call i32 @elink_calc_ieee_aneg_adv(%struct.elink_phy* %21, %struct.elink_params* %22, i32* %24)
  %26 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %27 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @MDIO_AN_REG_ADV_PAUSE_ASYMMETRIC, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.elink_vars*, %struct.elink_vars** %6, align 8
  %39 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @MDIO_AN_REG_ADV_PAUSE_PAUSE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %54 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %55 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %56 = load i32, i32* @MDIO_AN_REG_ADV_PAUSE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @elink_cl45_write(%struct.bxe_softc* %53, %struct.elink_phy* %54, i32 %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_calc_ieee_aneg_adv(%struct.elink_phy*, %struct.elink_params*, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
