; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_workarounds_rev7plus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_workarounds_rev7plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy, %struct.bwn_softc* }
%struct.bwn_phy = type { i32, i32 }
%struct.bwn_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@__const.bwn_nphy_workarounds_rev7plus.tx2rx_events = private unnamed_addr constant [7 x i32] [i32 4, i32 3, i32 5, i32 2, i32 1, i32 8, i32 31], align 16
@__const.bwn_nphy_workarounds_rev7plus.tx2rx_delays = private unnamed_addr constant [7 x i32] [i32 8, i32 4, i32 4, i32 4, i32 4, i32 6, i32 1], align 16
@__const.bwn_nphy_workarounds_rev7plus.rx2tx_events_ipa = private unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 8, i32 5, i32 6, i32 15, i32 3, i32 31], align 16
@__const.bwn_nphy_workarounds_rev7plus.rx2tx_delays_ipa = private unnamed_addr constant [9 x i32] [i32 8, i32 6, i32 6, i32 4, i32 4, i32 16, i32 43, i32 1, i32 1], align 16
@bwn_nphy_workarounds_rev7plus.ntab7_15e_16e = internal constant [3 x i32] [i32 0, i32 271, i32 271], align 4
@__const.bwn_nphy_workarounds_rev7plus.ntab7_138_146 = private unnamed_addr constant [2 x i32] [i32 17, i32 17], align 4
@__const.bwn_nphy_workarounds_rev7plus.ntab7_133 = private unnamed_addr constant [3 x i32] [i32 119, i32 17, i32 17], align 4
@BWN_NPHY_PHASETR_A0 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_A1 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_A2 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_B0 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_B1 = common dso_local global i32 0, align 4
@BWN_NPHY_PHASETR_B2 = common dso_local global i32 0, align 4
@BWN_NPHY_FINERX2_CGC = common dso_local global i32 0, align 4
@BWN_NPHY_FREQGAIN0 = common dso_local global i32 0, align 4
@BWN_NPHY_FREQGAIN1 = common dso_local global i32 0, align 4
@BWN_NPHY_FREQGAIN2 = common dso_local global i32 0, align 4
@BWN_NPHY_FREQGAIN3 = common dso_local global i32 0, align 4
@BWN_NPHY_FREQGAIN4 = common dso_local global i32 0, align 4
@BWN_NPHY_FREQGAIN5 = common dso_local global i32 0, align 4
@BWN_NPHY_FREQGAIN6 = common dso_local global i32 0, align 4
@BWN_NPHY_FREQGAIN7 = common dso_local global i32 0, align 4
@BWN_NPHY_FORCEFRONT0 = common dso_local global i32 0, align 4
@BWN_NPHY_FORCEFRONT1 = common dso_local global i32 0, align 4
@BWN_NPHY_TXTAILCNT = common dso_local global i32 0, align 4
@BWN_NPHY_EPS_OVERRIDEI_0 = common dso_local global i32 0, align 4
@BWN_NPHY_EPS_OVERRIDEI_1 = common dso_local global i32 0, align 4
@R2057_RCCAL_BCAP_VAL = common dso_local global i32 0, align 4
@R2057_RCCAL_SCAP_VAL = common dso_local global i32 0, align 4
@BWN_BAND_2G = common dso_local global i64 0, align 8
@BHND_BFL2_IPALVLSHIFT_3P3 = common dso_local global i32 0, align 4
@R2057_IPA2G_CASCONV_CORE0 = common dso_local global i32 0, align 4
@R2057_TXMIX2G_TUNE_BOOST_PU_CORE0 = common dso_local global i32 0, align 4
@R2057_IPA2G_BIAS_FILTER_CORE0 = common dso_local global i32 0, align 4
@R2057_PAD2G_IDACS_CORE0 = common dso_local global i32 0, align 4
@R2057_PAD2G_TUNE_PUS_CORE0 = common dso_local global i32 0, align 4
@R2057_IPA2G_IMAIN_CORE0 = common dso_local global i32 0, align 4
@R2057_PAD_BIAS_FILTER_BWS_CORE0 = common dso_local global i32 0, align 4
@R2057_BACKUP1_CORE0 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_ENDROP_TLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_nphy_workarounds_rev7plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_workarounds_rev7plus(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.bwn_phy*, align 8
  %5 = alloca [7 x i32], align 16
  %6 = alloca [7 x i32], align 16
  %7 = alloca [9 x i32], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [2 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca [2 x i32], align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [2 x i32], align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [2 x i32], align 4
  %31 = alloca [2 x i32], align 4
  %32 = alloca [2 x i32], align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %37 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %36, i32 0, i32 1
  %38 = load %struct.bwn_softc*, %struct.bwn_softc** %37, align 8
  store %struct.bwn_softc* %38, %struct.bwn_softc** %3, align 8
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %40 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %39, i32 0, i32 0
  store %struct.bwn_phy* %40, %struct.bwn_phy** %4, align 8
  %41 = bitcast [7 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 16 bitcast ([7 x i32]* @__const.bwn_nphy_workarounds_rev7plus.tx2rx_events to i8*), i64 28, i1 false)
  %42 = bitcast [7 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %42, i8* align 16 bitcast ([7 x i32]* @__const.bwn_nphy_workarounds_rev7plus.tx2rx_delays to i8*), i64 28, i1 false)
  %43 = bitcast [9 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([9 x i32]* @__const.bwn_nphy_workarounds_rev7plus.rx2tx_events_ipa to i8*), i64 36, i1 false)
  %44 = bitcast [9 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %44, i8* align 16 bitcast ([9 x i32]* @__const.bwn_nphy_workarounds_rev7plus.rx2tx_delays_ipa to i8*), i64 36, i1 false)
  %45 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 bitcast ([2 x i32]* @__const.bwn_nphy_workarounds_rev7plus.ntab7_138_146 to i8*), i64 8, i1 false)
  %46 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast ([3 x i32]* @__const.bwn_nphy_workarounds_rev7plus.ntab7_133 to i8*), i64 12, i1 false)
  store i32 0, i32* %22, align 4
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = load i32, i32* @BWN_NPHY_PHASETR_A0, align 4
  %49 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %47, i32 %48, i32 293)
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %51 = load i32, i32* @BWN_NPHY_PHASETR_A1, align 4
  %52 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %50, i32 %51, i32 435)
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %54 = load i32, i32* @BWN_NPHY_PHASETR_A2, align 4
  %55 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %53, i32 %54, i32 261)
  %56 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %57 = load i32, i32* @BWN_NPHY_PHASETR_B0, align 4
  %58 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %56, i32 %57, i32 366)
  %59 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %60 = load i32, i32* @BWN_NPHY_PHASETR_B1, align 4
  %61 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %59, i32 %60, i32 205)
  %62 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %63 = load i32, i32* @BWN_NPHY_PHASETR_B2, align 4
  %64 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %62, i32 %63, i32 32)
  %65 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %66 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %121

