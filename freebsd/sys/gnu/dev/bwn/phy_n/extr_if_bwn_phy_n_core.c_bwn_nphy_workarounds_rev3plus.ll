; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_workarounds_rev3plus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_workarounds_rev3plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_4__, %struct.bwn_softc* }
%struct.TYPE_4__ = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32, i32 }
%struct.bwn_softc = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@__const.bwn_nphy_workarounds_rev3plus.tx2rx_events = private unnamed_addr constant [7 x i32] [i32 4, i32 3, i32 5, i32 2, i32 1, i32 8, i32 31], align 16
@__const.bwn_nphy_workarounds_rev3plus.tx2rx_delays = private unnamed_addr constant [7 x i32] [i32 8, i32 4, i32 4, i32 4, i32 4, i32 6, i32 1], align 16
@__const.bwn_nphy_workarounds_rev3plus.rx2tx_events_ipa = private unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 8, i32 5, i32 6, i32 15, i32 3, i32 31], align 16
@__const.bwn_nphy_workarounds_rev3plus.rx2tx_delays_ipa = private unnamed_addr constant [9 x i32] [i32 8, i32 6, i32 6, i32 4, i32 4, i32 16, i32 43, i32 1, i32 1], align 16
@__const.bwn_nphy_workarounds_rev3plus.rx2tx_events = private unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 8, i32 5, i32 6, i32 3, i32 4, i32 31], align 16
@__const.bwn_nphy_workarounds_rev3plus.rx2tx_delays = private unnamed_addr constant [9 x i32] [i32 8, i32 6, i32 6, i32 4, i32 4, i32 18, i32 42, i32 1, i32 1], align 16
@__const.bwn_nphy_workarounds_rev3plus.vmids = private unnamed_addr constant [5 x [4 x i32]] [[4 x i32] [i32 162, i32 180, i32 180, i32 137], [4 x i32] [i32 180, i32 180, i32 180, i32 36], [4 x i32] [i32 162, i32 180, i32 180, i32 116], [4 x i32] [i32 162, i32 180, i32 180, i32 624], [4 x i32] [i32 162, i32 180, i32 180, i32 0]], align 16
@__const.bwn_nphy_workarounds_rev3plus.gains = private unnamed_addr constant [5 x [4 x i32]] [[4 x i32] [i32 2, i32 2, i32 2, i32 0], [4 x i32] [i32 2, i32 2, i32 2, i32 2], [4 x i32] [i32 2, i32 2, i32 2, i32 4], [4 x i32] [i32 2, i32 2, i32 2, i32 0], [4 x i32] [i32 2, i32 2, i32 2, i32 0]], align 16
@BWN_NPHY_FORCEFRONT0 = common dso_local global i32 0, align 4
@BWN_NPHY_FORCEFRONT1 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_A0 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_A1 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_A2 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_B0 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_B1 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_B2 = common dso_local global i32 0, align 4
@BWN_NPHY_REV3_C1_CLIP_LOGAIN_B = common dso_local global i32 0, align 4
@BWN_NPHY_REV3_C2_CLIP_LOGAIN_B = common dso_local global i32 0, align 4
@BWN_BAND_2G = common dso_local global i64 0, align 8
@BWN_NPHY_ENDROP_TLEN = common dso_local global i32 0, align 4
@BWN_NPHY_SGILTRNOFFSET = common dso_local global i32 0, align 4
@BHND_NVAR_PDETRANGE2G = common dso_local global i8* null, align 8
@BHND_NVAR_PDETRANGE5G = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"Error reading PDet range %s from NVRAM: %d\0A\00", align 1
@B2056_RX0 = common dso_local global i32 0, align 4
@B2056_RX_MIXA_MAST_BIAS = common dso_local global i32 0, align 4
@B2056_RX1 = common dso_local global i32 0, align 4
@B2056_RX_MIXA_BIAS_MAIN = common dso_local global i32 0, align 4
@B2056_RX_MIXA_BIAS_AUX = common dso_local global i32 0, align 4
@B2056_RX_MIXA_LOB_BIAS = common dso_local global i32 0, align 4
@B2056_RX_MIXA_CMFB_IDAC = common dso_local global i32 0, align 4
@B2056_RX_MIXG_CMFB_IDAC = common dso_local global i32 0, align 4
@BHND_BFL2_APLL_WAR = common dso_local global i32 0, align 4
@BWN_BAND_5G = common dso_local global i64 0, align 8
@BHND_BFL2_GPLL_WAR2 = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX_GMBB_IDAC = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS40ASSERTTHRESH0 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS40ASSERTTHRESH1 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS40DEASSERTTHRESH0 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS40DEASSERTTHRESH1 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS20LASSERTTHRESH0 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS20LASSERTTHRESH1 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS20LDEASSERTTHRESH0 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS20LDEASSERTTHRESH1 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS20UASSERTTHRESH0 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS20UASSERTTHRESH1 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS20UDEASSERTTHRESH0 = common dso_local global i32 0, align 4
@BWN_NPHY_ED_CRS20UDEASSERTTHRESH1 = common dso_local global i32 0, align 4
@BHND_BFL2_SINGLEANT_CCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_nphy_workarounds_rev3plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_workarounds_rev3plus(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca %struct.bwn_phy_n*, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca [7 x i32], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [9 x i32], align 16
  %10 = alloca [9 x i32], align 16
  %11 = alloca [9 x i32], align 16
  %12 = alloca [5 x [4 x i32]], align 16
  %13 = alloca [5 x [4 x i32]], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %22 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %21, i32 0, i32 1
  %23 = load %struct.bwn_softc*, %struct.bwn_softc** %22, align 8
  store %struct.bwn_softc* %23, %struct.bwn_softc** %4, align 8
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %25 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %26, align 8
  store %struct.bwn_phy_n* %27, %struct.bwn_phy_n** %5, align 8
  %28 = bitcast [7 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([7 x i32]* @__const.bwn_nphy_workarounds_rev3plus.tx2rx_events to i8*), i64 28, i1 false)
  %29 = bitcast [7 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([7 x i32]* @__const.bwn_nphy_workarounds_rev3plus.tx2rx_delays to i8*), i64 28, i1 false)
  %30 = bitcast [9 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([9 x i32]* @__const.bwn_nphy_workarounds_rev3plus.rx2tx_events_ipa to i8*), i64 36, i1 false)
  %31 = bitcast [9 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([9 x i32]* @__const.bwn_nphy_workarounds_rev3plus.rx2tx_delays_ipa to i8*), i64 36, i1 false)
  %32 = bitcast [9 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([9 x i32]* @__const.bwn_nphy_workarounds_rev3plus.rx2tx_events to i8*), i64 36, i1 false)
  %33 = bitcast [9 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([9 x i32]* @__const.bwn_nphy_workarounds_rev3plus.rx2tx_delays to i8*), i64 36, i1 false)
  %34 = bitcast [5 x [4 x i32]]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([5 x [4 x i32]]* @__const.bwn_nphy_workarounds_rev3plus.vmids to i8*), i64 80, i1 false)
  %35 = bitcast [5 x [4 x i32]]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %35, i8* align 16 bitcast ([5 x [4 x i32]]* @__const.bwn_nphy_workarounds_rev3plus.gains to i8*), i64 80, i1 false)
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %37 = load i32, i32* @BWN_NPHY_FORCEFRONT0, align 4
  %38 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %36, i32 %37, i32 504)
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %40 = load i32, i32* @BWN_NPHY_FORCEFRONT1, align 4
  %41 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %39, i32 %40, i32 504)
  %42 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %43 = call i32 @BWN_NTAB32(i32 30, i32 0)
  %44 = call i32 @bwn_ntab_read(%struct.bwn_mac* %42, i32 %43)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = and i32 %45, 16777215
  store i32 %46, i32* %19, align 4
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %48 = call i32 @BWN_NTAB32(i32 30, i32 0)
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @bwn_ntab_write(%struct.bwn_mac* %47, i32 %48, i32 %49)
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %52 = load i32, i32* @BWN_NPHY_PHASETR_A0, align 4
  %53 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %51, i32 %52, i32 293)
  %54 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %55 = load i32, i32* @BWN_NPHY_PHASETR_A1, align 4
  %56 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %54, i32 %55, i32 435)
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %58 = load i32, i32* @BWN_NPHY_PHASETR_A2, align 4
  %59 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %57, i32 %58, i32 261)
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %61 = load i32, i32* @BWN_NPHY_PHASETR_B0, align 4
  %62 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %60, i32 %61, i32 366)
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %64 = load i32, i32* @BWN_NPHY_PHASETR_B1, align 4
  %65 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %63, i32 %64, i32 205)
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %67 = load i32, i32* @BWN_NPHY_PHASETR_B2, align 4
  %68 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %66, i32 %67, i32 32)
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %70 = load i32, i32* @BWN_NPHY_REV3_C1_CLIP_LOGAIN_B, align 4
  %71 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %69, i32 %70, i32 12)
  %72 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %73 = load i32, i32* @BWN_NPHY_REV3_C2_CLIP_LOGAIN_B, align 4
  %74 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %72, i32 %73, i32 12)
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %76 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %77 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %78 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %79 = call i32 @nitems(i32* %78)
  %80 = call i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac* %75, i32 1, i32* %76, i32* %77, i32 %79)
  %81 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %82 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %1
  %85 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %86 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %88 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %89 = call i32 @nitems(i32* %88)
  %90 = call i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac* %85, i32 0, i32* %86, i32* %87, i32 %89)
  br label %91

