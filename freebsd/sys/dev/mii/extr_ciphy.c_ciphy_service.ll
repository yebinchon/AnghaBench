; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ciphy.c_ciphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ciphy.c_ciphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i64, i64, i32, i32 }
%struct.mii_data = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@CIPHY_S1000 = common dso_local global i32 0, align 4
@CIPHY_S100 = common dso_local global i32 0, align 4
@CIPHY_S10 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@CIPHY_BMCR_FDX = common dso_local global i32 0, align 4
@CIPHY_1000CTL_AFD = common dso_local global i32 0, align 4
@CIPHY_1000CTL_AHD = common dso_local global i32 0, align 4
@CIPHY_1000CTL_MSE = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@CIPHY_1000CTL_MSC = common dso_local global i32 0, align 4
@CIPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@CIPHY_BMCR_STARTNEG = common dso_local global i32 0, align 4
@CIPHY_MII_1000CTL = common dso_local global i32 0, align 4
@CIPHY_MII_BMCR = common dso_local global i32 0, align 4
@CIPHY_MII_ANAR = common dso_local global i32 0, align 4
@CIPHY_SEL_TYPE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @ciphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
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
  %13 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %14, align 8
  store %struct.ifmedia_entry* %15, %struct.ifmedia_entry** %8, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %139 [
    i32 129, label %17
    i32 130, label %18
    i32 128, label %98
  ]

17:                                               ; preds = %3
  br label %139

18:                                               ; preds = %3
  %19 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %20 = call i32 @ciphy_fixup(%struct.mii_softc* %19)
  %21 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %22 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IFM_SUBTYPE(i32 %23)
  switch i32 %24, label %95 [
    i32 132, label %25
    i32 135, label %28
    i32 134, label %30
    i32 133, label %32
    i32 131, label %88
  ]

25:                                               ; preds = %18
  %26 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %27 = call i32 @mii_phy_auto(%struct.mii_softc* %26)
  br label %97

28:                                               ; preds = %18
  %29 = load i32, i32* @CIPHY_S1000, align 4
  store i32 %29, i32* %10, align 4
  br label %34

30:                                               ; preds = %18
  %31 = load i32, i32* @CIPHY_S100, align 4
  store i32 %31, i32* %10, align 4
  br label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @CIPHY_S10, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %30, %28
  %35 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %36 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFM_FDX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @CIPHY_BMCR_FDX, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @CIPHY_1000CTL_AFD, align 4
  store i32 %45, i32* %11, align 4
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @CIPHY_1000CTL_AHD, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %50 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IFM_SUBTYPE(i32 %51)
  %53 = icmp eq i32 %52, 135
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load i32, i32* @CIPHY_1000CTL_MSE, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %59 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFM_ETH_MASTER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* @CIPHY_1000CTL_MSC, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %64, %54
  %69 = load i32, i32* @CIPHY_BMCR_AUTOEN, align 4
  %70 = load i32, i32* @CIPHY_BMCR_STARTNEG, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %75

74:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %77 = load i32, i32* @CIPHY_MII_1000CTL, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @PHY_WRITE(%struct.mii_softc* %76, i32 %77, i32 %78)
  %80 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %81 = load i32, i32* @CIPHY_MII_BMCR, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @PHY_WRITE(%struct.mii_softc* %80, i32 %81, i32 %82)
  %84 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %85 = load i32, i32* @CIPHY_MII_ANAR, align 4
  %86 = load i32, i32* @CIPHY_SEL_TYPE, align 4
  %87 = call i32 @PHY_WRITE(%struct.mii_softc* %84, i32 %85, i32 %86)
  br label %97

88:                                               ; preds = %18
  %89 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %90 = load i32, i32* @MII_BMCR, align 4
  %91 = load i32, i32* @BMCR_ISO, align 4
  %92 = load i32, i32* @BMCR_PDOWN, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @PHY_WRITE(%struct.mii_softc* %89, i32 %90, i32 %93)
  br label %97

95:                                               ; preds = %18
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %4, align 4
  br label %167

97:                                               ; preds = %88, %75, %25
  br label %139

98:                                               ; preds = %3
  %99 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %100 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @IFM_SUBTYPE(i32 %101)
  %103 = icmp ne i32 %102, 132
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %139

105:                                              ; preds = %98
  %106 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %107 = load i32, i32* @MII_BMSR, align 4
  %108 = call i32 @PHY_READ(%struct.mii_softc* %106, i32 %107)
  %109 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %110 = load i32, i32* @MII_BMSR, align 4
  %111 = call i32 @PHY_READ(%struct.mii_softc* %109, i32 %110)
  %112 = or i32 %108, %111
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @BMSR_LINK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  br label %139

118:                                              ; preds = %105
  %119 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %120 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %139

125:                                              ; preds = %118
  %126 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %127 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %130 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %139

134:                                              ; preds = %125
  %135 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %136 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %135, i32 0, i32 2
  store i32 0, i32* %136, align 8
  %137 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %138 = call i32 @mii_phy_auto(%struct.mii_softc* %137)
  br label %139

139:                                              ; preds = %3, %134, %133, %124, %117, %104, %97, %17
  %140 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %141 = call i32 @PHY_STATUS(%struct.mii_softc* %140)
  %142 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %143 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %146 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %160, label %149

149:                                              ; preds = %139
  %150 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %151 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %154 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %160, label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %7, align 4
  %159 = icmp eq i32 %158, 130
  br i1 %159, label %160, label %163

160:                                              ; preds = %157, %149, %139
  %161 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %162 = call i32 @ciphy_fixup(%struct.mii_softc* %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @mii_phy_update(%struct.mii_softc* %164, i32 %165)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %163, %95
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @ciphy_fixup(%struct.mii_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @mii_phy_auto(%struct.mii_softc*) #1

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
