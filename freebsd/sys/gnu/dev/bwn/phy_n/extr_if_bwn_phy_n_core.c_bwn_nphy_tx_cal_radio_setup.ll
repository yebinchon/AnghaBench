; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_cal_radio_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_cal_radio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32*, i64, i64 }

@B2055_CAL_RVARCTL = common dso_local global i32 0, align 4
@B2055_CAL_LPOCTL = common dso_local global i32 0, align 4
@B2055_CAL_TS = common dso_local global i32 0, align 4
@B2055_CAL_RCCALRTS = common dso_local global i32 0, align 4
@B2055_CAL_RCALRTS = common dso_local global i32 0, align 4
@B2055_PADDRV = common dso_local global i32 0, align 4
@B2055_XOCTL1 = common dso_local global i32 0, align 4
@B2055_XOCTL2 = common dso_local global i32 0, align 4
@B2055_XOREGUL = common dso_local global i32 0, align 4
@B2055_XOMISC = common dso_local global i32 0, align 4
@B2055_PLL_LFC1 = common dso_local global i32 0, align 4
@BWN_BAND_5G = common dso_local global i64 0, align 8
@B2055_C1_TX_RF_IQCAL1 = common dso_local global i32 0, align 4
@B2055_C1_TX_RF_IQCAL2 = common dso_local global i32 0, align 4
@B2055_C2_TX_RF_IQCAL1 = common dso_local global i32 0, align 4
@B2055_C2_TX_RF_IQCAL2 = common dso_local global i32 0, align 4
@B2055_C1_PWRDET_RXTX = common dso_local global i32 0, align 4
@B2055_C2_PWRDET_RXTX = common dso_local global i32 0, align 4
@BWN_NPHY_BANDCTL = common dso_local global i32 0, align 4
@BWN_NPHY_BANDCTL_5GHZ = common dso_local global i32 0, align 4
@B2055_C1_TX_BB_MXGM = common dso_local global i32 0, align 4
@B2055_C2_TX_BB_MXGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tx_cal_radio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tx_cal_radio_setup(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  store %struct.bwn_phy* %10, %struct.bwn_phy** %3, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %12, i32 0, i32 1
  %14 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %13, align 8
  store %struct.bwn_phy_n* %14, %struct.bwn_phy_n** %4, align 8
  %15 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %16 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %19 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 19
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %24 = call i32 @bwn_nphy_tx_cal_radio_setup_rev19(%struct.bwn_mac* %23)
  br label %370

25:                                               ; preds = %1
  %26 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %27 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 7
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %32 = call i32 @bwn_nphy_tx_cal_radio_setup_rev7(%struct.bwn_mac* %31)
  br label %369

33:                                               ; preds = %25
  %34 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %35 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %38, label %284

38:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %280, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %283

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 8192, i32 12288
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = mul nsw i32 %47, 11
  store i32 %48, i32* %7, align 4
  %49 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %50 = load i32, i32* @B2055_CAL_RVARCTL, align 4
  %51 = call i32 @BWN_RF_READ(%struct.bwn_mac* %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 0
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %58 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %59 = call i32 @BWN_RF_READ(%struct.bwn_mac* %57, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %66 = load i32, i32* @B2055_CAL_TS, align 4
  %67 = call i32 @BWN_RF_READ(%struct.bwn_mac* %65, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %74 = load i32, i32* @B2055_CAL_RCCALRTS, align 4
  %75 = call i32 @BWN_RF_READ(%struct.bwn_mac* %73, i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %82 = load i32, i32* @B2055_CAL_RCALRTS, align 4
  %83 = call i32 @BWN_RF_READ(%struct.bwn_mac* %81, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %90 = load i32, i32* @B2055_PADDRV, align 4
  %91 = call i32 @BWN_RF_READ(%struct.bwn_mac* %89, i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 5
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %98 = load i32, i32* @B2055_XOCTL1, align 4
  %99 = call i32 @BWN_RF_READ(%struct.bwn_mac* %97, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 6
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %106 = load i32, i32* @B2055_XOCTL2, align 4
  %107 = call i32 @BWN_RF_READ(%struct.bwn_mac* %105, i32 %106)
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 7
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %114 = load i32, i32* @B2055_XOREGUL, align 4
  %115 = call i32 @BWN_RF_READ(%struct.bwn_mac* %113, i32 %114)
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %122 = load i32, i32* @B2055_XOMISC, align 4
  %123 = call i32 @BWN_RF_READ(%struct.bwn_mac* %121, i32 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 9
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %130 = load i32, i32* @B2055_PLL_LFC1, align 4
  %131 = call i32 @BWN_RF_READ(%struct.bwn_mac* %129, i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 10
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %138 = call i64 @bwn_current_band(%struct.bwn_mac* %137)
  %139 = load i64, i64* @BWN_BAND_5G, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %199

141:                                              ; preds = %42
  %142 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @B2055_CAL_RVARCTL, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %142, i32 %145, i32 10)
  %147 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %147, i32 %150, i32 64)
  %152 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @B2055_CAL_TS, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %152, i32 %155, i32 85)
  %157 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @B2055_CAL_RCCALRTS, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %157, i32 %160, i32 0)
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @B2055_CAL_RCALRTS, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %162, i32 %165, i32 0)
  %167 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %168 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %141
  %172 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @B2055_PADDRV, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %172, i32 %175, i32 4)
  %177 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @B2055_XOCTL1, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %177, i32 %180, i32 1)
  br label %193

182:                                              ; preds = %141
  %183 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @B2055_PADDRV, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %183, i32 %186, i32 0)
  %188 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @B2055_XOCTL1, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %188, i32 %191, i32 47)
  br label %193

193:                                              ; preds = %182, %171
  %194 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @B2055_XOCTL2, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %194, i32 %197, i32 0)
  br label %264