91:                                               ; preds = %84, %1
  %92 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %93 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 3
  br i1 %95, label %96, label %119

96:                                               ; preds = %91
  %97 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %98 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %101 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %96
  %105 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %106 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 5
  store i32 59, i32* %109, align 4
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 6
  store i32 1, i32* %110, align 8
  %111 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 7
  store i32 31, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %114 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %115 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %117 = call i32 @nitems(i32* %116)
  %118 = call i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac* %113, i32 0, i32* %114, i32* %115, i32 %117)
  br label %119

119:                                              ; preds = %112, %96, %91
  %120 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %121 = call i64 @bwn_current_band(%struct.bwn_mac* %120)
  %122 = load i64, i64* @BWN_BAND_2G, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 2, i32 40000
  store i32 %125, i32* %18, align 4
  %126 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %127 = load i32, i32* @BWN_NPHY_ENDROP_TLEN, align 4
  %128 = load i32, i32* %18, align 4
  %129 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %126, i32 %127, i32 %128)
  %130 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %131 = load i32, i32* @BWN_NPHY_SGILTRNOFFSET, align 4
  %132 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %130, i32 %131, i32 61695, i32 1792)
  %133 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %134 = call i32 @bwn_is_40mhz(%struct.bwn_mac* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %119
  %137 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %138 = call i32 @BWN_NTAB32(i32 16, i32 3)
  %139 = call i32 @bwn_ntab_write(%struct.bwn_mac* %137, i32 %138, i32 397)
  %140 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %141 = call i32 @BWN_NTAB32(i32 16, i32 127)
  %142 = call i32 @bwn_ntab_write(%struct.bwn_mac* %140, i32 %141, i32 397)
  br label %150

143:                                              ; preds = %119
  %144 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %145 = call i32 @BWN_NTAB32(i32 16, i32 3)
  %146 = call i32 @bwn_ntab_write(%struct.bwn_mac* %144, i32 %145, i32 333)
  %147 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %148 = call i32 @BWN_NTAB32(i32 16, i32 127)
  %149 = call i32 @bwn_ntab_write(%struct.bwn_mac* %147, i32 %148, i32 333)
  br label %150

150:                                              ; preds = %143, %136
  %151 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %152 = call i32 @bwn_nphy_gain_ctl_workarounds(%struct.bwn_mac* %151)
  %153 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %154 = call i32 @BWN_NTAB16(i32 8, i32 0)
  %155 = call i32 @bwn_ntab_write(%struct.bwn_mac* %153, i32 %154, i32 2)
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %157 = call i32 @BWN_NTAB16(i32 8, i32 16)
  %158 = call i32 @bwn_ntab_write(%struct.bwn_mac* %156, i32 %157, i32 2)
  %159 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %160 = call i64 @bwn_current_band(%struct.bwn_mac* %159)
  %161 = load i64, i64* @BWN_BAND_2G, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %150
  %164 = load i8*, i8** @BHND_NVAR_PDETRANGE2G, align 8
  store i8* %164, i8** %16, align 8
  br label %167

165:                                              ; preds = %150
  %166 = load i8*, i8** @BHND_NVAR_PDETRANGE5G, align 8
  store i8* %166, i8** %16, align 8
  br label %167

167:                                              ; preds = %165, %163
  %168 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %169 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %16, align 8
  %172 = call i32 @bhnd_nvram_getvar_uint8(i32 %170, i8* %171, i32* %17)
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %167
  %176 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %177 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %176, i32 0, i32 1
  %178 = load %struct.bwn_softc*, %struct.bwn_softc** %177, align 8
  %179 = load i8*, i8** %16, align 8
  %180 = load i32, i32* %20, align 4
  %181 = call i32 @BWN_ERRPRINTF(%struct.bwn_softc* %178, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %179, i32 %180)
  %182 = load i32, i32* %20, align 4
  store i32 %182, i32* %2, align 4
  br label %499

183:                                              ; preds = %167
  %184 = load i32, i32* %17, align 4
  %185 = call i64 @min(i32 %184, i32 4)
  %186 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %12, i64 0, i64 %185
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %186, i64 0, i64 0
  store i32* %187, i32** %14, align 8
  %188 = load i32, i32* %17, align 4
  %189 = call i64 @min(i32 %188, i32 4)
  %190 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %13, i64 0, i64 %189
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %190, i64 0, i64 0
  store i32* %191, i32** %15, align 8
  %192 = load i32, i32* %17, align 4
  switch i32 %192, label %325 [
    i32 3, label %193
    i32 0, label %206
    i32 1, label %206
    i32 2, label %223
    i32 4, label %272
    i32 5, label %272
  ]

193:                                              ; preds = %183
  %194 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %195 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp sge i32 %197, 4
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %201 = call i64 @bwn_current_band(%struct.bwn_mac* %200)
  %202 = load i64, i64* @BWN_BAND_2G, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %205, label %204

204:                                              ; preds = %199, %193
  br label %325

205:                                              ; preds = %199
  br label %206

206:                                              ; preds = %183, %183, %205
  %207 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %208 = call i32 @BWN_NTAB16(i32 8, i32 8)
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %207, i32 %208, i32 4, i32* %209)
  %211 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %212 = call i32 @BWN_NTAB16(i32 8, i32 24)
  %213 = load i32*, i32** %14, align 8
  %214 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %211, i32 %212, i32 4, i32* %213)
  %215 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %216 = call i32 @BWN_NTAB16(i32 8, i32 12)
  %217 = load i32*, i32** %15, align 8
  %218 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %215, i32 %216, i32 4, i32* %217)
  %219 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %220 = call i32 @BWN_NTAB16(i32 8, i32 28)
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %219, i32 %220, i32 4, i32* %221)
  br label %325