69:                                               ; preds = %1
  %70 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %71 = load i32, i32* @BWN_NPHY_FINERX2_CGC, align 4
  %72 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %70, i32 %71, i32 16)
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %74 = load i32, i32* @BWN_NPHY_FREQGAIN0, align 4
  %75 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %73, i32 %74, i32 65408, i32 32)
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %77 = load i32, i32* @BWN_NPHY_FREQGAIN0, align 4
  %78 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %76, i32 %77, i32 33023, i32 9984)
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %80 = load i32, i32* @BWN_NPHY_FREQGAIN1, align 4
  %81 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %79, i32 %80, i32 65408, i32 46)
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %83 = load i32, i32* @BWN_NPHY_FREQGAIN1, align 4
  %84 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %82, i32 %83, i32 33023, i32 13056)
  %85 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %86 = load i32, i32* @BWN_NPHY_FREQGAIN2, align 4
  %87 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %85, i32 %86, i32 65408, i32 55)
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %89 = load i32, i32* @BWN_NPHY_FREQGAIN2, align 4
  %90 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %88, i32 %89, i32 33023, i32 14848)
  %91 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %92 = load i32, i32* @BWN_NPHY_FREQGAIN3, align 4
  %93 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %91, i32 %92, i32 65408, i32 60)
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %95 = load i32, i32* @BWN_NPHY_FREQGAIN3, align 4
  %96 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %94, i32 %95, i32 33023, i32 15872)
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %98 = load i32, i32* @BWN_NPHY_FREQGAIN4, align 4
  %99 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %97, i32 %98, i32 65408, i32 62)
  %100 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %101 = load i32, i32* @BWN_NPHY_FREQGAIN4, align 4
  %102 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %100, i32 %101, i32 33023, i32 16128)
  %103 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %104 = load i32, i32* @BWN_NPHY_FREQGAIN5, align 4
  %105 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %103, i32 %104, i32 65408, i32 64)
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %107 = load i32, i32* @BWN_NPHY_FREQGAIN5, align 4
  %108 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %106, i32 %107, i32 33023, i32 16384)
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %110 = load i32, i32* @BWN_NPHY_FREQGAIN6, align 4
  %111 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %109, i32 %110, i32 65408, i32 64)
  %112 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %113 = load i32, i32* @BWN_NPHY_FREQGAIN6, align 4
  %114 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %112, i32 %113, i32 33023, i32 16384)
  %115 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %116 = load i32, i32* @BWN_NPHY_FREQGAIN7, align 4
  %117 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %115, i32 %116, i32 65408, i32 64)
  %118 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %119 = load i32, i32* @BWN_NPHY_FREQGAIN7, align 4
  %120 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %118, i32 %119, i32 33023, i32 16384)
  br label %121

121:                                              ; preds = %69, %1
  %122 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %123 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp sge i32 %124, 16
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %128 = load i32, i32* @BWN_NPHY_FORCEFRONT0, align 4
  %129 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %127, i32 %128, i32 2047)
  %130 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %131 = load i32, i32* @BWN_NPHY_FORCEFRONT1, align 4
  %132 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %130, i32 %131, i32 2047)
  br label %146

133:                                              ; preds = %121
  %134 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %135 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp sle i32 %136, 8
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %140 = load i32, i32* @BWN_NPHY_FORCEFRONT0, align 4
  %141 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %139, i32 %140, i32 432)
  %142 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %143 = load i32, i32* @BWN_NPHY_FORCEFRONT1, align 4
  %144 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %142, i32 %143, i32 432)
  br label %145

145:                                              ; preds = %138, %133
  br label %146

146:                                              ; preds = %145, %126
  %147 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %148 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp sge i32 %149, 16
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %153 = load i32, i32* @BWN_NPHY_TXTAILCNT, align 4
  %154 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %152, i32 %153, i32 -256, i32 160)
  br label %165

155:                                              ; preds = %146
  %156 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %157 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp sge i32 %158, 8
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %162 = load i32, i32* @BWN_NPHY_TXTAILCNT, align 4
  %163 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %161, i32 %162, i32 -256, i32 114)
  br label %164

164:                                              ; preds = %160, %155
  br label %165

165:                                              ; preds = %164, %151
  %166 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %167 = call i32 @BWN_NTAB16(i32 8, i32 0)
  %168 = call i32 @bwn_ntab_write(%struct.bwn_mac* %166, i32 %167, i32 2)
  %169 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %170 = call i32 @BWN_NTAB16(i32 8, i32 16)
  %171 = call i32 @bwn_ntab_write(%struct.bwn_mac* %169, i32 %170, i32 2)
  %172 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %173 = call i32 @BWN_NTAB32(i32 30, i32 0)
  %174 = call i32 @bwn_ntab_read(%struct.bwn_mac* %172, i32 %173)
  store i32 %174, i32* %27, align 4
  %175 = load i32, i32* %27, align 4
  %176 = and i32 %175, 16777215
  store i32 %176, i32* %27, align 4
  %177 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %178 = call i32 @BWN_NTAB32(i32 30, i32 0)
  %179 = load i32, i32* %27, align 4
  %180 = call i32 @bwn_ntab_write(%struct.bwn_mac* %177, i32 %178, i32 %179)
  %181 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %182 = call i32 @BWN_NTAB16(i32 7, i32 349)
  %183 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %181, i32 %182, i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @bwn_nphy_workarounds_rev7plus.ntab7_15e_16e, i64 0, i64 0))
  %184 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %185 = call i32 @BWN_NTAB16(i32 7, i32 365)
  %186 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %184, i32 %185, i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @bwn_nphy_workarounds_rev7plus.ntab7_15e_16e, i64 0, i64 0))
  %187 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %188 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %189 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %190 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %191 = call i32 @nitems(i32* %190)
  %192 = call i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac* %187, i32 1, i32* %188, i32* %189, i32 %191)
  %193 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %194 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %165
  %197 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %198 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %199 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %200 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %201 = call i32 @nitems(i32* %200)
  %202 = call i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac* %197, i32 0, i32* %198, i32* %199, i32 %201)
  br label %203

203:                                              ; preds = %196, %165
  %204 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %205 = load i32, i32* @BWN_NPHY_EPS_OVERRIDEI_0, align 4
  %206 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %204, i32 %205, i32 16383, i32 16384)
  %207 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %208 = load i32, i32* @BWN_NPHY_EPS_OVERRIDEI_1, align 4
  %209 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %207, i32 %208, i32 16383, i32 16384)
  store i32 0, i32* %28, align 4
  br label %210

210:                                              ; preds = %238, %203
  %211 = load i32, i32* %28, align 4
  %212 = icmp slt i32 %211, 2
  br i1 %212, label %213, label %241

