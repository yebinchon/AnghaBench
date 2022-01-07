; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_e1000phy.c_e1000phy_mii_phy_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_e1000phy.c_e1000phy_mii_phy_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32 }

@MIIF_HAVEFIBER = common dso_local global i32 0, align 4
@E1000_AR = common dso_local global i32 0, align 4
@E1000_AR_PAUSE = common dso_local global i32 0, align 4
@E1000_AR_ASM_DIR = common dso_local global i32 0, align 4
@E1000_AR_10T = common dso_local global i32 0, align 4
@E1000_AR_10T_FD = common dso_local global i32 0, align 4
@E1000_AR_100TX = common dso_local global i32 0, align 4
@E1000_AR_100TX_FD = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@MIIF_FORCEPAUSE = common dso_local global i32 0, align 4
@E1000_AR_SELECTOR_FIELD = common dso_local global i32 0, align 4
@E1000_FA_1000X_FD = common dso_local global i32 0, align 4
@E1000_FA_1000X = common dso_local global i32 0, align 4
@MIIF_HAVE_GTCR = common dso_local global i32 0, align 4
@EXTSR_1000TFDX = common dso_local global i32 0, align 4
@E1000_1GCR_1000T_FD = common dso_local global i32 0, align 4
@EXTSR_1000THDX = common dso_local global i32 0, align 4
@E1000_1GCR_1000T = common dso_local global i32 0, align 4
@E1000_1GCR = common dso_local global i32 0, align 4
@E1000_CR = common dso_local global i32 0, align 4
@E1000_CR_AUTO_NEG_ENABLE = common dso_local global i32 0, align 4
@E1000_CR_RESTART_AUTO_NEG = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, i32)* @e1000phy_mii_phy_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000phy_mii_phy_auto(%struct.mii_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %2
  %13 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %14 = load i32, i32* @E1000_AR, align 4
  %15 = call i32 @PHY_READ(%struct.mii_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @E1000_AR_PAUSE, align 4
  %17 = load i32, i32* @E1000_AR_ASM_DIR, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @E1000_AR_10T, align 4
  %23 = load i32, i32* @E1000_AR_10T_FD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @E1000_AR_100TX, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @E1000_AR_100TX_FD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IFM_FLOW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %12
  %36 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35, %12
  %43 = load i32, i32* @E1000_AR_PAUSE, align 4
  %44 = load i32, i32* @E1000_AR_ASM_DIR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %50 = load i32, i32* @E1000_AR, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @E1000_AR_SELECTOR_FIELD, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @PHY_WRITE(%struct.mii_softc* %49, i32 %50, i32 %53)
  br label %62

55:                                               ; preds = %2
  %56 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %57 = load i32, i32* @E1000_AR, align 4
  %58 = load i32, i32* @E1000_FA_1000X_FD, align 4
  %59 = load i32, i32* @E1000_FA_1000X, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @PHY_WRITE(%struct.mii_softc* %56, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %64 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MIIF_HAVE_GTCR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  %70 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %71 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @EXTSR_1000TFDX, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @E1000_1GCR_1000T_FD, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %82 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @EXTSR_1000THDX, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @E1000_1GCR_1000T, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %93 = load i32, i32* @E1000_1GCR, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @PHY_WRITE(%struct.mii_softc* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %62
  %97 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %98 = load i32, i32* @E1000_CR, align 4
  %99 = load i32, i32* @E1000_CR_AUTO_NEG_ENABLE, align 4
  %100 = load i32, i32* @E1000_CR_RESTART_AUTO_NEG, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @PHY_WRITE(%struct.mii_softc* %97, i32 %98, i32 %101)
  %103 = load i32, i32* @EJUSTRETURN, align 4
  ret i32 %103
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