223:                                              ; preds = %183
  %224 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %225 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp sge i32 %227, 6
  br i1 %228, label %229, label %243

229:                                              ; preds = %223
  %230 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %231 = call i64 @bwn_current_band(%struct.bwn_mac* %230)
  %232 = load i64, i64* @BWN_BAND_2G, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i32*, i32** %14, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  store i32 148, i32* %236, align 4
  br label %240

237:                                              ; preds = %229
  %238 = load i32*, i32** %14, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 3
  store i32 142, i32* %239, align 4
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i32*, i32** %15, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  store i32 3, i32* %242, align 4
  br label %255

243:                                              ; preds = %223
  %244 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %245 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 5
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load i32*, i32** %14, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 3
  store i32 132, i32* %251, align 4
  %252 = load i32*, i32** %15, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  store i32 2, i32* %253, align 4
  br label %254

254:                                              ; preds = %249, %243
  br label %255

255:                                              ; preds = %254, %240
  %256 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %257 = call i32 @BWN_NTAB16(i32 8, i32 8)
  %258 = load i32*, i32** %14, align 8
  %259 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %256, i32 %257, i32 4, i32* %258)
  %260 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %261 = call i32 @BWN_NTAB16(i32 8, i32 24)
  %262 = load i32*, i32** %14, align 8
  %263 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %260, i32 %261, i32 4, i32* %262)
  %264 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %265 = call i32 @BWN_NTAB16(i32 8, i32 12)
  %266 = load i32*, i32** %15, align 8
  %267 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %264, i32 %265, i32 4, i32* %266)
  %268 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %269 = call i32 @BWN_NTAB16(i32 8, i32 28)
  %270 = load i32*, i32** %15, align 8
  %271 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %268, i32 %269, i32 4, i32* %270)
  br label %325