199:                                              ; preds = %42
  %200 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @B2055_CAL_RVARCTL, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %200, i32 %203, i32 6)
  %205 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %205, i32 %208, i32 64)
  %210 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @B2055_CAL_TS, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %210, i32 %213, i32 85)
  %215 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @B2055_CAL_RCCALRTS, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %215, i32 %218, i32 0)
  %220 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @B2055_CAL_RCALRTS, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %220, i32 %223, i32 0)
  %225 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @B2055_XOCTL1, align 4
  %228 = or i32 %226, %227
  %229 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %225, i32 %228, i32 0)
  %230 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %231 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %252

234:                                              ; preds = %199
  %235 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @B2055_PADDRV, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %235, i32 %238, i32 6)
  %240 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @B2055_XOCTL2, align 4
  %243 = or i32 %241, %242
  %244 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %245 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %247, 5
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 17, i32 1
  %251 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %240, i32 %243, i32 %250)
  br label %263

252:                                              ; preds = %199
  %253 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* @B2055_PADDRV, align 4
  %256 = or i32 %254, %255
  %257 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %253, i32 %256, i32 0)
  %258 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* @B2055_XOCTL2, align 4
  %261 = or i32 %259, %260
  %262 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %258, i32 %261, i32 0)
  br label %263

263:                                              ; preds = %252, %234
  br label %264

264:                                              ; preds = %263, %193
  %265 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @B2055_XOREGUL, align 4
  %268 = or i32 %266, %267
  %269 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %265, i32 %268, i32 0)
  %270 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @B2055_XOMISC, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %270, i32 %273, i32 0)
  %275 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* @B2055_PLL_LFC1, align 4
  %278 = or i32 %276, %277
  %279 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %275, i32 %278, i32 0)
  br label %280

280:                                              ; preds = %264
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %39

283:                                              ; preds = %39
  br label %368

