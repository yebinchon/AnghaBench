; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_xmphy.c_xmphy_mii_phy_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_xmphy.c_xmphy_mii_phy_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@XMPHY_MII_ANAR = common dso_local global i32 0, align 4
@XMPHY_ANAR_FDX = common dso_local global i32 0, align 4
@XMPHY_ANAR_HDX = common dso_local global i32 0, align 4
@XMPHY_MII_BMCR = common dso_local global i32 0, align 4
@XMPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@XMPHY_BMCR_STARTNEG = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*)* @xmphy_mii_phy_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmphy_mii_phy_auto(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %5 = load i32, i32* @XMPHY_MII_ANAR, align 4
  %6 = call i32 @PHY_READ(%struct.mii_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @XMPHY_ANAR_FDX, align 4
  %8 = load i32, i32* @XMPHY_ANAR_HDX, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %13 = load i32, i32* @XMPHY_MII_ANAR, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @PHY_WRITE(%struct.mii_softc* %12, i32 %13, i32 %14)
  %16 = call i32 @DELAY(i32 1000)
  %17 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %18 = load i32, i32* @XMPHY_MII_BMCR, align 4
  %19 = load i32, i32* @XMPHY_BMCR_AUTOEN, align 4
  %20 = load i32, i32* @XMPHY_BMCR_STARTNEG, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @PHY_WRITE(%struct.mii_softc* %17, i32 %18, i32 %21)
  %23 = load i32, i32* @EJUSTRETURN, align 4
  ret i32 %23
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