272:                                              ; preds = %183, %183
  %273 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %274 = call i64 @bwn_current_band(%struct.bwn_mac* %273)
  %275 = load i64, i64* @BWN_BAND_2G, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %291

277:                                              ; preds = %272
  %278 = load i32, i32* %17, align 4
  %279 = icmp eq i32 %278, 4
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i32*, i32** %14, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 3
  store i32 142, i32* %282, align 4
  store i32 150, i32* %18, align 4
  %283 = load i32*, i32** %15, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 3
  store i32 2, i32* %284, align 4
  br label %290

285:                                              ; preds = %277
  %286 = load i32*, i32** %14, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 3
  store i32 137, i32* %287, align 4
  store i32 137, i32* %18, align 4
  %288 = load i32*, i32** %15, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 3
  store i32 0, i32* %289, align 4
  br label %290

290:                                              ; preds = %285, %280
  br label %305

291:                                              ; preds = %272
  %292 = load i32, i32* %17, align 4
  %293 = icmp eq i32 %292, 4
  br i1 %293, label %294, label %299

294:                                              ; preds = %291
  %295 = load i32*, i32** %14, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 3
  store i32 137, i32* %296, align 4
  store i32 139, i32* %18, align 4
  %297 = load i32*, i32** %15, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 3
  store i32 2, i32* %298, align 4
  br label %304

