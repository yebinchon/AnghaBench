; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_setmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_setmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.ifmedia_entry = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@GTCR_ADV_1000TFDX = common dso_local global i32 0, align 4
@GTCR_ADV_1000THDX = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@MIIF_FORCEPAUSE = common dso_local global i32 0, align 4
@ANAR_PAUSE_TOWARDS = common dso_local global i32 0, align 4
@MIIF_HAVE_GTCR = common dso_local global i32 0, align 4
@GTCR_MAN_MS = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@GTCR_ADV_MS = common dso_local global i32 0, align 4
@MII_100T2CR = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@ANAR_CSMA = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.ifmedia_entry*)* @jmphy_setmedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmphy_setmedia(%struct.mii_softc* %0, %struct.ifmedia_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_softc*, align 8
  %5 = alloca %struct.ifmedia_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %4, align 8
  store %struct.ifmedia_entry* %1, %struct.ifmedia_entry** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %10 = load i32, i32* @MII_BMCR, align 4
  %11 = call i32 @PHY_READ(%struct.mii_softc* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %13 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IFM_SUBTYPE(i32 %14)
  switch i32 %15, label %39 [
    i32 129, label %16
    i32 132, label %22
    i32 131, label %28
    i32 130, label %28
    i32 128, label %29
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @GTCR_ADV_1000TFDX, align 4
  %18 = load i32, i32* @GTCR_ADV_1000THDX, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load i32, i32* @GTCR_ADV_1000TFDX, align 4
  %24 = load i32, i32* @GTCR_ADV_1000THDX, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %41

28:                                               ; preds = %2, %2
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %31 = load i32, i32* @MII_BMCR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @BMCR_ISO, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BMCR_PDOWN, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @PHY_WRITE(%struct.mii_softc* %30, i32 %31, i32 %36)
  %38 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %38, i32* %3, align 4
  br label %123

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %123

41:                                               ; preds = %28, %22, %16
  %42 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %43 = call i32 @jmphy_anar(%struct.ifmedia_entry* %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %45 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IFM_SUBTYPE(i32 %46)
  %48 = icmp eq i32 %47, 129
  br i1 %48, label %56, label %49

49:                                               ; preds = %41
  %50 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %51 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFM_FDX, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %49, %41
  %57 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %58 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFM_FLOW, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %65 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63, %56
  %71 = load i32, i32* @ANAR_PAUSE_TOWARDS, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %63, %49
  %75 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %76 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MIIF_HAVE_GTCR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %74
  %82 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %83 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @IFM_SUBTYPE(i32 %84)
  %86 = icmp eq i32 %85, 132
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load i32, i32* @GTCR_MAN_MS, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %92 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IFM_ETH_MASTER, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load i32, i32* @GTCR_ADV_MS, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %87
  br label %102

102:                                              ; preds = %101, %81
  %103 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %104 = load i32, i32* @MII_100T2CR, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @PHY_WRITE(%struct.mii_softc* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %74
  %108 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %109 = load i32, i32* @MII_ANAR, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @ANAR_CSMA, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @PHY_WRITE(%struct.mii_softc* %108, i32 %109, i32 %112)
  %114 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %115 = load i32, i32* @MII_BMCR, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @BMCR_AUTOEN, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @BMCR_STARTNEG, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @PHY_WRITE(%struct.mii_softc* %114, i32 %115, i32 %120)
  %122 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %107, %39, %29
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @jmphy_anar(%struct.ifmedia_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
