; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_physubr.c_mii_phy_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@MIIF_IS_1000X = common dso_local global i32 0, align 4
@EXTSR_1000XFDX = common dso_local global i32 0, align 4
@ANAR_X_FD = common dso_local global i32 0, align 4
@EXTSR_1000XHDX = common dso_local global i32 0, align 4
@ANAR_X_HD = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@MIIF_FORCEPAUSE = common dso_local global i32 0, align 4
@ANAR_X_PAUSE_TOWARDS = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@ANAR_CSMA = common dso_local global i32 0, align 4
@BMSR_10TFDX = common dso_local global i32 0, align 4
@BMSR_100TXFDX = common dso_local global i32 0, align 4
@ANAR_FC = common dso_local global i32 0, align 4
@MIIF_HAVE_GTCR = common dso_local global i32 0, align 4
@EXTSR_1000THDX = common dso_local global i32 0, align 4
@EXTSR_1000TFDX = common dso_local global i32 0, align 4
@ANAR_X_PAUSE_ASYM = common dso_local global i32 0, align 4
@GTCR_ADV_1000TFDX = common dso_local global i32 0, align 4
@GTCR_ADV_1000THDX = common dso_local global i32 0, align 4
@MII_100T2CR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMCR_STARTNEG = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_phy_auto(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.ifmedia_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %10, align 8
  store %struct.ifmedia_entry* %11, %struct.ifmedia_entry** %3, align 8
  %12 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MIIF_IS_1000X, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EXTSR_1000XFDX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @ANAR_X_FD, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %31 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EXTSR_1000XHDX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @ANAR_X_HD, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %42 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFM_FLOW, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47, %40
  %55 = load i32, i32* @ANAR_X_PAUSE_TOWARDS, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %60 = load i32, i32* @MII_ANAR, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @PHY_WRITE(%struct.mii_softc* %59, i32 %60, i32 %61)
  br label %156

63:                                               ; preds = %1
  %64 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %65 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @BMSR_MEDIA_TO_ANAR(i32 %66)
  %68 = load i32, i32* @ANAR_CSMA, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %4, align 4
  %70 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %3, align 8
  %71 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFM_FLOW, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %63
  %77 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %78 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %76, %63
  %84 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %85 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BMSR_10TFDX, align 4
  %88 = load i32, i32* @BMSR_100TXFDX, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @ANAR_FC, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %83
  %97 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %98 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MIIF_HAVE_GTCR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %96
  %104 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %105 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @EXTSR_1000THDX, align 4
  %108 = load i32, i32* @EXTSR_1000TFDX, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load i32, i32* @ANAR_X_PAUSE_ASYM, align 4
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %103, %96
  br label %117

117:                                              ; preds = %116, %76
  %118 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %119 = load i32, i32* @MII_ANAR, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @PHY_WRITE(%struct.mii_softc* %118, i32 %119, i32 %120)
  %122 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %123 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MIIF_HAVE_GTCR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  %129 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %130 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @EXTSR_1000TFDX, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* @GTCR_ADV_1000TFDX, align 4
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %135, %128
  %140 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %141 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @EXTSR_1000THDX, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i32, i32* @GTCR_ADV_1000THDX, align 4
  %148 = load i32, i32* %5, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %139
  %151 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %152 = load i32, i32* @MII_100T2CR, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @PHY_WRITE(%struct.mii_softc* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %117
  br label %156

156:                                              ; preds = %155, %58
  %157 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %158 = load i32, i32* @MII_BMCR, align 4
  %159 = load i32, i32* @BMCR_AUTOEN, align 4
  %160 = load i32, i32* @BMCR_STARTNEG, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @PHY_WRITE(%struct.mii_softc* %157, i32 %158, i32 %161)
  %163 = load i32, i32* @EJUSTRETURN, align 4
  ret i32 %163
}

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @BMSR_MEDIA_TO_ANAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