299:                                              ; preds = %291
  %300 = load i32*, i32** %14, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 3
  store i32 116, i32* %301, align 4
  store i32 112, i32* %18, align 4
  %302 = load i32*, i32** %15, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 3
  store i32 0, i32* %303, align 4
  br label %304

304:                                              ; preds = %299, %294
  br label %305

305:                                              ; preds = %304, %290
  %306 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %307 = call i32 @BWN_NTAB16(i32 8, i32 8)
  %308 = load i32*, i32** %14, align 8
  %309 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %306, i32 %307, i32 4, i32* %308)
  %310 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %311 = call i32 @BWN_NTAB16(i32 8, i32 12)
  %312 = load i32*, i32** %15, align 8
  %313 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %310, i32 %311, i32 4, i32* %312)
  %314 = load i32, i32* %18, align 4
  %315 = load i32*, i32** %14, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 3
  store i32 %314, i32* %316, align 4
  %317 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %318 = call i32 @BWN_NTAB16(i32 8, i32 24)
  %319 = load i32*, i32** %14, align 8
  %320 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %317, i32 %318, i32 4, i32* %319)
  %321 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %322 = call i32 @BWN_NTAB16(i32 8, i32 28)
  %323 = load i32*, i32** %15, align 8
  %324 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %321, i32 %322, i32 4, i32* %323)
  br label %325