213:                                              ; preds = %210
  %214 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %215 = load i32, i32* %28, align 4
  %216 = mul nsw i32 %215, 16
  %217 = add nsw i32 340, %216
  %218 = call i32 @bwn_nphy_read_lpf_ctl(%struct.bwn_mac* %214, i32 %217)
  %219 = load i32, i32* %28, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %220
  store i32 %218, i32* %221, align 4
  %222 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %223 = load i32, i32* %28, align 4
  %224 = mul nsw i32 %223, 16
  %225 = add nsw i32 345, %224
  %226 = call i32 @bwn_nphy_read_lpf_ctl(%struct.bwn_mac* %222, i32 %225)
  %227 = load i32, i32* %28, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %228
  store i32 %226, i32* %229, align 4
  %230 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %231 = load i32, i32* %28, align 4
  %232 = mul nsw i32 %231, 16
  %233 = add nsw i32 338, %232
  %234 = call i32 @bwn_nphy_read_lpf_ctl(%struct.bwn_mac* %230, i32 %233)
  %235 = load i32, i32* %28, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %236
  store i32 %234, i32* %237, align 4
  br label %238

238:                                              ; preds = %213
  %239 = load i32, i32* %28, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %28, align 4
  br label %210

241:                                              ; preds = %210
  %242 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %243 = load i32, i32* @R2057_RCCAL_BCAP_VAL, align 4
  %244 = call i32 @BWN_RF_READ(%struct.bwn_mac* %242, i32 %243)
  store i32 %244, i32* %14, align 4
  %245 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %246 = load i32, i32* @R2057_RCCAL_SCAP_VAL, align 4
  %247 = call i32 @BWN_RF_READ(%struct.bwn_mac* %245, i32 %246)
  store i32 %247, i32* %18, align 4
  %248 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %249 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %486

251:                                              ; preds = %241
  %252 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %253 = call i64 @bwn_current_band(%struct.bwn_mac* %252)
  %254 = load i64, i64* @BWN_BAND_2G, align 8
  %255 = icmp eq i64 %253, %254
  %256 = zext i1 %255 to i32
  store i32 %256, i32* %29, align 4
  %257 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %258 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  switch i32 %259, label %485 [
    i32 5, label %260
    i32 7, label %307
    i32 8, label %307
    i32 9, label %361
    i32 14, label %437
  ]

260:                                              ; preds = %251
  %261 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %262 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 8
  br i1 %264, label %265, label %300

265:                                              ; preds = %260
  %266 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %267 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %300

269:                                              ; preds = %265
  store i32 0, i32* %28, align 4
  br label %270

270:                                              ; preds = %296, %269
  %271 = load i32, i32* %28, align 4
  %272 = icmp slt i32 %271, 2
  br i1 %272, label %273, label %299

273:                                              ; preds = %270
  %274 = load i32, i32* %18, align 4
  %275 = load i32, i32* %28, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %276
  store i32 %274, i32* %277, align 4
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* %28, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %280
  store i32 %278, i32* %281, align 4
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* %28, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %284
  store i32 %282, i32* %285, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %28, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %288
  store i32 %286, i32* %289, align 4
  %290 = load i32, i32* %28, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %291
  store i32 12, i32* %292, align 4
  %293 = load i32, i32* %28, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %294
  store i32 12, i32* %295, align 4
  br label %296

296:                                              ; preds = %273
  %297 = load i32, i32* %28, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %28, align 4
  br label %270

299:                                              ; preds = %270
  store i32 1, i32* %22, align 4
  br label %300

300:                                              ; preds = %299, %265, %260
  %301 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %302 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 9
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  br label %306

306:                                              ; preds = %305, %300
  br label %485

307:                                              ; preds = %251, %251
  store i32 0, i32* %28, align 4
  br label %308

308:                                              ; preds = %357, %307
  %309 = load i32, i32* %28, align 4
  %310 = icmp slt i32 %309, 2
  br i1 %310, label %311, label %360

311:                                              ; preds = %308
  %312 = load i32, i32* %18, align 4
  %313 = load i32, i32* %28, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %314
  store i32 %312, i32* %315, align 4
  %316 = load i32, i32* %14, align 4
  %317 = load i32, i32* %28, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %318
  store i32 %316, i32* %319, align 4
  %320 = load i32, i32* %28, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %321
  store i32 4, i32* %322, align 4
  %323 = load i32, i32* %28, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %324
  store i32 1, i32* %325, align 4
  %326 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %327 = call i64 @bwn_current_band(%struct.bwn_mac* %326)
  %328 = load i64, i64* @BWN_BAND_2G, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %343

330:                                              ; preds = %311
  %331 = load i32, i32* %28, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %332
  store i32 12, i32* %333, align 4
  %334 = load i32, i32* %28, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %335
  store i32 12, i32* %336, align 4
  %337 = load i32, i32* %28, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %338
  store i32 10, i32* %339, align 4
  %340 = load i32, i32* %28, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %341
  store i32 10, i32* %342, align 4
  br label %356

343:                                              ; preds = %311
  %344 = load i32, i32* %28, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %345
  store i32 20, i32* %346, align 4
  %347 = load i32, i32* %28, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %348
  store i32 20, i32* %349, align 4
  %350 = load i32, i32* %28, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %351
  store i32 15, i32* %352, align 4
  %353 = load i32, i32* %28, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %354
  store i32 15, i32* %355, align 4
  br label %356

356:                                              ; preds = %343, %330
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %28, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %28, align 4
  br label %308

360:                                              ; preds = %308
  store i32 1, i32* %22, align 4
  br label %485

361:                                              ; preds = %251
  store i32 0, i32* %28, align 4
  br label %362

362:                                              ; preds = %433, %361
  %363 = load i32, i32* %28, align 4
  %364 = icmp slt i32 %363, 2
  br i1 %364, label %365, label %436

365:                                              ; preds = %362
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %28, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %368
  store i32 %366, i32* %369, align 4
  %370 = load i32, i32* %18, align 4
  %371 = load i32, i32* %28, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %372
  store i32 %370, i32* %373, align 4
  %374 = load i32, i32* %28, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %375
  store i32 1, i32* %376, align 4
  %377 = load i32, i32* %29, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %390

379:                                              ; preds = %365
  %380 = load i32, i32* %14, align 4
  %381 = add nsw i32 %380, 13
  %382 = load i32, i32* %28, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %383
  store i32 %381, i32* %384, align 4
  %385 = load i32, i32* %18, align 4
  %386 = add nsw i32 %385, 15
  %387 = load i32, i32* %28, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %388
  store i32 %386, i32* %389, align 4
  br label %401

390:                                              ; preds = %365
  %391 = load i32, i32* %14, align 4
  %392 = add nsw i32 %391, 14
  %393 = load i32, i32* %28, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %394
  store i32 %392, i32* %395, align 4
  %396 = load i32, i32* %18, align 4
  %397 = add nsw i32 %396, 15
  %398 = load i32, i32* %28, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %399
  store i32 %397, i32* %400, align 4
  br label %401

