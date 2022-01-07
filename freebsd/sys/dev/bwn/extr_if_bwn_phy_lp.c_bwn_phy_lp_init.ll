; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_stxtable = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bwn_mac = type { %struct.TYPE_2__, %struct.bwn_softc* }
%struct.TYPE_2__ = type { i32, i32, %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i32 }
%struct.bwn_softc = type { i32, i32*, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@bwn_phy_lp_init.tables = internal constant [29 x %struct.bwn_stxtable] [%struct.bwn_stxtable { i32 2, i32 6, i32 61, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 1, i32 12, i32 76, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 1, i32 8, i32 80, i32 0, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 0, i32 8, i32 68, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 1, i32 0, i32 74, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 0, i32 4, i32 77, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 1, i32 4, i32 78, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 0, i32 12, i32 79, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 1, i32 0, i32 79, i32 4, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 3, i32 0, i32 73, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 4, i32 3, i32 70, i32 4, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 3, i32 15, i32 70, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 4, i32 0, i32 70, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 3, i32 8, i32 72, i32 4, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 3, i32 11, i32 72, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 3, i32 4, i32 73, i32 4, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 2, i32 15, i32 69, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 5, i32 13, i32 82, i32 4, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 6, i32 0, i32 82, i32 7, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 5, i32 3, i32 65, i32 5, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 5, i32 6, i32 65, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 5, i32 10, i32 66, i32 5, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 4, i32 15, i32 66, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 5, i32 0, i32 66, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 4, i32 11, i32 67, i32 4, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 4, i32 7, i32 67, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 4, i32 6, i32 69, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 2, i32 7, i32 64, i32 4, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.bwn_stxtable { i32 2, i32 11, i32 64, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [36 x i8] c"no PMU; cannot configure PAREF LDO\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BWN_PHY_4WIRECTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to change channel 7 (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwn_phy_lp_init(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_phy_lp*, align 8
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.bwn_stxtable*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store %struct.bwn_phy_lp* %13, %struct.bwn_phy_lp** %4, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 1
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %15, align 8
  store %struct.bwn_softc* %16, %struct.bwn_softc** %5, align 8
  %17 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %18 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %17, i32 0, i32 2
  store %struct.ieee80211com* %18, %struct.ieee80211com** %7, align 8
  %19 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %20 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %25 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %166

29:                                               ; preds = %1
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %31 = call i32 @bwn_phy_lp_readsprom(%struct.bwn_mac* %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %2, align 4
  br label %166

35:                                               ; preds = %29
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %37 = call i32 @bwn_phy_lp_bbinit(%struct.bwn_mac* %36)
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %39 = load i32, i32* @BWN_PHY_4WIRECTL, align 4
  %40 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %38, i32 %39, i32 2)
  %41 = call i32 @DELAY(i32 1)
  %42 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %43 = load i32, i32* @BWN_PHY_4WIRECTL, align 4
  %44 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %42, i32 %43, i32 65533)
  %45 = call i32 @DELAY(i32 1)
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %47 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 8290
  br i1 %50, label %51, label %58

51:                                               ; preds = %35
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %53 = call i32 @bwn_phy_lp_b2062_init(%struct.bwn_mac* %52)
  store i32 %53, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %166

57:                                               ; preds = %51
  br label %114

58:                                               ; preds = %35
  %59 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %60 = call i32 @bwn_phy_lp_b2063_init(%struct.bwn_mac* %59)
  store i32 %60, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %166

64:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %104, %64
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @N(%struct.bwn_stxtable* getelementptr inbounds ([29 x %struct.bwn_stxtable], [29 x %struct.bwn_stxtable]* @bwn_phy_lp_init.tables, i64 0, i64 0))
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [29 x %struct.bwn_stxtable], [29 x %struct.bwn_stxtable]* @bwn_phy_lp_init.tables, i64 0, i64 %71
  store %struct.bwn_stxtable* %72, %struct.bwn_stxtable** %6, align 8
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %74 = load %struct.bwn_stxtable*, %struct.bwn_stxtable** %6, align 8
  %75 = getelementptr inbounds %struct.bwn_stxtable, %struct.bwn_stxtable* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @BWN_RF_READ(%struct.bwn_mac* %73, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.bwn_stxtable*, %struct.bwn_stxtable** %6, align 8
  %79 = getelementptr inbounds %struct.bwn_stxtable, %struct.bwn_stxtable* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.bwn_stxtable*, %struct.bwn_stxtable** %6, align 8
  %84 = getelementptr inbounds %struct.bwn_stxtable, %struct.bwn_stxtable* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = shl i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %89 = load %struct.bwn_stxtable*, %struct.bwn_stxtable** %6, align 8
  %90 = getelementptr inbounds %struct.bwn_stxtable, %struct.bwn_stxtable* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 242, %91
  %93 = call i32 @BWN_PHY_OFDM(i32 %92)
  %94 = load %struct.bwn_stxtable*, %struct.bwn_stxtable** %6, align 8
  %95 = getelementptr inbounds %struct.bwn_stxtable, %struct.bwn_stxtable* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bwn_stxtable*, %struct.bwn_stxtable** %6, align 8
  %98 = getelementptr inbounds %struct.bwn_stxtable, %struct.bwn_stxtable* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %96, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %88, i32 %93, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %69
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %65

107:                                              ; preds = %65
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %109 = call i32 @BWN_PHY_OFDM(i32 240)
  %110 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %108, i32 %109, i32 24448)
  %111 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %112 = call i32 @BWN_PHY_OFDM(i32 241)
  %113 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %111, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %107, %57
  %115 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %116 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 2
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %122 = call i32 @bwn_phy_lp_rxcal_r2(%struct.bwn_mac* %121)
  store i32 %122, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %2, align 4
  br label %166

126:                                              ; preds = %120
  br label %150

127:                                              ; preds = %114
  %128 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %4, align 8
  %129 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %127
  %133 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %140 = call i32 @bwn_phy_lp_rccal_r12(%struct.bwn_mac* %139)
  store i32 %140, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %2, align 4
  br label %166

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %132
  br label %149

146:                                              ; preds = %127
  %147 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %148 = call i32 @bwn_phy_lp_set_rccap(%struct.bwn_mac* %147)
  br label %149

149:                                              ; preds = %146, %145
  br label %150

150:                                              ; preds = %149, %126
  %151 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %152 = call i32 @bwn_phy_lp_switch_channel(%struct.bwn_mac* %151, i32 7)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %157 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 (i32, i8*, ...) @device_printf(i32 %158, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %155, %150
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %163 = call i32 @bwn_phy_lp_txpctl_init(%struct.bwn_mac* %162)
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %165 = call i32 @bwn_phy_lp_calib(%struct.bwn_mac* %164)
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %161, %142, %124, %62, %55, %33, %23
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bwn_phy_lp_readsprom(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_bbinit(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_b2062_init(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_b2063_init(%struct.bwn_mac*) #1

declare dso_local i32 @N(%struct.bwn_stxtable*) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_OFDM(i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_rxcal_r2(%struct.bwn_mac*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @bwn_phy_lp_rccal_r12(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_set_rccap(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_switch_channel(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_txpctl_init(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_calib(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
