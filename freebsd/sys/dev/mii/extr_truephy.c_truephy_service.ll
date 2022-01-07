; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_truephy.c_truephy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_truephy.c_truephy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AUTO = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @truephy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truephy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %11 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %12, align 8
  store %struct.ifmedia_entry* %13, %struct.ifmedia_entry** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %84 [
    i32 129, label %15
    i32 130, label %16
    i32 128, label %77
  ]

15:                                               ; preds = %3
  br label %84

16:                                               ; preds = %3
  %17 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %18 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IFM_SUBTYPE(i32 %19)
  %21 = load i32, i32* @IFM_AUTO, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %25 = load i32, i32* @MII_BMCR, align 4
  %26 = call i32 @PHY_READ(%struct.mii_softc* %24, i32 %25)
  %27 = load i32, i32* @BMCR_AUTOEN, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %31 = load i32, i32* @MII_BMCR, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @PHY_WRITE(%struct.mii_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %35 = load i32, i32* @MII_BMCR, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @BMCR_PDOWN, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @PHY_WRITE(%struct.mii_softc* %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %23, %16
  %41 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %42 = call i32 @mii_phy_setmedia(%struct.mii_softc* %41)
  %43 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %44 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IFM_SUBTYPE(i32 %45)
  %47 = load i32, i32* @IFM_AUTO, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %40
  %50 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %51 = load i32, i32* @MII_BMCR, align 4
  %52 = call i32 @PHY_READ(%struct.mii_softc* %50, i32 %51)
  %53 = load i32, i32* @BMCR_PDOWN, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %57 = load i32, i32* @MII_BMCR, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @PHY_WRITE(%struct.mii_softc* %56, i32 %57, i32 %58)
  %60 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %61 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IFM_SUBTYPE(i32 %62)
  %64 = load i32, i32* @IFM_1000_T, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %49
  %67 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %68 = load i32, i32* @MII_BMCR, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @BMCR_AUTOEN, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @BMCR_STARTNEG, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @PHY_WRITE(%struct.mii_softc* %67, i32 %68, i32 %73)
  br label %75

75:                                               ; preds = %66, %49
  br label %76

76:                                               ; preds = %75, %40
  br label %84

77:                                               ; preds = %3
  %78 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %79 = call i32 @mii_phy_tick(%struct.mii_softc* %78)
  %80 = load i32, i32* @EJUSTRETURN, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %90

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %3, %83, %76, %15
  %85 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %86 = call i32 @PHY_STATUS(%struct.mii_softc* %85)
  %87 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @mii_phy_update(%struct.mii_softc* %87, i32 %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %82
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_tick(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