401:                                              ; preds = %390, %379
  %402 = load i32, i32* %28, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %403
  store i32 4, i32* %404, align 4
  %405 = load i32, i32* %29, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %418

407:                                              ; preds = %401
  %408 = load i32, i32* %14, align 4
  %409 = sub nsw i32 %408, 7
  %410 = load i32, i32* %28, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %411
  store i32 %409, i32* %412, align 4
  %413 = load i32, i32* %18, align 4
  %414 = sub nsw i32 %413, 5
  %415 = load i32, i32* %28, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %416
  store i32 %414, i32* %417, align 4
  br label %429

418:                                              ; preds = %401
  %419 = load i32, i32* %14, align 4
  %420 = add nsw i32 %419, 2
  %421 = load i32, i32* %28, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %422
  store i32 %420, i32* %423, align 4
  %424 = load i32, i32* %18, align 4
  %425 = add nsw i32 %424, 4
  %426 = load i32, i32* %28, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %427
  store i32 %425, i32* %428, align 4
  br label %429

429:                                              ; preds = %418, %407
  %430 = load i32, i32* %28, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %431
  store i32 4, i32* %432, align 4
  br label %433

433:                                              ; preds = %429
  %434 = load i32, i32* %28, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %28, align 4
  br label %362

436:                                              ; preds = %362
  store i32 1, i32* %22, align 4
  br label %485

437:                                              ; preds = %251
  store i32 0, i32* %28, align 4
  br label %438

438:                                              ; preds = %453, %437
  %439 = load i32, i32* %28, align 4
  %440 = icmp slt i32 %439, 2
  br i1 %440, label %441, label %456

441:                                              ; preds = %438
  %442 = load i32, i32* %14, align 4
  %443 = load i32, i32* %28, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %444
  store i32 %442, i32* %445, align 4
  %446 = load i32, i32* %18, align 4
  %447 = load i32, i32* %28, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %448
  store i32 %446, i32* %449, align 4
  %450 = load i32, i32* %28, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %451
  store i32 1, i32* %452, align 4
  br label %453

453:                                              ; preds = %441
  %454 = load i32, i32* %28, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %28, align 4
  br label %438

456:                                              ; preds = %438
  %457 = load i32, i32* %14, align 4
  %458 = add nsw i32 %457, 20
  %459 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %458, i32* %459, align 4
  %460 = load i32, i32* %18, align 4
  %461 = add nsw i32 %460, 20
  %462 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %461, i32* %462, align 4
  %463 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 3, i32* %463, align 4
  %464 = load i32, i32* %14, align 4
  %465 = add nsw i32 %464, 16
  %466 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %465, i32* %466, align 4
  %467 = load i32, i32* %18, align 4
  %468 = add nsw i32 %467, 16
  %469 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %468, i32* %469, align 4
  %470 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 3, i32* %470, align 4
  %471 = load i32, i32* %14, align 4
  %472 = add nsw i32 %471, 20
  %473 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %472, i32* %473, align 4
  %474 = load i32, i32* %18, align 4
  %475 = add nsw i32 %474, 20
  %476 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  store i32 %475, i32* %476, align 4
  %477 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 4, i32* %477, align 4
  %478 = load i32, i32* %14, align 4
  %479 = add nsw i32 %478, 10
  %480 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %479, i32* %480, align 4
  %481 = load i32, i32* %18, align 4
  %482 = add nsw i32 %481, 10
  %483 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  store i32 %482, i32* %483, align 4
  %484 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 4, i32* %484, align 4
  store i32 1, i32* %22, align 4
  br label %485

485:                                              ; preds = %251, %456, %436, %360, %306
  br label %527

486:                                              ; preds = %241
  %487 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %488 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = icmp eq i32 %489, 5
  br i1 %490, label %491, label %526

491:                                              ; preds = %486
  store i32 0, i32* %28, align 4
  br label %492

492:                                              ; preds = %522, %491
  %493 = load i32, i32* %28, align 4
  %494 = icmp slt i32 %493, 2
  br i1 %494, label %495, label %525

495:                                              ; preds = %492
  %496 = load i32, i32* %28, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %497
  store i32 1, i32* %498, align 4
  %499 = load i32, i32* %28, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %500
  store i32 3, i32* %501, align 4
  %502 = load i32, i32* %18, align 4
  %503 = load i32, i32* %28, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %504
  store i32 %502, i32* %505, align 4
  %506 = load i32, i32* %14, align 4
  %507 = load i32, i32* %28, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %508
  store i32 %506, i32* %509, align 4
  %510 = load i32, i32* %28, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %511
  store i32 17, i32* %512, align 4
  %513 = load i32, i32* %28, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %514
  store i32 17, i32* %515, align 4
  %516 = load i32, i32* %28, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %517
  store i32 19, i32* %518, align 4
  %519 = load i32, i32* %28, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %520
  store i32 19, i32* %521, align 4
  br label %522

522:                                              ; preds = %495
  %523 = load i32, i32* %28, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %28, align 4
  br label %492

525:                                              ; preds = %492
  store i32 1, i32* %22, align 4
  br label %526

526:                                              ; preds = %525, %486
  br label %527

527:                                              ; preds = %526, %485
  %528 = load i32, i32* %22, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %741

530:                                              ; preds = %527
  store i32 1, i32* %33, align 4
  store i32 0, i32* %28, align 4
  br label %531

531:                                              ; preds = %649, %530
  %532 = load i32, i32* %28, align 4
  %533 = icmp slt i32 %532, 2
  br i1 %533, label %534, label %652

