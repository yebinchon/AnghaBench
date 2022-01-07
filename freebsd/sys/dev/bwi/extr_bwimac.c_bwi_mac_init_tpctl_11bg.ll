; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_init_tpctl_11bg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_init_tpctl_11bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, i32, %struct.bwi_rf, %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_rf = type { i64, i32, i64, i64 }
%struct.bwi_phy = type { i64, i32, i32 }
%struct.bwi_softc = type { i32 }
%struct.bwi_tpctl = type { i32, i32, i64 }

@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"phy_mode %d\00", align 1
@BWI_BBP_ATTEN = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@BWI_PHY_F_LINKED = common dso_local global i32 0, align 4
@BWI_MAC_F_TPCTL_INITED = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@BWI_DBG_MAC = common dso_local global i32 0, align 4
@BWI_DBG_INIT = common dso_local global i32 0, align 4
@BWI_DBG_TXPOWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"base tssi %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"base tssi measure failed\0A\00", align 1
@BWI_MAC_F_TPCTL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_mac_init_tpctl_11bg(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_phy*, align 8
  %5 = alloca %struct.bwi_rf*, align 8
  %6 = alloca %struct.bwi_tpctl, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bwi_tpctl, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %9 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %9, i32 0, i32 4
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %10, align 8
  store %struct.bwi_softc* %11, %struct.bwi_softc** %3, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 3
  store %struct.bwi_phy* %13, %struct.bwi_phy** %4, align 8
  %14 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %15 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %14, i32 0, i32 2
  store %struct.bwi_rf* %15, %struct.bwi_rf** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %17 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %23 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %21, i8* %25)
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %28 = call i64 @BWI_IS_BRCM_BU4306(%struct.bwi_softc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %146

31:                                               ; preds = %1
  %32 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %33 = call i32 @PHY_WRITE(%struct.bwi_mac* %32, i32 40, i32 32792)
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %35 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %36 = call i32 @CSR_CLRBITS_2(%struct.bwi_softc* %34, i32 %35, i32 32)
  %37 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %38 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %44 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %146

50:                                               ; preds = %42
  %51 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %52 = call i32 @PHY_WRITE(%struct.bwi_mac* %51, i32 1146, i32 49425)
  br label %53

53:                                               ; preds = %50, %31
  %54 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %55 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BWI_MAC_F_TPCTL_INITED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %146

61:                                               ; preds = %53
  %62 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %63 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %69 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %70, 2
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %74 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %80 = call i32 @RF_SETBITS(%struct.bwi_mac* %79, i32 118, i32 132)
  br label %93

81:                                               ; preds = %72, %67, %61
  %82 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %83 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %82, i32 0, i32 1
  %84 = call i32 @bcopy(i32* %83, %struct.bwi_tpctl* %6, i32 16)
  store i32 1, i32* %7, align 4
  %85 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %86 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %85, i32 0, i32 1
  %87 = call i32 @bcopy(i32* %86, %struct.bwi_tpctl* %8, i32 16)
  %88 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %8, i32 0, i32 0
  store i32 11, i32* %88, align 8
  %89 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %8, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %8, i32 0, i32 1
  store i32 9, i32* %90, align 4
  %91 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %92 = call i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac* %91, %struct.bwi_tpctl* %8)
  br label %93

93:                                               ; preds = %81, %78
  %94 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %95 = call i32 @bwi_mac_dummy_xmit(%struct.bwi_mac* %94)
  %96 = load i32, i32* @BWI_MAC_F_TPCTL_INITED, align 4
  %97 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %98 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %102 = call i64 @PHY_READ(%struct.bwi_mac* %101, i32 41)
  %103 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %104 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %106 = load i32, i32* @BWI_DBG_MAC, align 4
  %107 = load i32, i32* @BWI_DBG_INIT, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %112 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @DPRINTF(%struct.bwi_softc* %105, i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %113)
  %115 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %116 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %119 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  %122 = call i32 @abs(i64 %121)
  %123 = icmp sge i32 %122, 20
  br i1 %123, label %124, label %134

124:                                              ; preds = %93
  %125 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %126 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* @BWI_MAC_F_TPCTL_ERROR, align 4
  %130 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %131 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %124, %93
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %139 = call i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac* %138, %struct.bwi_tpctl* %6)
  br label %143

140:                                              ; preds = %134
  %141 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %142 = call i32 @RF_CLRBITS(%struct.bwi_mac* %141, i32 118, i32 132)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %145 = call i32 @bwi_rf_clear_tssi(%struct.bwi_mac* %144)
  br label %146

146:                                              ; preds = %143, %60, %49, %30
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @BWI_IS_BRCM_BU4306(%struct.bwi_softc*) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @CSR_CLRBITS_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @RF_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, %struct.bwi_tpctl*, i32) #1

declare dso_local i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac*, %struct.bwi_tpctl*) #1

declare dso_local i32 @bwi_mac_dummy_xmit(%struct.bwi_mac*) #1

declare dso_local i64 @PHY_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i64) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RF_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_rf_clear_tssi(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
