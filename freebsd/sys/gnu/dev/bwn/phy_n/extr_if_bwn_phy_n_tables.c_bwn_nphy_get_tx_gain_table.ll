; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_get_tx_gain_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_get_tx_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.bwn_phy }
%struct.bwn_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.bwn_phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@bwn_ntab_tx_gain_rev0_1_2 = common dso_local global i32* null, align 8
@bwn_ntab_tx_gain_epa_rev5_5g = common dso_local global i32* null, align 8
@BHND_NVAR_EXTPAGAIN5G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Error reading EPA gain configuration (%s) from NVRAM: %d\0A\00", align 1
@bwn_ntab_tx_gain_epa_rev4_5g = common dso_local global i32* null, align 8
@bwn_ntab_tx_gain_epa_rev4_hi_pwr_5g = common dso_local global i32* null, align 8
@bwn_ntab_tx_gain_epa_rev3_5g = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"No 5GHz EPA gain table available for this device\0A\00", align 1
@BHND_NVAR_EXTPAGAIN2G = common dso_local global i32 0, align 4
@bwn_ntab_tx_gain_epa_rev3_hi_pwr_2g = common dso_local global i32* null, align 8
@bwn_ntab_tx_gain_epa_rev3_2g = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"No 2GHz EPA gain table available for this device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bwn_nphy_get_tx_gain_table(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.bwn_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %11, align 8
  %13 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %12, i32 0, i32 1
  store %struct.ieee80211com* %13, %struct.ieee80211com** %4, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 0
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %15, align 8
  store %struct.bwn_softc* %16, %struct.bwn_softc** %5, align 8
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %18 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %17, i32 0, i32 1
  store %struct.bwn_phy* %18, %struct.bwn_phy** %6, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IEEE80211_IS_CHAN_5GHZ(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %28 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32*, i32** @bwn_ntab_tx_gain_rev0_1_2, align 8
  store i32* %33, i32** %2, align 8
  br label %131

34:                                               ; preds = %1
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %36 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %47 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %42
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %58 = call i32* @bwn_nphy_get_ipa_gain_table(%struct.bwn_mac* %57)
  store i32* %58, i32** %2, align 8
  br label %131

59:                                               ; preds = %53, %45
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %99

62:                                               ; preds = %59
  %63 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %64 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %94 [
    i32 6, label %66
    i32 5, label %66
    i32 4, label %68
    i32 3, label %92
  ]

66:                                               ; preds = %62, %62
  %67 = load i32*, i32** @bwn_ntab_tx_gain_epa_rev5_5g, align 8
  store i32* %67, i32** %2, align 8
  br label %131

68:                                               ; preds = %62
  %69 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %70 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BHND_NVAR_EXTPAGAIN5G, align 4
  %73 = call i32 @bhnd_nvram_getvar_uint8(i32 %71, i32 %72, i32* %9)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %78 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %77, i32 0, i32 0
  %79 = load %struct.bwn_softc*, %struct.bwn_softc** %78, align 8
  %80 = load i32, i32* @BHND_NVAR_EXTPAGAIN5G, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (%struct.bwn_softc*, i8*, ...) @BWN_ERRPRINTF(%struct.bwn_softc* %79, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  store i32* null, i32** %2, align 8
  br label %131

83:                                               ; preds = %68
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32*, i32** @bwn_ntab_tx_gain_epa_rev4_5g, align 8
  br label %90

88:                                               ; preds = %83
  %89 = load i32*, i32** @bwn_ntab_tx_gain_epa_rev4_hi_pwr_5g, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32* [ %87, %86 ], [ %89, %88 ]
  store i32* %91, i32** %2, align 8
  br label %131

92:                                               ; preds = %62
  %93 = load i32*, i32** @bwn_ntab_tx_gain_epa_rev3_5g, align 8
  store i32* %93, i32** %2, align 8
  br label %131

94:                                               ; preds = %62
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %96 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %95, i32 0, i32 0
  %97 = load %struct.bwn_softc*, %struct.bwn_softc** %96, align 8
  %98 = call i32 (%struct.bwn_softc*, i8*, ...) @BWN_ERRPRINTF(%struct.bwn_softc* %97, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %131

99:                                               ; preds = %59
  %100 = load %struct.bwn_phy*, %struct.bwn_phy** %6, align 8
  %101 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %126 [
    i32 6, label %103
    i32 5, label %103
    i32 4, label %124
    i32 3, label %124
  ]

103:                                              ; preds = %99, %99
  %104 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %105 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @BHND_NVAR_EXTPAGAIN2G, align 4
  %108 = call i32 @bhnd_nvram_getvar_uint8(i32 %106, i32 %107, i32* %9)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %113 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %112, i32 0, i32 0
  %114 = load %struct.bwn_softc*, %struct.bwn_softc** %113, align 8
  %115 = load i32, i32* @BHND_NVAR_EXTPAGAIN2G, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (%struct.bwn_softc*, i8*, ...) @BWN_ERRPRINTF(%struct.bwn_softc* %114, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116)
  store i32* null, i32** %2, align 8
  br label %131

118:                                              ; preds = %103
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32*, i32** @bwn_ntab_tx_gain_epa_rev3_hi_pwr_2g, align 8
  store i32* %122, i32** %2, align 8
  br label %131

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %99, %99, %123
  %125 = load i32*, i32** @bwn_ntab_tx_gain_epa_rev3_2g, align 8
  store i32* %125, i32** %2, align 8
  br label %131

126:                                              ; preds = %99
  %127 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %128 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %127, i32 0, i32 0
  %129 = load %struct.bwn_softc*, %struct.bwn_softc** %128, align 8
  %130 = call i32 (%struct.bwn_softc*, i8*, ...) @BWN_ERRPRINTF(%struct.bwn_softc* %129, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %131

131:                                              ; preds = %126, %124, %121, %111, %94, %92, %90, %76, %66, %56, %32
  %132 = load i32*, i32** %2, align 8
  ret i32* %132
}

declare dso_local i32 @IEEE80211_IS_CHAN_5GHZ(i32) #1

declare dso_local i32* @bwn_nphy_get_ipa_gain_table(%struct.bwn_mac*) #1

declare dso_local i32 @bhnd_nvram_getvar_uint8(i32, i32, i32*) #1

declare dso_local i32 @BWN_ERRPRINTF(%struct.bwn_softc*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