534:                                              ; preds = %531
  %535 = load i32, i32* %28, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = call i32 @bwn_clamp_val(i32 %538, i32 0, i32 31)
  %540 = load i32, i32* %28, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %541
  store i32 %539, i32* %542, align 4
  %543 = load i32, i32* %28, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %544
  %546 = load i32, i32* %545, align 4
  %547 = call i32 @bwn_clamp_val(i32 %546, i32 0, i32 31)
  %548 = load i32, i32* %28, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %549
  store i32 %547, i32* %550, align 4
  %551 = load i32, i32* %28, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = call i32 @bwn_clamp_val(i32 %554, i32 0, i32 31)
  %556 = load i32, i32* %28, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %557
  store i32 %555, i32* %558, align 4
  %559 = load i32, i32* %28, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = call i32 @bwn_clamp_val(i32 %562, i32 0, i32 31)
  %564 = load i32, i32* %28, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %565
  store i32 %563, i32* %566, align 4
  %567 = load i32, i32* %28, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = call i32 @bwn_clamp_val(i32 %570, i32 0, i32 31)
  %572 = load i32, i32* %28, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %573
  store i32 %571, i32* %574, align 4
  %575 = load i32, i32* %28, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %576
  %578 = load i32, i32* %577, align 4
  %579 = call i32 @bwn_clamp_val(i32 %578, i32 0, i32 31)
  %580 = load i32, i32* %28, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %581
  store i32 %579, i32* %582, align 4
  %583 = load i32, i32* %33, align 4
  %584 = shl i32 %583, 13
  %585 = load i32, i32* %28, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = shl i32 %588, 8
  %590 = or i32 %584, %589
  %591 = load i32, i32* %28, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = shl i32 %594, 3
  %596 = or i32 %590, %595
  %597 = load i32, i32* %28, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = or i32 %596, %600
  %602 = load i32, i32* %28, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 %603
  store i32 %601, i32* %604, align 4
  %605 = load i32, i32* %33, align 4
  %606 = shl i32 %605, 13
  %607 = load i32, i32* %28, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %608
  %610 = load i32, i32* %609, align 4
  %611 = shl i32 %610, 8
  %612 = or i32 %606, %611
  %613 = load i32, i32* %28, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = shl i32 %616, 3
  %618 = or i32 %612, %617
  %619 = load i32, i32* %28, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = or i32 %618, %622
  %624 = load i32, i32* %28, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %625
  store i32 %623, i32* %626, align 4
  %627 = load i32, i32* %33, align 4
  %628 = shl i32 %627, 13
  %629 = load i32, i32* %28, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = shl i32 %632, 8
  %634 = or i32 %628, %633
  %635 = load i32, i32* %28, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %636
  %638 = load i32, i32* %637, align 4
  %639 = shl i32 %638, 3
  %640 = or i32 %634, %639
  %641 = load i32, i32* %28, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %642
  %644 = load i32, i32* %643, align 4
  %645 = or i32 %640, %644
  %646 = load i32, i32* %28, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %647
  store i32 %645, i32* %648, align 4
  br label %649

649:                                              ; preds = %534
  %650 = load i32, i32* %28, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %28, align 4
  br label %531

652:                                              ; preds = %531
  store i32 0, i32* %28, align 4
  br label %653

653:                                              ; preds = %737, %652
  %654 = load i32, i32* %28, align 4
  %655 = icmp slt i32 %654, 2
  br i1 %655, label %656, label %740

656:                                              ; preds = %653
  %657 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %658 = load i32, i32* %28, align 4
  %659 = mul nsw i32 %658, 16
  %660 = add nsw i32 338, %659
  %661 = call i32 @BWN_NTAB16(i32 7, i32 %660)
  %662 = load i32, i32* %28, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 %663
  %665 = load i32, i32* %664, align 4
  %666 = call i32 @bwn_ntab_write(%struct.bwn_mac* %657, i32 %661, i32 %665)
  %667 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %668 = load i32, i32* %28, align 4
  %669 = mul nsw i32 %668, 16
  %670 = add nsw i32 339, %669
  %671 = call i32 @BWN_NTAB16(i32 7, i32 %670)
  %672 = load i32, i32* %28, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %673
  %675 = load i32, i32* %674, align 4
  %676 = call i32 @bwn_ntab_write(%struct.bwn_mac* %667, i32 %671, i32 %675)
  %677 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %678 = load i32, i32* %28, align 4
  %679 = mul nsw i32 %678, 16
  %680 = add nsw i32 340, %679
  %681 = call i32 @BWN_NTAB16(i32 7, i32 %680)
  %682 = load i32, i32* %28, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = call i32 @bwn_ntab_write(%struct.bwn_mac* %677, i32 %681, i32 %685)
  %687 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %688 = load i32, i32* %28, align 4
  %689 = mul nsw i32 %688, 16
  %690 = add nsw i32 341, %689
  %691 = call i32 @BWN_NTAB16(i32 7, i32 %690)
  %692 = load i32, i32* %28, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %693
  %695 = load i32, i32* %694, align 4
  %696 = call i32 @bwn_ntab_write(%struct.bwn_mac* %687, i32 %691, i32 %695)
  %697 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %698 = load i32, i32* %28, align 4
  %699 = mul nsw i32 %698, 16
  %700 = add nsw i32 342, %699
  %701 = call i32 @BWN_NTAB16(i32 7, i32 %700)
  %702 = load i32, i32* %28, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %703
  %705 = load i32, i32* %704, align 4
  %706 = call i32 @bwn_ntab_write(%struct.bwn_mac* %697, i32 %701, i32 %705)
  %707 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %708 = load i32, i32* %28, align 4
  %709 = mul nsw i32 %708, 16
  %710 = add nsw i32 343, %709
  %711 = call i32 @BWN_NTAB16(i32 7, i32 %710)
  %712 = load i32, i32* %28, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %713
  %715 = load i32, i32* %714, align 4
  %716 = call i32 @bwn_ntab_write(%struct.bwn_mac* %707, i32 %711, i32 %715)
  %717 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %718 = load i32, i32* %28, align 4
  %719 = mul nsw i32 %718, 16
  %720 = add nsw i32 344, %719
  %721 = call i32 @BWN_NTAB16(i32 7, i32 %720)
  %722 = load i32, i32* %28, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %723
  %725 = load i32, i32* %724, align 4
  %726 = call i32 @bwn_ntab_write(%struct.bwn_mac* %717, i32 %721, i32 %725)
  %727 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %728 = load i32, i32* %28, align 4
  %729 = mul nsw i32 %728, 16
  %730 = add nsw i32 345, %729
  %731 = call i32 @BWN_NTAB16(i32 7, i32 %730)
  %732 = load i32, i32* %28, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %733
  %735 = load i32, i32* %734, align 4
  %736 = call i32 @bwn_ntab_write(%struct.bwn_mac* %727, i32 %731, i32 %735)
  br label %737

737:                                              ; preds = %656
  %738 = load i32, i32* %28, align 4
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %28, align 4
  br label %653

740:                                              ; preds = %653
  br label %741

741:                                              ; preds = %740, %527
  %742 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %743 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %742, i32 815, i32 3)
  %744 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %745 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %744, i32 0, i32 1
  %746 = load i32, i32* %745, align 4
  %747 = icmp eq i32 %746, 4
  br i1 %747, label %753, label %748

748:                                              ; preds = %741
  %749 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %750 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %749, i32 0, i32 1
  %751 = load i32, i32* %750, align 4
  %752 = icmp eq i32 %751, 6
  br i1 %752, label %753, label %756

753:                                              ; preds = %748, %741
  %754 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %755 = call i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac* %754, i32 4, i32 1, i32 3, i32 0, i32 0)
  br label %756

756:                                              ; preds = %753, %748
  %757 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %758 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %757, i32 0, i32 1
  %759 = load i32, i32* %758, align 4
  %760 = icmp eq i32 %759, 3
  br i1 %760, label %771, label %761

