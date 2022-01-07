; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_setmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_setmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@BRGPHY_S1000 = common dso_local global i32 0, align 4
@BRGPHY_S100 = common dso_local global i32 0, align 4
@BRGPHY_S10 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@BRGPHY_BMCR_FDX = common dso_local global i32 0, align 4
@BRGPHY_1000CTL_AFD = common dso_local global i32 0, align 4
@BRGPHY_1000CTL_AHD = common dso_local global i32 0, align 4
@BRGPHY_MII_1000CTL = common dso_local global i32 0, align 4
@BRGPHY_MII_ANAR = common dso_local global i32 0, align 4
@BRGPHY_SEL_TYPE = common dso_local global i32 0, align 4
@BRGPHY_MII_BMCR = common dso_local global i32 0, align 4
@BRGPHY_1000CTL_MSE = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@BRGPHY_1000CTL_MSC = common dso_local global i32 0, align 4
@BRGPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@BRGPHY_BMCR_STARTNEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*, i32)* @brgphy_setmedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brgphy_setmedia(%struct.mii_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @IFM_SUBTYPE(i32 %7)
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 132, label %10
    i32 131, label %10
    i32 130, label %12
    i32 129, label %14
  ]

9:                                                ; preds = %2
  br label %17

10:                                               ; preds = %2, %2
  %11 = load i32, i32* @BRGPHY_S1000, align 4
  store i32 %11, i32* %5, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @BRGPHY_S100, align 4
  store i32 %13, i32* %5, align 4
  br label %17

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %2, %14
  %16 = load i32, i32* @BRGPHY_S10, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %12, %10, %9
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IFM_FDX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @BRGPHY_BMCR_FDX, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @BRGPHY_1000CTL_AFD, align 4
  store i32 %26, i32* %6, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @BRGPHY_1000CTL_AHD, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %31 = call i32 @brgphy_enable_loopback(%struct.mii_softc* %30)
  %32 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %33 = load i32, i32* @BRGPHY_MII_1000CTL, align 4
  %34 = call i32 @PHY_WRITE(%struct.mii_softc* %32, i32 %33, i32 0)
  %35 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %36 = load i32, i32* @BRGPHY_MII_ANAR, align 4
  %37 = load i32, i32* @BRGPHY_SEL_TYPE, align 4
  %38 = call i32 @PHY_WRITE(%struct.mii_softc* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @IFM_SUBTYPE(i32 %39)
  %41 = icmp ne i32 %40, 131
  br i1 %41, label %42, label %51

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @IFM_SUBTYPE(i32 %43)
  %45 = icmp ne i32 %44, 132
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %48 = load i32, i32* @BRGPHY_MII_BMCR, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @PHY_WRITE(%struct.mii_softc* %47, i32 %48, i32 %49)
  br label %81

51:                                               ; preds = %42, %29
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @IFM_SUBTYPE(i32 %52)
  %54 = icmp eq i32 %53, 131
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* @BRGPHY_1000CTL_MSE, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @IFM_ETH_MASTER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* @BRGPHY_1000CTL_MSC, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %55
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %70 = load i32, i32* @BRGPHY_MII_1000CTL, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @PHY_WRITE(%struct.mii_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %74 = load i32, i32* @BRGPHY_MII_BMCR, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @BRGPHY_BMCR_AUTOEN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @BRGPHY_BMCR_STARTNEG, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @PHY_WRITE(%struct.mii_softc* %73, i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %68, %46
  ret void
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @brgphy_enable_loopback(%struct.mii_softc*) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
