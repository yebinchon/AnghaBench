; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_phy_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_phy_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALC_GPHY_CFG = common dso_local global i32 0, align 4
@GPHY_CFG_EXT_RESET = common dso_local global i32 0, align 4
@GPHY_CFG_LED_MODE = common dso_local global i32 0, align 4
@GPHY_CFG_100AB_ENB = common dso_local global i32 0, align 4
@GPHY_CFG_PHY_PLL_ON = common dso_local global i32 0, align 4
@GPHY_CFG_HIB_EN = common dso_local global i32 0, align 4
@GPHY_CFG_HIB_PULSE = common dso_local global i32 0, align 4
@GPHY_CFG_SEL_ANA_RESET = common dso_local global i32 0, align 4
@GPHY_CFG_PHY_IDDQ = common dso_local global i32 0, align 4
@GPHY_CFG_PWDOWN_HW = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_phy_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_phy_down(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %4 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %51 [
    i32 134, label %9
    i32 130, label %9
    i32 129, label %9
    i32 128, label %9
    i32 133, label %9
    i32 132, label %9
    i32 131, label %9
    i32 138, label %39
    i32 137, label %39
    i32 136, label %39
    i32 135, label %39
  ]

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  %10 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %11 = load i32, i32* @ALC_GPHY_CFG, align 4
  %12 = call i32 @CSR_READ_4(%struct.alc_softc* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @GPHY_CFG_EXT_RESET, align 4
  %14 = load i32, i32* @GPHY_CFG_LED_MODE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @GPHY_CFG_100AB_ENB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @GPHY_CFG_PHY_PLL_ON, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @GPHY_CFG_HIB_EN, align 4
  %24 = load i32, i32* @GPHY_CFG_HIB_PULSE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GPHY_CFG_SEL_ANA_RESET, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @GPHY_CFG_PHY_IDDQ, align 4
  %31 = load i32, i32* @GPHY_CFG_PWDOWN_HW, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %36 = load i32, i32* @ALC_GPHY_CFG, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @CSR_WRITE_4(%struct.alc_softc* %35, i32 %36, i32 %37)
  br label %63

39:                                               ; preds = %1, %1, %1, %1
  %40 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %41 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %44 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MII_BMCR, align 4
  %47 = load i32, i32* @BMCR_ISO, align 4
  %48 = load i32, i32* @BMCR_PDOWN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @alc_miibus_writereg(i32 %42, i32 %45, i32 %46, i32 %49)
  br label %63

51:                                               ; preds = %1
  %52 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %53 = load i32, i32* @ALC_GPHY_CFG, align 4
  %54 = load i32, i32* @GPHY_CFG_EXT_RESET, align 4
  %55 = load i32, i32* @GPHY_CFG_SEL_ANA_RESET, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @GPHY_CFG_PHY_IDDQ, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @GPHY_CFG_PWDOWN_HW, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @CSR_WRITE_2(%struct.alc_softc* %52, i32 %53, i32 %60)
  %62 = call i32 @DELAY(i32 1000)
  br label %63

63:                                               ; preds = %51, %39, %9
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @alc_miibus_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