761:                                              ; preds = %756
  %762 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %763 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %762, i32 0, i32 1
  %764 = load i32, i32* %763, align 4
  %765 = icmp eq i32 %764, 4
  br i1 %765, label %771, label %766

766:                                              ; preds = %761
  %767 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %768 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %767, i32 0, i32 1
  %769 = load i32, i32* %768, align 4
  %770 = icmp eq i32 %769, 6
  br i1 %770, label %771, label %835

771:                                              ; preds = %766, %761, %756
  %772 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %773 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %772, i32 0, i32 0
  %774 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %773, i32 0, i32 1
  %775 = load i64, i64* %774, align 8
  %776 = icmp ne i64 %775, 0
  br i1 %776, label %777, label %796

777:                                              ; preds = %771
  %778 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %779 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %778, i32 0, i32 0
  %780 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %779, i32 0, i32 0
  %781 = load i32, i32* %780, align 8
  %782 = load i32, i32* @BHND_BFL2_IPALVLSHIFT_3P3, align 4
  %783 = and i32 %781, %782
  %784 = icmp ne i32 %783, 0
  br i1 %784, label %785, label %796

785:                                              ; preds = %777
  %786 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %787 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %786, i32 5, i32 5)
  %788 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %789 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %788, i32 6, i32 48)
  %790 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %791 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %790, i32 7, i32 0)
  %792 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %793 = call i32 @BWN_RF_SET(%struct.bwn_mac* %792, i32 79, i32 1)
  %794 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %795 = call i32 @BWN_RF_SET(%struct.bwn_mac* %794, i32 212, i32 1)
  store i32 31, i32* %23, align 4
  store i32 111, i32* %24, align 4
  store i32 170, i32* %25, align 4
  br label %797

796:                                              ; preds = %777, %771
  store i32 43, i32* %23, align 4
  store i32 127, i32* %24, align 4
  store i32 238, i32* %25, align 4
  br label %797

797:                                              ; preds = %796, %785
  %798 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %799 = call i64 @bwn_current_band(%struct.bwn_mac* %798)
  %800 = load i64, i64* @BWN_BAND_2G, align 8
  %801 = icmp eq i64 %799, %800
  br i1 %801, label %802, label %834

802:                                              ; preds = %797
  store i32 0, i32* %28, align 4
  br label %803

803:                                              ; preds = %830, %802
  %804 = load i32, i32* %28, align 4
  %805 = icmp slt i32 %804, 2
  br i1 %805, label %806, label %833

806:                                              ; preds = %803
  %807 = load i32, i32* %28, align 4
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %819

809:                                              ; preds = %806
  %810 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %811 = load i32, i32* %23, align 4
  %812 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %810, i32 95, i32 %811)
  %813 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %814 = load i32, i32* %24, align 4
  %815 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %813, i32 100, i32 %814)
  %816 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %817 = load i32, i32* %25, align 4
  %818 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %816, i32 102, i32 %817)
  br label %829

819:                                              ; preds = %806
  %820 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %821 = load i32, i32* %23, align 4
  %822 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %820, i32 232, i32 %821)
  %823 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %824 = load i32, i32* %24, align 4
  %825 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %823, i32 233, i32 %824)
  %826 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %827 = load i32, i32* %25, align 4
  %828 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %826, i32 235, i32 %827)
  br label %829

829:                                              ; preds = %819, %809
  br label %830

830:                                              ; preds = %829
  %831 = load i32, i32* %28, align 4
  %832 = add nsw i32 %831, 1
  store i32 %832, i32* %28, align 4
  br label %803

833:                                              ; preds = %803
  br label %834

834:                                              ; preds = %833, %797
  br label %835

835:                                              ; preds = %834, %766
  %836 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %837 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %836)
  %838 = icmp ne i64 %837, 0
  br i1 %838, label %839, label %1005

839:                                              ; preds = %835
  %840 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %841 = call i64 @bwn_current_band(%struct.bwn_mac* %840)
  %842 = load i64, i64* @BWN_BAND_2G, align 8
  %843 = icmp eq i64 %841, %842
  br i1 %843, label %844, label %984

844:                                              ; preds = %839
  %845 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %846 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %845, i32 0, i32 1
  %847 = load i32, i32* %846, align 4
  %848 = icmp eq i32 %847, 3
  br i1 %848, label %859, label %849

849:                                              ; preds = %844
  %850 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %851 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %850, i32 0, i32 1
  %852 = load i32, i32* %851, align 4
  %853 = icmp eq i32 %852, 4
  br i1 %853, label %859, label %854

854:                                              ; preds = %849
  %855 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %856 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %855, i32 0, i32 1
  %857 = load i32, i32* %856, align 4
  %858 = icmp eq i32 %857, 6
  br i1 %858, label %859, label %877

859:                                              ; preds = %854, %849, %844
  store i32 0, i32* %28, align 4
  br label %860

860:                                              ; preds = %873, %859
  %861 = load i32, i32* %28, align 4
  %862 = icmp slt i32 %861, 2
  br i1 %862, label %863, label %876

863:                                              ; preds = %860
  %864 = load i32, i32* %28, align 4
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %869

866:                                              ; preds = %863
  %867 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %868 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %867, i32 81, i32 127)
  br label %872

869:                                              ; preds = %863
  %870 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %871 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %870, i32 214, i32 127)
  br label %872

872:                                              ; preds = %869, %866
  br label %873

873:                                              ; preds = %872
  %874 = load i32, i32* %28, align 4
  %875 = add nsw i32 %874, 1
  store i32 %875, i32* %28, align 4
  br label %860

876:                                              ; preds = %860
  br label %877

877:                                              ; preds = %876, %854
  %878 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %879 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %878, i32 0, i32 1
  %880 = load i32, i32* %879, align 4
  switch i32 %880, label %983 [
    i32 3, label %881
    i32 7, label %915
    i32 8, label %915
    i32 14, label %930
  ]

881:                                              ; preds = %877
  store i32 0, i32* %28, align 4
  br label %882

882:                                              ; preds = %911, %881
  %883 = load i32, i32* %28, align 4
  %884 = icmp slt i32 %883, 2
  br i1 %884, label %885, label %914

885:                                              ; preds = %882
  %886 = load i32, i32* %28, align 4
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %899

888:                                              ; preds = %885
  %889 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %890 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %889, i32 100, i32 19)
  %891 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %892 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %891, i32 95, i32 31)
  %893 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %894 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %893, i32 102, i32 238)
  %895 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %896 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %895, i32 89, i32 138)
  %897 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %898 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %897, i32 128, i32 62)
  br label %910

899:                                              ; preds = %885
  %900 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %901 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %900, i32 105, i32 19)
  %902 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %903 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %902, i32 232, i32 31)
  %904 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %905 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %904, i32 235, i32 238)
  %906 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %907 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %906, i32 222, i32 138)
  %908 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %909 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %908, i32 261, i32 62)
  br label %910

