; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ip1000phy.c_ip1000phy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ip1000phy.c_ip1000phy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IP1000PHY_BMCR_1000 = common dso_local global i32 0, align 4
@IP1000PHY_BMCR_100 = common dso_local global i32 0, align 4
@IP1000PHY_BMCR_10 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IP1000PHY_BMCR_FDX = common dso_local global i32 0, align 4
@IP1000PHY_1000CR_1000T_FDX = common dso_local global i32 0, align 4
@IP1000PHY_1000CR_1000T = common dso_local global i32 0, align 4
@IP1000PHY_1000CR_MASTER = common dso_local global i32 0, align 4
@IP1000PHY_1000CR_MANUAL = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@IP1000PHY_1000CR_MMASTER = common dso_local global i32 0, align 4
@IP1000PHY_MII_1000CR = common dso_local global i32 0, align 4
@IP1000PHY_MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @ip1000phy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip1000phy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %13 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %14, align 8
  store %struct.ifmedia_entry* %15, %struct.ifmedia_entry** %8, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %135 [
    i32 129, label %17
    i32 130, label %18
    i32 128, label %87
  ]

17:                                               ; preds = %3
  br label %135

18:                                               ; preds = %3
  %19 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %20 = call i32 @PHY_RESET(%struct.mii_softc* %19)
  %21 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %22 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IFM_SUBTYPE(i32 %23)
  switch i32 %24, label %37 [
    i32 131, label %25
    i32 134, label %31
    i32 133, label %33
    i32 132, label %35
  ]

25:                                               ; preds = %18
  %26 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %27 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %28 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ip1000phy_mii_phy_auto(%struct.mii_softc* %26, i32 %29)
  br label %86

31:                                               ; preds = %18
  %32 = load i32, i32* @IP1000PHY_BMCR_1000, align 4
  store i32 %32, i32* %11, align 4
  br label %39

33:                                               ; preds = %18
  %34 = load i32, i32* @IP1000PHY_BMCR_100, align 4
  store i32 %34, i32* %11, align 4
  br label %39

35:                                               ; preds = %18
  %36 = load i32, i32* @IP1000PHY_BMCR_10, align 4
  store i32 %36, i32* %11, align 4
  br label %39

37:                                               ; preds = %18
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %141

39:                                               ; preds = %35, %33, %31
  %40 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %41 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFM_FDX, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @IP1000PHY_BMCR_FDX, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @IP1000PHY_1000CR_1000T_FDX, align 4
  store i32 %50, i32* %9, align 4
  br label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @IP1000PHY_1000CR_1000T, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %55 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IFM_SUBTYPE(i32 %56)
  %58 = icmp eq i32 %57, 134
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load i32, i32* @IP1000PHY_1000CR_MASTER, align 4
  %61 = load i32, i32* @IP1000PHY_1000CR_MANUAL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %66 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFM_ETH_MASTER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load i32, i32* @IP1000PHY_1000CR_MMASTER, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %59
  br label %77

76:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %79 = load i32, i32* @IP1000PHY_MII_1000CR, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @PHY_WRITE(%struct.mii_softc* %78, i32 %79, i32 %80)
  %82 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %83 = load i32, i32* @IP1000PHY_MII_BMCR, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @PHY_WRITE(%struct.mii_softc* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %77, %25
  br label %135

87:                                               ; preds = %3
  %88 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %89 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IFM_SUBTYPE(i32 %90)
  %92 = icmp ne i32 %91, 131
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %95 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  br label %135

96:                                               ; preds = %87
  %97 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %98 = load i32, i32* @MII_BMSR, align 4
  %99 = call i32 @PHY_READ(%struct.mii_softc* %97, i32 %98)
  %100 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %101 = load i32, i32* @MII_BMSR, align 4
  %102 = call i32 @PHY_READ(%struct.mii_softc* %100, i32 %101)
  %103 = or i32 %99, %102
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @BMSR_LINK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %96
  %109 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %110 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  br label %135

111:                                              ; preds = %96
  %112 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %113 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %135

118:                                              ; preds = %111
  %119 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %120 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %123 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sle i32 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %135

127:                                              ; preds = %118
  %128 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %129 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %128, i32 0, i32 0
  store i32 0, i32* %129, align 4
  %130 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %131 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %132 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ip1000phy_mii_phy_auto(%struct.mii_softc* %130, i32 %133)
  br label %135

135:                                              ; preds = %3, %127, %126, %117, %108, %93, %86, %17
  %136 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %137 = call i32 @PHY_STATUS(%struct.mii_softc* %136)
  %138 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @mii_phy_update(%struct.mii_softc* %138, i32 %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %135, %37
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @ip1000phy_mii_phy_auto(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