284:                                              ; preds = %33
  %285 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %286 = load i32, i32* @B2055_C1_TX_RF_IQCAL1, align 4
  %287 = call i32 @BWN_RF_READ(%struct.bwn_mac* %285, i32 %286)
  %288 = load i32*, i32** %5, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  store i32 %287, i32* %289, align 4
  %290 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %291 = load i32, i32* @B2055_C1_TX_RF_IQCAL1, align 4
  %292 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %290, i32 %291, i32 41)
  %293 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %294 = load i32, i32* @B2055_C1_TX_RF_IQCAL2, align 4
  %295 = call i32 @BWN_RF_READ(%struct.bwn_mac* %293, i32 %294)
  %296 = load i32*, i32** %5, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  store i32 %295, i32* %297, align 4
  %298 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %299 = load i32, i32* @B2055_C1_TX_RF_IQCAL2, align 4
  %300 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %298, i32 %299, i32 84)
  %301 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %302 = load i32, i32* @B2055_C2_TX_RF_IQCAL1, align 4
  %303 = call i32 @BWN_RF_READ(%struct.bwn_mac* %301, i32 %302)
  %304 = load i32*, i32** %5, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 2
  store i32 %303, i32* %305, align 4
  %306 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %307 = load i32, i32* @B2055_C2_TX_RF_IQCAL1, align 4
  %308 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %306, i32 %307, i32 41)
  %309 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %310 = load i32, i32* @B2055_C2_TX_RF_IQCAL2, align 4
  %311 = call i32 @BWN_RF_READ(%struct.bwn_mac* %309, i32 %310)
  %312 = load i32*, i32** %5, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 3
  store i32 %311, i32* %313, align 4
  %314 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %315 = load i32, i32* @B2055_C2_TX_RF_IQCAL2, align 4
  %316 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %314, i32 %315, i32 84)
  %317 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %318 = load i32, i32* @B2055_C1_PWRDET_RXTX, align 4
  %319 = call i32 @BWN_RF_READ(%struct.bwn_mac* %317, i32 %318)
  %320 = load i32*, i32** %5, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 3
  store i32 %319, i32* %321, align 4
  %322 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %323 = load i32, i32* @B2055_C2_PWRDET_RXTX, align 4
  %324 = call i32 @BWN_RF_READ(%struct.bwn_mac* %322, i32 %323)
  %325 = load i32*, i32** %5, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 4
  store i32 %324, i32* %326, align 4
  %327 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %328 = load i32, i32* @BWN_NPHY_BANDCTL, align 4
  %329 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %327, i32 %328)
  %330 = load i32, i32* @BWN_NPHY_BANDCTL_5GHZ, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %340, label %333

333:                                              ; preds = %284
  %334 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %335 = load i32, i32* @B2055_C1_PWRDET_RXTX, align 4
  %336 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %334, i32 %335, i32 4)
  %337 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %338 = load i32, i32* @B2055_C2_PWRDET_RXTX, align 4
  %339 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %337, i32 %338, i32 4)
  br label %347

340:                                              ; preds = %284
  %341 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %342 = load i32, i32* @B2055_C1_PWRDET_RXTX, align 4
  %343 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %341, i32 %342, i32 32)
  %344 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %345 = load i32, i32* @B2055_C2_PWRDET_RXTX, align 4
  %346 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %344, i32 %345, i32 32)
  br label %347

347:                                              ; preds = %340, %333
  %348 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %349 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp slt i32 %351, 2
  br i1 %352, label %353, label %360

353:                                              ; preds = %347
  %354 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %355 = load i32, i32* @B2055_C1_TX_BB_MXGM, align 4
  %356 = call i32 @BWN_RF_SET(%struct.bwn_mac* %354, i32 %355, i32 32)
  %357 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %358 = load i32, i32* @B2055_C2_TX_BB_MXGM, align 4
  %359 = call i32 @BWN_RF_SET(%struct.bwn_mac* %357, i32 %358, i32 32)
  br label %367

360:                                              ; preds = %347
  %361 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %362 = load i32, i32* @B2055_C1_TX_BB_MXGM, align 4
  %363 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %361, i32 %362, i32 -33)
  %364 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %365 = load i32, i32* @B2055_C2_TX_BB_MXGM, align 4
  %366 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %364, i32 %365, i32 -33)
  br label %367

367:                                              ; preds = %360, %353
  br label %368

368:                                              ; preds = %367, %283
  br label %369

369:                                              ; preds = %368, %30
  br label %370

370:                                              ; preds = %369, %22
  ret void
}

declare dso_local i32 @bwn_nphy_tx_cal_radio_setup_rev19(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tx_cal_radio_setup_rev7(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
