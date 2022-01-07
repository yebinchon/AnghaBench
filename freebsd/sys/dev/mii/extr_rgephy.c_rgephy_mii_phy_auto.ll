; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_mii_phy_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_mii_phy_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32 }

@ANAR_CSMA = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@MIIF_FORCEPAUSE = common dso_local global i32 0, align 4
@RGEPHY_ANAR_PC = common dso_local global i32 0, align 4
@RGEPHY_ANAR_ASP = common dso_local global i32 0, align 4
@RGEPHY_MII_ANAR = common dso_local global i32 0, align 4
@RGEPHY_MII_1000CTL = common dso_local global i32 0, align 4
@RGEPHY_1000CTL_AHD = common dso_local global i32 0, align 4
@RGEPHY_1000CTL_AFD = common dso_local global i32 0, align 4
@RGEPHY_MII_BMCR = common dso_local global i32 0, align 4
@RGEPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@RGEPHY_BMCR_STARTNEG = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, i32)* @rgephy_mii_phy_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgephy_mii_phy_auto(%struct.mii_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %7 = call i32 @rgephy_loop(%struct.mii_softc* %6)
  %8 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %9 = call i32 @PHY_RESET(%struct.mii_softc* %8)
  %10 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BMSR_MEDIA_TO_ANAR(i32 %12)
  %14 = load i32, i32* @ANAR_CSMA, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IFM_FLOW, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20, %2
  %28 = load i32, i32* @RGEPHY_ANAR_PC, align 4
  %29 = load i32, i32* @RGEPHY_ANAR_ASP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %35 = load i32, i32* @RGEPHY_MII_ANAR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @PHY_WRITE(%struct.mii_softc* %34, i32 %35, i32 %36)
  %38 = call i32 @DELAY(i32 1000)
  %39 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %40 = load i32, i32* @RGEPHY_MII_1000CTL, align 4
  %41 = load i32, i32* @RGEPHY_1000CTL_AHD, align 4
  %42 = load i32, i32* @RGEPHY_1000CTL_AFD, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @PHY_WRITE(%struct.mii_softc* %39, i32 %40, i32 %43)
  %45 = call i32 @DELAY(i32 1000)
  %46 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %47 = load i32, i32* @RGEPHY_MII_BMCR, align 4
  %48 = load i32, i32* @RGEPHY_BMCR_AUTOEN, align 4
  %49 = load i32, i32* @RGEPHY_BMCR_STARTNEG, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @PHY_WRITE(%struct.mii_softc* %46, i32 %47, i32 %50)
  %52 = call i32 @DELAY(i32 100)
  %53 = load i32, i32* @EJUSTRETURN, align 4
  ret i32 %53
}

declare dso_local i32 @rgephy_loop(%struct.mii_softc*) #1

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @BMSR_MEDIA_TO_ANAR(i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