325:                                              ; preds = %183, %305, %255, %206, %204
  %326 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %327 = load i32, i32* @B2056_RX0, align 4
  %328 = load i32, i32* @B2056_RX_MIXA_MAST_BIAS, align 4
  %329 = or i32 %327, %328
  %330 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %326, i32 %329, i32 0)
  %331 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %332 = load i32, i32* @B2056_RX1, align 4
  %333 = load i32, i32* @B2056_RX_MIXA_MAST_BIAS, align 4
  %334 = or i32 %332, %333
  %335 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %331, i32 %334, i32 0)
  %336 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %337 = load i32, i32* @B2056_RX0, align 4
  %338 = load i32, i32* @B2056_RX_MIXA_BIAS_MAIN, align 4
  %339 = or i32 %337, %338
  %340 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %336, i32 %339, i32 6)
  %341 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %342 = load i32, i32* @B2056_RX1, align 4
  %343 = load i32, i32* @B2056_RX_MIXA_BIAS_MAIN, align 4
  %344 = or i32 %342, %343
  %345 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %341, i32 %344, i32 6)
  %346 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %347 = load i32, i32* @B2056_RX0, align 4
  %348 = load i32, i32* @B2056_RX_MIXA_BIAS_AUX, align 4
  %349 = or i32 %347, %348
  %350 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %346, i32 %349, i32 7)
  %351 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %352 = load i32, i32* @B2056_RX1, align 4
  %353 = load i32, i32* @B2056_RX_MIXA_BIAS_AUX, align 4
  %354 = or i32 %352, %353
  %355 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %351, i32 %354, i32 7)
  %356 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %357 = load i32, i32* @B2056_RX0, align 4
  %358 = load i32, i32* @B2056_RX_MIXA_LOB_BIAS, align 4
  %359 = or i32 %357, %358
  %360 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %356, i32 %359, i32 136)
  %361 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %362 = load i32, i32* @B2056_RX1, align 4
  %363 = load i32, i32* @B2056_RX_MIXA_LOB_BIAS, align 4
  %364 = or i32 %362, %363
  %365 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %361, i32 %364, i32 136)
  %366 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %367 = load i32, i32* @B2056_RX0, align 4
  %368 = load i32, i32* @B2056_RX_MIXA_CMFB_IDAC, align 4
  %369 = or i32 %367, %368
  %370 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %366, i32 %369, i32 0)
  %371 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %372 = load i32, i32* @B2056_RX1, align 4
  %373 = load i32, i32* @B2056_RX_MIXA_CMFB_IDAC, align 4
  %374 = or i32 %372, %373
  %375 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %371, i32 %374, i32 0)
  %376 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %377 = load i32, i32* @B2056_RX0, align 4
  %378 = load i32, i32* @B2056_RX_MIXG_CMFB_IDAC, align 4
  %379 = or i32 %377, %378
  %380 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %376, i32 %379, i32 0)
  %381 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %382 = load i32, i32* @B2056_RX1, align 4
  %383 = load i32, i32* @B2056_RX_MIXG_CMFB_IDAC, align 4
  %384 = or i32 %382, %383
  %385 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %381, i32 %384, i32 0)
  %386 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %387 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @BHND_BFL2_APLL_WAR, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %325
  %394 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %395 = call i64 @bwn_current_band(%struct.bwn_mac* %394)
  %396 = load i64, i64* @BWN_BAND_5G, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %411, label %398

398:                                              ; preds = %393, %325
  %399 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %400 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @BHND_BFL2_GPLL_WAR2, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %412

406:                                              ; preds = %398
  %407 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %408 = call i64 @bwn_current_band(%struct.bwn_mac* %407)
  %409 = load i64, i64* @BWN_BAND_2G, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %406, %393
  store i32 559240, i32* %19, align 4
  br label %413

412:                                              ; preds = %406, %398
  store i32 -2004318072, i32* %19, align 4
  br label %413

413:                                              ; preds = %412, %411
  %414 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %415 = call i32 @BWN_NTAB32(i32 30, i32 1)
  %416 = load i32, i32* %19, align 4
  %417 = call i32 @bwn_ntab_write(%struct.bwn_mac* %414, i32 %415, i32 %416)
  %418 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %419 = call i32 @BWN_NTAB32(i32 30, i32 2)
  %420 = load i32, i32* %19, align 4
  %421 = call i32 @bwn_ntab_write(%struct.bwn_mac* %418, i32 %419, i32 %420)
  %422 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %423 = call i32 @BWN_NTAB32(i32 30, i32 3)
  %424 = load i32, i32* %19, align 4
  %425 = call i32 @bwn_ntab_write(%struct.bwn_mac* %422, i32 %423, i32 %424)
  %426 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %427 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 4
  br i1 %430, label %431, label %447

431:                                              ; preds = %413
  %432 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %433 = call i64 @bwn_current_band(%struct.bwn_mac* %432)
  %434 = load i64, i64* @BWN_BAND_5G, align 8
  %435 = icmp eq i64 %433, %434
  br i1 %435, label %436, label %447

