; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_setmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_setmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32, i64, i32 }

@ANAR_CSMA = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i64 0, align 8
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@MIIF_FORCEPAUSE = common dso_local global i32 0, align 4
@ANAR_PAUSE_TOWARDS = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@EXTSR_1000TFDX = common dso_local global i32 0, align 4
@EXTSR_1000THDX = common dso_local global i32 0, align 4
@MII_100T2CR = common dso_local global i32 0, align 4
@GTCR_ADV_1000TFDX = common dso_local global i32 0, align 4
@GTCR_ADV_1000THDX = common dso_local global i32 0, align 4
@MII_MODEL_xxATHEROS_F1 = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, i32)* @atphy_setmedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atphy_setmedia(%struct.mii_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @BMSR_MEDIA_TO_ANAR(i32 %8)
  %10 = load i32, i32* @ANAR_CSMA, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @IFM_SUBTYPE(i32 %12)
  %14 = load i64, i64* @IFM_AUTO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IFM_FDX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IFM_FLOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26, %21
  %34 = load i32, i32* @ANAR_PAUSE_TOWARDS, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %26, %16
  %38 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %39 = load i32, i32* @MII_ANAR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @PHY_WRITE(%struct.mii_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EXTSR_1000TFDX, align 4
  %46 = load i32, i32* @EXTSR_1000THDX, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %52 = load i32, i32* @MII_100T2CR, align 4
  %53 = load i32, i32* @GTCR_ADV_1000TFDX, align 4
  %54 = load i32, i32* @GTCR_ADV_1000THDX, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @PHY_WRITE(%struct.mii_softc* %51, i32 %52, i32 %55)
  br label %68

57:                                               ; preds = %37
  %58 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MII_MODEL_xxATHEROS_F1, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %65 = load i32, i32* @MII_100T2CR, align 4
  %66 = call i32 @PHY_WRITE(%struct.mii_softc* %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.mii_softc*, %struct.mii_softc** %3, align 8
  %70 = load i32, i32* @MII_BMCR, align 4
  %71 = load i32, i32* @BMCR_RESET, align 4
  %72 = load i32, i32* @BMCR_AUTOEN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @BMCR_STARTNEG, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @PHY_WRITE(%struct.mii_softc* %69, i32 %70, i32 %75)
  %77 = load i32, i32* @EJUSTRETURN, align 4
  ret i32 %77
}

declare dso_local i32 @BMSR_MEDIA_TO_ANAR(i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
