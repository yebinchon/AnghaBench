; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32 }

@RGEPHY_F_MII_PCR1 = common dso_local global i32 0, align 4
@RGEPHY_F_PCR1_MDI_MM = common dso_local global i32 0, align 4
@RGEPHY_F_PCR1_ALDPS_EN = common dso_local global i32 0, align 4
@MIIF_PHYPRIV0 = common dso_local global i32 0, align 4
@RGEPHY_MII_SSR = common dso_local global i32 0, align 4
@RGEPHY_SSR_ALDPS = common dso_local global i32 0, align 4
@RGEPHY_8211B = common dso_local global i32 0, align 4
@RGEPHY_MII_PCR = common dso_local global i32 0, align 4
@RGEPHY_PCR_MDIX_AUTO = common dso_local global i32 0, align 4
@RGEPHY_PCR_MDI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @rgephy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgephy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %5 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %50 [
    i32 128, label %8
    i32 129, label %24
  ]

8:                                                ; preds = %1
  %9 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %10 = load i32, i32* @RGEPHY_F_MII_PCR1, align 4
  %11 = call i32 @PHY_READ(%struct.mii_softc* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @RGEPHY_F_PCR1_MDI_MM, align 4
  %13 = load i32, i32* @RGEPHY_F_PCR1_ALDPS_EN, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %19 = load i32, i32* @RGEPHY_F_MII_PCR1, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @PHY_WRITE(%struct.mii_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %23 = call i32 @rgephy_disable_eee(%struct.mii_softc* %22)
  br label %78

24:                                               ; preds = %1
  %25 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MIIF_PHYPRIV0, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %33 = load i32, i32* @RGEPHY_MII_SSR, align 4
  %34 = call i32 @PHY_READ(%struct.mii_softc* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @RGEPHY_SSR_ALDPS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i32, i32* @RGEPHY_SSR_ALDPS, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %45 = load i32, i32* @RGEPHY_MII_SSR, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @PHY_WRITE(%struct.mii_softc* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %31
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %1, %49
  %51 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %52 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RGEPHY_8211B, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %58 = load i32, i32* @RGEPHY_MII_PCR, align 4
  %59 = call i32 @PHY_READ(%struct.mii_softc* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @RGEPHY_PCR_MDIX_AUTO, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load i32, i32* @RGEPHY_PCR_MDI_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @RGEPHY_PCR_MDIX_AUTO, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %73 = load i32, i32* @RGEPHY_MII_PCR, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @PHY_WRITE(%struct.mii_softc* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %64, %56
  br label %77

77:                                               ; preds = %76, %50
  br label %78

78:                                               ; preds = %77, %8
  %79 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %80 = call i32 @mii_phy_reset(%struct.mii_softc* %79)
  %81 = call i32 @DELAY(i32 1000)
  %82 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %83 = call i32 @rgephy_load_dspcode(%struct.mii_softc* %82)
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @rgephy_disable_eee(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_reset(%struct.mii_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @rgephy_load_dspcode(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