436:                                              ; preds = %431
  %437 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %438 = load i32, i32* @B2056_TX0, align 4
  %439 = load i32, i32* @B2056_TX_GMBB_IDAC, align 4
  %440 = or i32 %438, %439
  %441 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %437, i32 %440, i32 112)
  %442 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %443 = load i32, i32* @B2056_TX1, align 4
  %444 = load i32, i32* @B2056_TX_GMBB_IDAC, align 4
  %445 = or i32 %443, %444
  %446 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %442, i32 %445, i32 112)
  br label %447

447:                                              ; preds = %436, %431, %413
  %448 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %449 = load i32, i32* @BWN_NPHY_ED_CRS40ASSERTTHRESH0, align 4
  %450 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %448, i32 %449, i32 1003)
  %451 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %452 = load i32, i32* @BWN_NPHY_ED_CRS40ASSERTTHRESH1, align 4
  %453 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %451, i32 %452, i32 1003)
  %454 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %455 = load i32, i32* @BWN_NPHY_ED_CRS40DEASSERTTHRESH0, align 4
  %456 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %454, i32 %455, i32 833)
  %457 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %458 = load i32, i32* @BWN_NPHY_ED_CRS40DEASSERTTHRESH1, align 4
  %459 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %457, i32 %458, i32 833)
  %460 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %461 = load i32, i32* @BWN_NPHY_ED_CRS20LASSERTTHRESH0, align 4
  %462 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %460, i32 %461, i32 1067)
  %463 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %464 = load i32, i32* @BWN_NPHY_ED_CRS20LASSERTTHRESH1, align 4
  %465 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %463, i32 %464, i32 1067)
  %466 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %467 = load i32, i32* @BWN_NPHY_ED_CRS20LDEASSERTTHRESH0, align 4
  %468 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %466, i32 %467, i32 897)
  %469 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %470 = load i32, i32* @BWN_NPHY_ED_CRS20LDEASSERTTHRESH1, align 4
  %471 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %469, i32 %470, i32 897)
  %472 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %473 = load i32, i32* @BWN_NPHY_ED_CRS20UASSERTTHRESH0, align 4
  %474 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %472, i32 %473, i32 1067)
  %475 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %476 = load i32, i32* @BWN_NPHY_ED_CRS20UASSERTTHRESH1, align 4
  %477 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %475, i32 %476, i32 1067)
  %478 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %479 = load i32, i32* @BWN_NPHY_ED_CRS20UDEASSERTTHRESH0, align 4
  %480 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %478, i32 %479, i32 897)
  %481 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %482 = load i32, i32* @BWN_NPHY_ED_CRS20UDEASSERTTHRESH1, align 4
  %483 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %481, i32 %482, i32 897)
  %484 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %485 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = icmp sge i32 %487, 6
  br i1 %488, label %489, label %498

489:                                              ; preds = %447
  %490 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %491 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* @BHND_BFL2_SINGLEANT_CCK, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %489
  br label %498

498:                                              ; preds = %497, %489, %447
  store i32 0, i32* %2, align 4
  br label %499

499:                                              ; preds = %498, %175
  %500 = load i32, i32* %2, align 4
  ret i32 %500
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @bwn_ntab_read(%struct.bwn_mac*, i32) #2

declare dso_local i32 @BWN_NTAB32(i32, i32) #2

declare dso_local i32 @bwn_ntab_write(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac*, i32, i32*, i32*, i32) #2

declare dso_local i32 @nitems(i32*) #2

declare dso_local i64 @bwn_nphy_ipa(%struct.bwn_mac*) #2

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #2

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #2

declare dso_local i32 @bwn_is_40mhz(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_gain_ctl_workarounds(%struct.bwn_mac*) #2

declare dso_local i32 @BWN_NTAB16(i32, i32) #2

declare dso_local i32 @bhnd_nvram_getvar_uint8(i32, i8*, i32*) #2

declare dso_local i32 @BWN_ERRPRINTF(%struct.bwn_softc*, i8*, i8*, i32) #2

declare dso_local i64 @min(i32, i32) #2

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i32*) #2

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
