; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_workarounds_rev1_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_workarounds_rev1_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy, %struct.bwn_softc* }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i64 }
%struct.bwn_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@__const.bwn_nphy_workarounds_rev1_2.events1 = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 3], align 16
@__const.bwn_nphy_workarounds_rev1_2.delays1 = private unnamed_addr constant [7 x i32] [i32 8, i32 6, i32 6, i32 2, i32 4, i32 60, i32 1], align 16
@__const.bwn_nphy_workarounds_rev1_2.events2 = private unnamed_addr constant [7 x i32] [i32 0, i32 3, i32 5, i32 4, i32 2, i32 1, i32 8], align 16
@__const.bwn_nphy_workarounds_rev1_2.delays2 = private unnamed_addr constant [7 x i32] [i32 8, i32 6, i32 2, i32 4, i32 4, i32 6, i32 1], align 16
@BHND_BFL2_SKWRKFEM_BRD = common dso_local global i32 0, align 4
@BHND_BOARD_BCM943224M93 = common dso_local global i64 0, align 8
@BWN_BAND_5G = common dso_local global i64 0, align 8
@B2055_C1_TX_RF_SPARE = common dso_local global i32 0, align 4
@B2055_C2_TX_RF_SPARE = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_LO1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_LO2 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@BWN_NPHY_RXCTL = common dso_local global i32 0, align 4
@BWN_HF_MLADVW = common dso_local global i32 0, align 4
@BWN_NPHY_CRSCHECK2 = common dso_local global i32 0, align 4
@BWN_NPHY_CRSCHECK3 = common dso_local global i32 0, align 4
@BWN_NPHY_SCRAM_SIGCTL = common dso_local global i32 0, align 4
@BWN_NPHY_SCRAM_SIGCTL_SCM = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_A0 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_A1 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_A2 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_B0 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_B1 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_B2 = common dso_local global i32 0, align 4
@BWN_NPHY_PIL_DW1 = common dso_local global i32 0, align 4
@BWN_NPHY_PIL_DW_64QAM = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_20CO_S2B1 = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_20CO_S2B2 = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_20CO_S2B3 = common dso_local global i32 0, align 4
@BWN_NPHY_FINERX2_CGC = common dso_local global i32 0, align 4
@BWN_NPHY_FINERX2_CGC_DECGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_nphy_workarounds_rev1_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_workarounds_rev1_2(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.bwn_phy*, align 8
  %5 = alloca %struct.bwn_phy_n*, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca [7 x i32], align 16
  %8 = alloca [7 x i32], align 16
  %9 = alloca [7 x i32], align 16
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 1
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %11, align 8
  store %struct.bwn_softc* %12, %struct.bwn_softc** %3, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 0
  store %struct.bwn_phy* %14, %struct.bwn_phy** %4, align 8
  %15 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %16 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %15, i32 0, i32 1
  %17 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %16, align 8
  store %struct.bwn_phy_n* %17, %struct.bwn_phy_n** %5, align 8
  %18 = bitcast [7 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([7 x i32]* @__const.bwn_nphy_workarounds_rev1_2.events1 to i8*), i64 28, i1 false)
  %19 = bitcast [7 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([7 x i32]* @__const.bwn_nphy_workarounds_rev1_2.delays1 to i8*), i64 28, i1 false)
  %20 = bitcast [7 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([7 x i32]* @__const.bwn_nphy_workarounds_rev1_2.events2 to i8*), i64 28, i1 false)
  %21 = bitcast [7 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([7 x i32]* @__const.bwn_nphy_workarounds_rev1_2.delays2 to i8*), i64 28, i1 false)
  %22 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BHND_BFL2_SKWRKFEM_BRD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %1
  %30 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BHND_BOARD_BCM943224M93, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %1
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  store i32 1, i32* %37, align 16
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 5
  store i32 20, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %41 = call i64 @bwn_current_band(%struct.bwn_mac* %40)
  %42 = load i64, i64* @BWN_BAND_5G, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %5, align 8
  %46 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %51 = load i32, i32* @B2055_C1_TX_RF_SPARE, align 4
  %52 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %50, i32 %51, i32 -9)
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %54 = load i32, i32* @B2055_C2_TX_RF_SPARE, align 4
  %55 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %53, i32 %54, i32 -9)
  br label %63

