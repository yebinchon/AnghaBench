; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32, i32, i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AUTO = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@BMCR_S100 = common dso_local global i32 0, align 4
@BMCR_S10 = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@BMCR_FDX = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@MIIF_FORCEPAUSE = common dso_local global i32 0, align 4
@ANAR_PAUSE_TOWARDS = common dso_local global i32 0, align 4
@EXTSR_1000TFDX = common dso_local global i32 0, align 4
@EXTSR_1000THDX = common dso_local global i32 0, align 4
@MII_100T2CR = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@ANAR_CSMA = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @atphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
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
  switch i32 %16, label %170 [
    i32 129, label %17
    i32 130, label %18
    i32 128, label %121
  ]

17:                                               ; preds = %3
  br label %170

18:                                               ; preds = %3
  %19 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %20 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IFM_SUBTYPE(i32 %21)
  %23 = load i32, i32* @IFM_AUTO, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %27 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IFM_SUBTYPE(i32 %28)
  %30 = load i32, i32* @IFM_1000_T, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25, %18
  %33 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %34 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %35 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @atphy_setmedia(%struct.mii_softc* %33, i32 %36)
  br label %170

38:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  %39 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %40 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IFM_SUBTYPE(i32 %41)
  switch i32 %42, label %57 [
    i32 133, label %43
    i32 132, label %45
    i32 131, label %47
  ]

43:                                               ; preds = %38
  %44 = load i32, i32* @BMCR_S100, align 4
  store i32 %44, i32* %10, align 4
  br label %59

45:                                               ; preds = %38
  %46 = load i32, i32* @BMCR_S10, align 4
  store i32 %46, i32* %10, align 4
  br label %59

47:                                               ; preds = %38
  %48 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %49 = load i32, i32* @MII_BMCR, align 4
  %50 = call i32 @PHY_READ(%struct.mii_softc* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %52 = load i32, i32* @MII_BMCR, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @BMCR_ISO, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @PHY_WRITE(%struct.mii_softc* %51, i32 %52, i32 %55)
  br label %120

57:                                               ; preds = %38
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %4, align 4
  br label %176

59:                                               ; preds = %45, %43
  %60 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %61 = call i32 @atphy_anar(%struct.ifmedia_entry* %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %63 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IFM_FDX, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %59
  %69 = load i32, i32* @BMCR_FDX, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %73 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IFM_FLOW, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %68
  %79 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %80 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78, %68
  %86 = load i32, i32* @ANAR_PAUSE_TOWARDS, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %85, %78
  br label %90

90:                                               ; preds = %89, %59
  %91 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %92 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @EXTSR_1000TFDX, align 4
  %95 = load i32, i32* @EXTSR_1000THDX, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %101 = load i32, i32* @MII_100T2CR, align 4
  %102 = call i32 @PHY_WRITE(%struct.mii_softc* %100, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %99, %90
  %104 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %105 = load i32, i32* @MII_ANAR, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @ANAR_CSMA, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @PHY_WRITE(%struct.mii_softc* %104, i32 %105, i32 %108)
  %110 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %111 = load i32, i32* @MII_BMCR, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @BMCR_RESET, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @BMCR_AUTOEN, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @BMCR_STARTNEG, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @PHY_WRITE(%struct.mii_softc* %110, i32 %111, i32 %118)
  br label %120

120:                                              ; preds = %103, %47
  br label %170

121:                                              ; preds = %3
  %122 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %123 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @IFM_SUBTYPE(i32 %124)
  %126 = load i32, i32* @IFM_AUTO, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %130 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %129, i32 0, i32 2
  store i32 0, i32* %130, align 4
  br label %170

131:                                              ; preds = %121
  %132 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %133 = load i32, i32* @MII_BMSR, align 4
  %134 = call i32 @PHY_READ(%struct.mii_softc* %132, i32 %133)
  %135 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %136 = load i32, i32* @MII_BMSR, align 4
  %137 = call i32 @PHY_READ(%struct.mii_softc* %135, i32 %136)
  %138 = or i32 %134, %137
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @BMSR_LINK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %145 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %144, i32 0, i32 2
  store i32 0, i32* %145, align 4
  br label %170

146:                                              ; preds = %131
  %147 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %148 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = icmp eq i32 %149, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %170

153:                                              ; preds = %146
  %154 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %155 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %158 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = icmp sle i32 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %176

162:                                              ; preds = %153
  %163 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %164 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %163, i32 0, i32 2
  store i32 0, i32* %164, align 4
  %165 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %166 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %167 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @atphy_setmedia(%struct.mii_softc* %165, i32 %168)
  br label %170

170:                                              ; preds = %3, %162, %152, %143, %128, %120, %32, %17
  %171 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %172 = call i32 @PHY_STATUS(%struct.mii_softc* %171)
  %173 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @mii_phy_update(%struct.mii_softc* %173, i32 %174)
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %170, %161, %57
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @atphy_setmedia(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @atphy_anar(%struct.ifmedia_entry*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
