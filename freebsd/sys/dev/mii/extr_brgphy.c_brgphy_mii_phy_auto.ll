; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_mii_phy_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_mii_phy_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i64, i32 }

@MIIF_HAVEFIBER = common dso_local global i32 0, align 4
@ANAR_CSMA = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@MIIF_FORCEPAUSE = common dso_local global i32 0, align 4
@BRGPHY_ANAR_PC = common dso_local global i32 0, align 4
@BRGPHY_ANAR_ASP = common dso_local global i32 0, align 4
@BRGPHY_MII_ANAR = common dso_local global i32 0, align 4
@BRGPHY_1000CTL_AFD = common dso_local global i32 0, align 4
@BRGPHY_1000CTL_AHD = common dso_local global i32 0, align 4
@MII_MODEL_BROADCOM_BCM5701 = common dso_local global i64 0, align 8
@BRGPHY_1000CTL_MSE = common dso_local global i32 0, align 4
@BRGPHY_1000CTL_MSC = common dso_local global i32 0, align 4
@BRGPHY_MII_1000CTL = common dso_local global i32 0, align 4
@BRGPHY_SERDES_ANAR_FDX = common dso_local global i32 0, align 4
@BRGPHY_SERDES_ANAR_HDX = common dso_local global i32 0, align 4
@BRGPHY_SERDES_ANAR_BOTH_PAUSE = common dso_local global i32 0, align 4
@BRGPHY_SERDES_ANAR = common dso_local global i32 0, align 4
@BRGPHY_MII_BMCR = common dso_local global i32 0, align 4
@BRGPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@BRGPHY_BMCR_STARTNEG = common dso_local global i32 0, align 4
@BRGPHY_MII_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*, i32)* @brgphy_mii_phy_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brgphy_mii_phy_auto(%struct.mii_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %8 = call i32 @PHY_RESET(%struct.mii_softc* %7)
  %9 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %2
  %16 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BMSR_MEDIA_TO_ANAR(i32 %18)
  %20 = load i32, i32* @ANAR_CSMA, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IFM_FLOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %15
  %27 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26, %15
  %34 = load i32, i32* @BRGPHY_ANAR_PC, align 4
  %35 = load i32, i32* @BRGPHY_ANAR_ASP, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %41 = load i32, i32* @BRGPHY_MII_ANAR, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @PHY_WRITE(%struct.mii_softc* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @BRGPHY_1000CTL_AFD, align 4
  %45 = load i32, i32* @BRGPHY_1000CTL_AHD, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %48 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MII_MODEL_BROADCOM_BCM5701, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %39
  %53 = load i32, i32* @BRGPHY_1000CTL_MSE, align 4
  %54 = load i32, i32* @BRGPHY_1000CTL_MSC, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %52, %39
  %59 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %60 = load i32, i32* @BRGPHY_MII_1000CTL, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @PHY_WRITE(%struct.mii_softc* %59, i32 %60, i32 %61)
  %63 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %64 = load i32, i32* @BRGPHY_MII_1000CTL, align 4
  %65 = call i32 @PHY_READ(%struct.mii_softc* %63, i32 %64)
  br label %90

66:                                               ; preds = %2
  %67 = load i32, i32* @BRGPHY_SERDES_ANAR_FDX, align 4
  %68 = load i32, i32* @BRGPHY_SERDES_ANAR_HDX, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @IFM_FLOW, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %66
  %75 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %76 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74, %66
  %82 = load i32, i32* @BRGPHY_SERDES_ANAR_BOTH_PAUSE, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %87 = load i32, i32* @BRGPHY_SERDES_ANAR, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @PHY_WRITE(%struct.mii_softc* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %58
  %91 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %92 = load i32, i32* @BRGPHY_MII_BMCR, align 4
  %93 = load i32, i32* @BRGPHY_BMCR_AUTOEN, align 4
  %94 = load i32, i32* @BRGPHY_BMCR_STARTNEG, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @PHY_WRITE(%struct.mii_softc* %91, i32 %92, i32 %95)
  %97 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %98 = load i32, i32* @BRGPHY_MII_IMR, align 4
  %99 = call i32 @PHY_WRITE(%struct.mii_softc* %97, i32 %98, i32 65280)
  ret void
}

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @BMSR_MEDIA_TO_ANAR(i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