910:                                              ; preds = %899, %888
  br label %911

911:                                              ; preds = %910
  %912 = load i32, i32* %28, align 4
  %913 = add nsw i32 %912, 1
  store i32 %913, i32* %28, align 4
  br label %882

914:                                              ; preds = %882
  br label %983

915:                                              ; preds = %877, %877
  %916 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %917 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %916)
  %918 = icmp ne i64 %917, 0
  br i1 %918, label %924, label %919

919:                                              ; preds = %915
  %920 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %921 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %920, i32 95, i32 20)
  %922 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %923 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %922, i32 232, i32 18)
  br label %929

924:                                              ; preds = %915
  %925 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %926 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %925, i32 95, i32 22)
  %927 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %928 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %927, i32 232, i32 22)
  br label %929

929:                                              ; preds = %924, %919
  br label %983

930:                                              ; preds = %877
  store i32 0, i32* %28, align 4
  br label %931

931:                                              ; preds = %979, %930
  %932 = load i32, i32* %28, align 4
  %933 = icmp slt i32 %932, 2
  br i1 %933, label %934, label %982

934:                                              ; preds = %931
  %935 = load i32, i32* %28, align 4
  %936 = icmp ne i32 %935, 0
  %937 = zext i1 %936 to i64
  %938 = select i1 %936, i32 133, i32 0
  store i32 %938, i32* %34, align 4
  %939 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %940 = load i32, i32* %34, align 4
  %941 = load i32, i32* @R2057_IPA2G_CASCONV_CORE0, align 4
  %942 = add nsw i32 %940, %941
  %943 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %939, i32 %942, i32 19)
  %944 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %945 = load i32, i32* %34, align 4
  %946 = load i32, i32* @R2057_TXMIX2G_TUNE_BOOST_PU_CORE0, align 4
  %947 = add nsw i32 %945, %946
  %948 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %944, i32 %947, i32 33)
  %949 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %950 = load i32, i32* %34, align 4
  %951 = load i32, i32* @R2057_IPA2G_BIAS_FILTER_CORE0, align 4
  %952 = add nsw i32 %950, %951
  %953 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %949, i32 %952, i32 255)
  %954 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %955 = load i32, i32* %34, align 4
  %956 = load i32, i32* @R2057_PAD2G_IDACS_CORE0, align 4
  %957 = add nsw i32 %955, %956
  %958 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %954, i32 %957, i32 136)
  %959 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %960 = load i32, i32* %34, align 4
  %961 = load i32, i32* @R2057_PAD2G_TUNE_PUS_CORE0, align 4
  %962 = add nsw i32 %960, %961
  %963 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %959, i32 %962, i32 35)
  %964 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %965 = load i32, i32* %34, align 4
  %966 = load i32, i32* @R2057_IPA2G_IMAIN_CORE0, align 4
  %967 = add nsw i32 %965, %966
  %968 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %964, i32 %967, i32 22)
  %969 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %970 = load i32, i32* %34, align 4
  %971 = load i32, i32* @R2057_PAD_BIAS_FILTER_BWS_CORE0, align 4
  %972 = add nsw i32 %970, %971
  %973 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %969, i32 %972, i32 62)
  %974 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %975 = load i32, i32* %34, align 4
  %976 = load i32, i32* @R2057_BACKUP1_CORE0, align 4
  %977 = add nsw i32 %975, %976
  %978 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %974, i32 %977, i32 16)
  br label %979

979:                                              ; preds = %934
  %980 = load i32, i32* %28, align 4
  %981 = add nsw i32 %980, 1
  store i32 %981, i32* %28, align 4
  br label %931

982:                                              ; preds = %931
  br label %983

983:                                              ; preds = %877, %982, %929, %914
  br label %1004

984:                                              ; preds = %839
  %985 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %986 = call i32 @bwn_get_centre_freq(%struct.bwn_mac* %985)
  store i32 %986, i32* %35, align 4
  %987 = load i32, i32* %35, align 4
  %988 = icmp sge i32 %987, 5180
  br i1 %988, label %989, label %992

989:                                              ; preds = %984
  %990 = load i32, i32* %35, align 4
  %991 = icmp sle i32 %990, 5230
  br i1 %991, label %998, label %992

992:                                              ; preds = %989, %984
  %993 = load i32, i32* %35, align 4
  %994 = icmp sge i32 %993, 5745
  br i1 %994, label %995, label %1003

995:                                              ; preds = %992
  %996 = load i32, i32* %35, align 4
  %997 = icmp sle i32 %996, 5805
  br i1 %997, label %998, label %1003

998:                                              ; preds = %995, %989
  %999 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1000 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %999, i32 125, i32 255)
  %1001 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1002 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1001, i32 254, i32 255)
  br label %1003

1003:                                             ; preds = %998, %995, %992
  br label %1004

1004:                                             ; preds = %1003, %983
  br label %1033

1005:                                             ; preds = %835
  %1006 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %1007 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %1006, i32 0, i32 1
  %1008 = load i32, i32* %1007, align 4
  %1009 = icmp ne i32 %1008, 5
  br i1 %1009, label %1010, label %1032

1010:                                             ; preds = %1005
  store i32 0, i32* %28, align 4
  br label %1011

1011:                                             ; preds = %1028, %1010
  %1012 = load i32, i32* %28, align 4
  %1013 = icmp slt i32 %1012, 2
  br i1 %1013, label %1014, label %1031

1014:                                             ; preds = %1011
  %1015 = load i32, i32* %28, align 4
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1022

1017:                                             ; preds = %1014
  %1018 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1019 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1018, i32 92, i32 97)
  %1020 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1021 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1020, i32 81, i32 112)
  br label %1027

1022:                                             ; preds = %1014
  %1023 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1024 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1023, i32 225, i32 97)
  %1025 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1026 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1025, i32 214, i32 112)
  br label %1027

1027:                                             ; preds = %1022, %1017
  br label %1028

1028:                                             ; preds = %1027
  %1029 = load i32, i32* %28, align 4
  %1030 = add nsw i32 %1029, 1
  store i32 %1030, i32* %28, align 4
  br label %1011

1031:                                             ; preds = %1011
  br label %1032

1032:                                             ; preds = %1031, %1005
  br label %1033

1033:                                             ; preds = %1032, %1004
  %1034 = load %struct.bwn_phy*, %struct.bwn_phy** %4, align 8
  %1035 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %1034, i32 0, i32 1
  %1036 = load i32, i32* %1035, align 4
  %1037 = icmp eq i32 %1036, 4
  br i1 %1037, label %1038, label %1070

