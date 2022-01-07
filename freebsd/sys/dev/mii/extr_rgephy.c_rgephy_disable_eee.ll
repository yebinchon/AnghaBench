; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_disable_eee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_disable_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@RGEPHY_F_EPAGSR = common dso_local global i32 0, align 4
@MII_MMDACR = common dso_local global i32 0, align 4
@MMDACR_FN_ADDRESS = common dso_local global i32 0, align 4
@MMDACR_DADDRMASK = common dso_local global i32 0, align 4
@RGEPHY_F_MMD_DEV_7 = common dso_local global i32 0, align 4
@MII_MMDAADR = common dso_local global i32 0, align 4
@RGEPHY_F_MMD_EEEAR = common dso_local global i32 0, align 4
@MMDACR_FN_DATANPI = common dso_local global i32 0, align 4
@ANAR_CSMA = common dso_local global i32 0, align 4
@RGEPHY_MII_ANAR = common dso_local global i32 0, align 4
@RGEPHY_MII_1000CTL = common dso_local global i32 0, align 4
@RGEPHY_1000CTL_AHD = common dso_local global i32 0, align 4
@RGEPHY_1000CTL_AFD = common dso_local global i32 0, align 4
@RGEPHY_MII_BMCR = common dso_local global i32 0, align 4
@RGEPHY_BMCR_RESET = common dso_local global i32 0, align 4
@RGEPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@RGEPHY_BMCR_STARTNEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @rgephy_disable_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgephy_disable_eee(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %4 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %5 = load i32, i32* @RGEPHY_F_EPAGSR, align 4
  %6 = call i32 @PHY_WRITE(%struct.mii_softc* %4, i32 %5, i32 0)
  %7 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %8 = load i32, i32* @MII_MMDACR, align 4
  %9 = load i32, i32* @MMDACR_FN_ADDRESS, align 4
  %10 = load i32, i32* @MMDACR_DADDRMASK, align 4
  %11 = load i32, i32* @RGEPHY_F_MMD_DEV_7, align 4
  %12 = and i32 %10, %11
  %13 = or i32 %9, %12
  %14 = call i32 @PHY_WRITE(%struct.mii_softc* %7, i32 %8, i32 %13)
  %15 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %16 = load i32, i32* @MII_MMDAADR, align 4
  %17 = load i32, i32* @RGEPHY_F_MMD_EEEAR, align 4
  %18 = call i32 @PHY_WRITE(%struct.mii_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = load i32, i32* @MII_MMDACR, align 4
  %21 = load i32, i32* @MMDACR_FN_DATANPI, align 4
  %22 = load i32, i32* @MMDACR_DADDRMASK, align 4
  %23 = load i32, i32* @RGEPHY_F_MMD_DEV_7, align 4
  %24 = and i32 %22, %23
  %25 = or i32 %21, %24
  %26 = call i32 @PHY_WRITE(%struct.mii_softc* %19, i32 %20, i32 %25)
  %27 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %28 = load i32, i32* @MII_MMDAADR, align 4
  %29 = call i32 @PHY_WRITE(%struct.mii_softc* %27, i32 %28, i32 0)
  %30 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %31 = load i32, i32* @MII_MMDACR, align 4
  %32 = call i32 @PHY_WRITE(%struct.mii_softc* %30, i32 %31, i32 0)
  %33 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %34 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BMSR_MEDIA_TO_ANAR(i32 %35)
  %37 = load i32, i32* @ANAR_CSMA, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %3, align 4
  %39 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %40 = load i32, i32* @RGEPHY_MII_ANAR, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @PHY_WRITE(%struct.mii_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %44 = load i32, i32* @RGEPHY_MII_1000CTL, align 4
  %45 = load i32, i32* @RGEPHY_1000CTL_AHD, align 4
  %46 = load i32, i32* @RGEPHY_1000CTL_AFD, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @PHY_WRITE(%struct.mii_softc* %43, i32 %44, i32 %47)
  %49 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %50 = load i32, i32* @RGEPHY_MII_BMCR, align 4
  %51 = load i32, i32* @RGEPHY_BMCR_RESET, align 4
  %52 = load i32, i32* @RGEPHY_BMCR_AUTOEN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RGEPHY_BMCR_STARTNEG, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @PHY_WRITE(%struct.mii_softc* %49, i32 %50, i32 %55)
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @BMSR_MEDIA_TO_ANAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
