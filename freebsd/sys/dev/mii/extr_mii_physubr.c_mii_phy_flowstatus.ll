; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_flowstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_flowstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }

@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@MII_ANLPAR = common dso_local global i32 0, align 4
@MIIF_IS_1000X = common dso_local global i32 0, align 4
@ANAR_PAUSE_SYM = common dso_local global i32 0, align 4
@ANLPAR_PAUSE_SYM = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@ANAR_PAUSE_ASYM = common dso_local global i32 0, align 4
@ANLPAR_PAUSE_TOWARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_phy_flowstatus(%struct.mii_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MIIF_DOPAUSE, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %99

13:                                               ; preds = %1
  %14 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %15 = load i32, i32* @MII_ANAR, align 4
  %16 = call i32 @PHY_READ(%struct.mii_softc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %18 = load i32, i32* @MII_ANLPAR, align 4
  %19 = call i32 @PHY_READ(%struct.mii_softc* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MIIF_IS_1000X, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 3
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %29, 3
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %13
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ANAR_PAUSE_SYM, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ANLPAR_PAUSE_SYM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @IFM_FLOW, align 4
  %43 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %2, align 4
  br label %99

47:                                               ; preds = %36, %31
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ANAR_PAUSE_SYM, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @ANAR_PAUSE_ASYM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ANLPAR_PAUSE_TOWARDS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @IFM_FLOW, align 4
  %64 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %2, align 4
  br label %99

66:                                               ; preds = %57, %52
  store i32 0, i32* %2, align 4
  br label %99

67:                                               ; preds = %47
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @ANAR_PAUSE_ASYM, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @ANLPAR_PAUSE_SYM, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @IFM_FLOW, align 4
  %79 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %2, align 4
  br label %99

83:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %99

84:                                               ; preds = %67
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @ANLPAR_PAUSE_TOWARDS, align 4
  %87 = and i32 %85, %86
  switch i32 %87, label %93 [
    i32 128, label %88
    i32 129, label %89
  ]

88:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %99

89:                                               ; preds = %84
  %90 = load i32, i32* @IFM_FLOW, align 4
  %91 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %2, align 4
  br label %99

93:                                               ; preds = %84
  %94 = load i32, i32* @IFM_FLOW, align 4
  %95 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %89, %88, %83, %77, %66, %62, %41, %12
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