1038:                                             ; preds = %1033
  %1039 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1040 = call i32 @BWN_NTAB16(i32 8, i32 5)
  %1041 = call i32 @bwn_ntab_write(%struct.bwn_mac* %1039, i32 %1040, i32 32)
  %1042 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1043 = call i32 @BWN_NTAB16(i32 8, i32 21)
  %1044 = call i32 @bwn_ntab_write(%struct.bwn_mac* %1042, i32 %1043, i32 32)
  store i32 0, i32* %28, align 4
  br label %1045

1045:                                             ; preds = %1066, %1038
  %1046 = load i32, i32* %28, align 4
  %1047 = icmp slt i32 %1046, 2
  br i1 %1047, label %1048, label %1069

1048:                                             ; preds = %1045
  %1049 = load i32, i32* %28, align 4
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1058

1051:                                             ; preds = %1048
  %1052 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1053 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1052, i32 417, i32 0)
  %1054 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1055 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1054, i32 418, i32 63)
  %1056 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1057 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1056, i32 422, i32 63)
  br label %1065

1058:                                             ; preds = %1048
  %1059 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1060 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1059, i32 423, i32 0)
  %1061 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1062 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1061, i32 427, i32 63)
  %1063 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1064 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %1063, i32 428, i32 63)
  br label %1065

1065:                                             ; preds = %1058, %1051
  br label %1066

1066:                                             ; preds = %1065
  %1067 = load i32, i32* %28, align 4
  %1068 = add nsw i32 %1067, 1
  store i32 %1068, i32* %28, align 4
  br label %1045

1069:                                             ; preds = %1045
  br label %1113

1070:                                             ; preds = %1033
  %1071 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1072 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %1073 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %1071, i32 %1072, i32 4)
  %1074 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1075 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %1076 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %1074, i32 %1075, i32 4)
  %1077 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1078 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %1079 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %1077, i32 %1078, i32 4)
  %1080 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1081 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %1082 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %1080, i32 %1081, i32 4)
  %1083 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1084 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %1085 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %1083, i32 %1084, i32 -2)
  %1086 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1087 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %1088 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %1086, i32 %1087, i32 1)
  %1089 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1090 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %1091 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %1089, i32 %1090, i32 -2)
  %1092 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1093 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %1094 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %1092, i32 %1093, i32 1)
  %1095 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1096 = call i32 @BWN_NTAB16(i32 8, i32 5)
  %1097 = call i32 @bwn_ntab_write(%struct.bwn_mac* %1095, i32 %1096, i32 0)
  %1098 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1099 = call i32 @BWN_NTAB16(i32 8, i32 21)
  %1100 = call i32 @bwn_ntab_write(%struct.bwn_mac* %1098, i32 %1099, i32 0)
  %1101 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1102 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %1103 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %1101, i32 %1102, i32 -5)
  %1104 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1105 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %1106 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %1104, i32 %1105, i32 -5)
  %1107 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1108 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %1109 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %1107, i32 %1108, i32 -5)
  %1110 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1111 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %1112 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %1110, i32 %1111, i32 -5)
  br label %1113

1113:                                             ; preds = %1070, %1069
  %1114 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1115 = load i32, i32* @BWN_NPHY_ENDROP_TLEN, align 4
  %1116 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %1114, i32 %1115, i32 2)
  %1117 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1118 = call i32 @BWN_NTAB32(i32 16, i32 256)
  %1119 = call i32 @bwn_ntab_write(%struct.bwn_mac* %1117, i32 %1118, i32 20)
  %1120 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1121 = call i32 @BWN_NTAB8(i32 7, i32 312)
  %1122 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %1123 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %1120, i32 %1121, i32 2, i32* %1122)
  %1124 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1125 = call i32 @BWN_NTAB16(i32 7, i32 321)
  %1126 = call i32 @bwn_ntab_write(%struct.bwn_mac* %1124, i32 %1125, i32 119)
  %1127 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1128 = call i32 @BWN_NTAB8(i32 7, i32 307)
  %1129 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %1130 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %1127, i32 %1128, i32 3, i32* %1129)
  %1131 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1132 = call i32 @BWN_NTAB8(i32 7, i32 326)
  %1133 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %1134 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %1131, i32 %1132, i32 2, i32* %1133)
  %1135 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1136 = call i32 @BWN_NTAB16(i32 7, i32 291)
  %1137 = call i32 @bwn_ntab_write(%struct.bwn_mac* %1135, i32 %1136, i32 119)
  %1138 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1139 = call i32 @BWN_NTAB16(i32 7, i32 298)
  %1140 = call i32 @bwn_ntab_write(%struct.bwn_mac* %1138, i32 %1139, i32 119)
  %1141 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1142 = call i32 @BWN_NTAB32(i32 16, i32 2)
  %1143 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %1144 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %1141, i32 %1142, i32 1, i32* %1143)
  %1145 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1146 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %1145)
  %1147 = icmp ne i64 %1146, 0
  %1148 = zext i1 %1147 to i64
  %1149 = select i1 %1147, i32 333, i32 397
  %1150 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 %1149, i32* %1150, align 4
  %1151 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1152 = call i32 @BWN_NTAB32(i32 16, i32 2)
  %1153 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %1154 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %1151, i32 %1152, i32 2, i32* %1153)
  %1155 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1156 = call i32 @BWN_NTAB32(i32 16, i32 126)
  %1157 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %1158 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %1155, i32 %1156, i32 1, i32* %1157)
  %1159 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1160 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %1159)
  %1161 = icmp ne i64 %1160, 0
  %1162 = zext i1 %1161 to i64
  %1163 = select i1 %1161, i32 333, i32 397
  %1164 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 %1163, i32* %1164, align 4
  %1165 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1166 = call i32 @BWN_NTAB32(i32 16, i32 126)
  %1167 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %1168 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %1165, i32 %1166, i32 2, i32* %1167)
  %1169 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %1170 = call i32 @bwn_nphy_gain_ctl_workarounds(%struct.bwn_mac* %1169)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #2

declare dso_local i32 @bwn_ntab_write(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_NTAB16(i32, i32) #2

declare dso_local i32 @bwn_ntab_read(%struct.bwn_mac*, i32) #2

declare dso_local i32 @BWN_NTAB32(i32, i32) #2

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i32*) #2

declare dso_local i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac*, i32, i32*, i32*, i32) #2

declare dso_local i32 @nitems(i32*) #2

declare dso_local i64 @bwn_nphy_ipa(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_read_lpf_ctl(%struct.bwn_mac*, i32) #2

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #2

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #2

declare dso_local i64 @bwn_is_40mhz(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_clamp_val(i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @bwn_get_centre_freq(%struct.bwn_mac*) #2

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_NTAB8(i32, i32) #2

declare dso_local i32 @bwn_ntab_read_bulk(%struct.bwn_mac*, i32, i32, i32*) #2

declare dso_local i32 @bwn_nphy_gain_ctl_workarounds(%struct.bwn_mac*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