56:                                               ; preds = %44, %39
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %58 = load i32, i32* @B2055_C1_TX_RF_SPARE, align 4
  %59 = call i32 @BWN_RF_SET(%struct.bwn_mac* %57, i32 %58, i32 8)
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %61 = load i32, i32* @B2055_C2_TX_RF_SPARE, align 4
  %62 = call i32 @BWN_RF_SET(%struct.bwn_mac* %60, i32 %61, i32 8)
  br label %63

63:                                               ; preds = %56, %49
  %64 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %65 = call i32 @BWN_NTAB16(i32 8, i32 0)
  %66 = call i32 @bwn_ntab_write(%struct.bwn_mac* %64, i32 %65, i32 10)
  %67 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %68 = call i32 @BWN_NTAB16(i32 8, i32 16)
  %69 = call i32 @bwn_ntab_write(%struct.bwn_mac* %67, i32 %68, i32 10)
  %70 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %71 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %77 = call i32 @BWN_NTAB16(i32 8, i32 2)
  %78 = call i32 @bwn_ntab_write(%struct.bwn_mac* %76, i32 %77, i32 52650)
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %80 = call i32 @BWN_NTAB16(i32 8, i32 18)
  %81 = call i32 @bwn_ntab_write(%struct.bwn_mac* %79, i32 %80, i32 52650)
  br label %82

82:                                               ; preds = %75, %63
  %83 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %84 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %90 = call i32 @BWN_NTAB16(i32 8, i32 8)
  %91 = call i32 @bwn_ntab_write(%struct.bwn_mac* %89, i32 %90, i32 0)
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %93 = call i32 @BWN_NTAB16(i32 8, i32 24)
  %94 = call i32 @bwn_ntab_write(%struct.bwn_mac* %92, i32 %93, i32 0)
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %96 = call i32 @BWN_NTAB16(i32 8, i32 7)
  %97 = call i32 @bwn_ntab_write(%struct.bwn_mac* %95, i32 %96, i32 31403)
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %99 = call i32 @BWN_NTAB16(i32 8, i32 23)
  %100 = call i32 @bwn_ntab_write(%struct.bwn_mac* %98, i32 %99, i32 31403)
  %101 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %102 = call i32 @BWN_NTAB16(i32 8, i32 6)
  %103 = call i32 @bwn_ntab_write(%struct.bwn_mac* %101, i32 %102, i32 2048)
  %104 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %105 = call i32 @BWN_NTAB16(i32 8, i32 22)
  %106 = call i32 @bwn_ntab_write(%struct.bwn_mac* %104, i32 %105, i32 2048)
  br label %107

107:                                              ; preds = %88, %82
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %109 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_LO1, align 4
  %110 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %108, i32 %109, i32 728)
  %111 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %112 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  %113 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %111, i32 %112, i32 769)
  %114 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %115 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_LO2, align 4
  %116 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %114, i32 %115, i32 728)
  %117 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %118 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  %119 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %117, i32 %118, i32 769)
  %120 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %121 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %122 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %123 = call i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac* %120, i32 0, i32* %121, i32* %122, i32 7)
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %125 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %126 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %127 = call i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac* %124, i32 1, i32* %125, i32* %126, i32 7)
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %129 = call i32 @bwn_nphy_gain_ctl_workarounds(%struct.bwn_mac* %128)
  %130 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %131 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %133, 2
  br i1 %134, label %135, label %149

