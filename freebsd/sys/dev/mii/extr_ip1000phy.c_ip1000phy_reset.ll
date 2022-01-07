; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ip1000phy.c_ip1000phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ip1000phy.c_ip1000phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@IP1000PHY_MII_BMCR = common dso_local global i32 0, align 4
@IP1000PHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@IP1000PHY_BMCR_FDX = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MIIF_PHYPRIV0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @ip1000phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip1000phy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %4 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %5 = call i32 @mii_phy_reset(%struct.mii_softc* %4)
  %6 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %7 = load i32, i32* @IP1000PHY_MII_BMCR, align 4
  %8 = call i32 @PHY_READ(%struct.mii_softc* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @IP1000PHY_BMCR_AUTOEN, align 4
  %10 = load i32, i32* @IP1000PHY_BMCR_FDX, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %16 = load i32, i32* @MII_BMCR, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @PHY_WRITE(%struct.mii_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MIIF_PHYPRIV0, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %27 = call i32 @ip1000phy_load_dspcode(%struct.mii_softc* %26)
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @mii_phy_reset(%struct.mii_softc*) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @ip1000phy_load_dspcode(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