135:                                              ; preds = %107
  %136 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %137 = load i32, i32* @BWN_NPHY_RXCTL, align 4
  %138 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %136, i32 %137)
  %139 = and i32 %138, 2
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %143 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %144 = call i32 @bwn_hf_read(%struct.bwn_mac* %143)
  %145 = load i32, i32* @BWN_HF_MLADVW, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @bwn_hf_write(%struct.bwn_mac* %142, i32 %146)
  br label %148

148:                                              ; preds = %141, %135
  br label %163

149:                                              ; preds = %107
  %150 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %151 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %157 = load i32, i32* @BWN_NPHY_CRSCHECK2, align 4
  %158 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %156, i32 %157, i32 0)
  %159 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %160 = load i32, i32* @BWN_NPHY_CRSCHECK3, align 4
  %161 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %159, i32 %160, i32 0)
  br label %162

162:                                              ; preds = %155, %149
  br label %163

163:                                              ; preds = %162, %148
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %165 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %171 = load i32, i32* @BWN_NPHY_SCRAM_SIGCTL, align 4
  %172 = load i32, i32* @BWN_NPHY_SCRAM_SIGCTL_SCM, align 4
  %173 = xor i32 %172, -1
  %174 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %170, i32 %171, i32 %173)
  br label %175

175:                                              ; preds = %169, %163
  %176 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %177 = load i32, i32* @BWN_NPHY_PHASETR_A0, align 4
  %178 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %176, i32 %177, i32 293)
  %179 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %180 = load i32, i32* @BWN_NPHY_PHASETR_A1, align 4
  %181 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %179, i32 %180, i32 435)
  %182 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %183 = load i32, i32* @BWN_NPHY_PHASETR_A2, align 4
  %184 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %182, i32 %183, i32 261)
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %186 = load i32, i32* @BWN_NPHY_PHASETR_B0, align 4
  %187 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %185, i32 %186, i32 366)
  %188 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %189 = load i32, i32* @BWN_NPHY_PHASETR_B1, align 4
  %190 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %188, i32 %189, i32 205)
  %191 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %192 = load i32, i32* @BWN_NPHY_PHASETR_B2, align 4
  %193 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %191, i32 %192, i32 32)
  %194 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %195 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %197, 3
  br i1 %198, label %199, label %215

199:                                              ; preds = %175
  %200 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %201 = load i32, i32* @BWN_NPHY_PIL_DW1, align 4
  %202 = load i32, i32* @BWN_NPHY_PIL_DW_64QAM, align 4
  %203 = xor i32 %202, -1
  %204 = and i32 %203, 65535
  %205 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %200, i32 %201, i32 %204)
  %206 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %207 = load i32, i32* @BWN_NPHY_TXF_20CO_S2B1, align 4
  %208 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %206, i32 %207, i32 181)
  %209 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %210 = load i32, i32* @BWN_NPHY_TXF_20CO_S2B2, align 4
  %211 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %209, i32 %210, i32 164)
  %212 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %213 = load i32, i32* @BWN_NPHY_TXF_20CO_S2B3, align 4
  %214 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %212, i32 %213, i32 0)
  br label %215

215:                                              ; preds = %199, %175
  %216 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %217 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 2
  br i1 %220, label %221, label %226

221:                                              ; preds = %215
  %222 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %223 = load i32, i32* @BWN_NPHY_FINERX2_CGC, align 4
  %224 = load i32, i32* @BWN_NPHY_FINERX2_CGC_DECGC, align 4
  %225 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %221, %215
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #2

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @bwn_ntab_write(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_NTAB16(i32, i32) #2

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac*, i32, i32*, i32*, i32) #2

declare dso_local i32 @bwn_nphy_gain_ctl_workarounds(%struct.bwn_mac*) #2

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #2

declare dso_local i32 @bwn_hf_write(%struct.bwn_mac*, i32) #2

declare dso_local i32 @bwn_hf_read(%struct.bwn_mac*) #2

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
