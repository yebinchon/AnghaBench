; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_cal_phy_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_cal_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32*, i64 }

@BWN_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_BBCFG = common dso_local global i32 0, align 4
@BWN_NPHY_BBCFG_RSTRX = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_PA = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_TRSW = common dso_local global i32 0, align 4
@BWN_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@BWN_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@R2057_OVR_REG0 = common dso_local global i32 0, align 4
@BWN_BAND_2G = common dso_local global i64 0, align 8
@R2057_PAD2G_TUNE_PUS_CORE0 = common dso_local global i32 0, align 4
@R2057_PAD2G_TUNE_PUS_CORE1 = common dso_local global i32 0, align 4
@R2057_IPA5G_CASCOFFV_PU_CORE0 = common dso_local global i32 0, align 4
@R2057_IPA5G_CASCOFFV_PU_CORE1 = common dso_local global i32 0, align 4
@BWN_BAND_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tx_cal_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tx_cal_phy_setup(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  store %struct.bwn_phy* %8, %struct.bwn_phy** %3, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %10, i32 0, i32 1
  %12 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %11, align 8
  store %struct.bwn_phy_n* %12, %struct.bwn_phy_n** %4, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %14, i32 0, i32 1
  %16 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %15, align 8
  %17 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %21 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %25 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %26 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %24, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %30 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 3
  br i1 %33, label %34, label %210

34:                                               ; preds = %1
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %36 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %37 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %35, i32 %36, i32 61695, i32 2560)
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %39 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %40 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %38, i32 %39, i32 61695, i32 2560)
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %42 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %43 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, 1536
  %51 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %47, i32 %48, i32 %50)
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %53 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %54 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %59 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, 1536
  %62 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %58, i32 %59, i32 %61)
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %64 = load i32, i32* @BWN_NPHY_BBCFG, align 4
  %65 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %63, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %69 = load i32, i32* @BWN_NPHY_BBCFG, align 4
  %70 = load i32, i32* @BWN_NPHY_BBCFG_RSTRX, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %71, 65535
  %73 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %68, i32 %69, i32 %72)
  %74 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %75 = call i32 @BWN_NTAB16(i32 8, i32 3)
  %76 = call i32 @bwn_ntab_read(%struct.bwn_mac* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %81 = call i32 @BWN_NTAB16(i32 8, i32 3)
  %82 = call i32 @bwn_ntab_write(%struct.bwn_mac* %80, i32 %81, i32 0)
  %83 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %84 = call i32 @BWN_NTAB16(i32 8, i32 19)
  %85 = call i32 @bwn_ntab_read(%struct.bwn_mac* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %90 = call i32 @BWN_NTAB16(i32 8, i32 19)
  %91 = call i32 @bwn_ntab_write(%struct.bwn_mac* %89, i32 %90, i32 0)
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %93 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  %94 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %92, i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 7
  store i32 %94, i32* %96, align 4
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %98 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  %99 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %97, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  store i32 %99, i32* %101, align 4
  %102 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %103 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %34
  %107 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %108 = load i32, i32* @N_INTC_OVERRIDE_PA, align 4
  %109 = call i32 @bwn_nphy_rf_ctl_intc_override(%struct.bwn_mac* %107, i32 %108, i32 1, i32 3)
  br label %114

110:                                              ; preds = %34
  %111 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %112 = load i32, i32* @N_INTC_OVERRIDE_PA, align 4
  %113 = call i32 @bwn_nphy_rf_ctl_intc_override(%struct.bwn_mac* %111, i32 %112, i32 0, i32 3)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %116 = load i32, i32* @N_INTC_OVERRIDE_TRSW, align 4
  %117 = call i32 @bwn_nphy_rf_ctl_intc_override(%struct.bwn_mac* %115, i32 %116, i32 2, i32 1)
  %118 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %119 = load i32, i32* @N_INTC_OVERRIDE_TRSW, align 4
  %120 = call i32 @bwn_nphy_rf_ctl_intc_override(%struct.bwn_mac* %118, i32 %119, i32 8, i32 2)
  %121 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %122 = load i32, i32* @BWN_NPHY_PAPD_EN0, align 4
  %123 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %121, i32 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 9
  store i32 %123, i32* %125, align 4
  %126 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %127 = load i32, i32* @BWN_NPHY_PAPD_EN1, align 4
  %128 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %126, i32 %127)
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 10
  store i32 %128, i32* %130, align 4
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %132 = load i32, i32* @BWN_NPHY_PAPD_EN0, align 4
  %133 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %131, i32 %132, i32 -2)
  %134 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %135 = load i32, i32* @BWN_NPHY_PAPD_EN1, align 4
  %136 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %134, i32 %135, i32 -2)
  %137 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %138 = call i32 @bwn_nphy_read_lpf_ctl(%struct.bwn_mac* %137, i32 0)
  store i32 %138, i32* %6, align 4
  %139 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %140 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sge i32 %141, 19
  br i1 %142, label %143, label %147

143:                                              ; preds = %114
  %144 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @bwn_nphy_rf_ctl_override_rev19(%struct.bwn_mac* %144, i32 128, i32 %145, i32 0, i32 0, i32 1)
  br label %157

147:                                              ; preds = %114
  %148 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %149 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sge i32 %150, 7
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac* %153, i32 128, i32 %154, i32 0, i32 0, i32 1)
  br label %156

156:                                              ; preds = %152, %147
  br label %157

157:                                              ; preds = %156, %143
  %158 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %159 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %209

162:                                              ; preds = %157
  %163 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %164 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp sge i32 %165, 19
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %169 = call i32 @bwn_nphy_rf_ctl_override_rev19(%struct.bwn_mac* %168, i32 8, i32 0, i32 3, i32 0, i32 0)
  br label %208

170:                                              ; preds = %162
  %171 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %172 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp sge i32 %173, 8
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %177 = call i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac* %176, i32 8, i32 0, i32 3, i32 0, i32 0)
  br label %207

178:                                              ; preds = %170
  %179 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %180 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 7
  br i1 %182, label %183, label %206

183:                                              ; preds = %178
  %184 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %185 = load i32, i32* @R2057_OVR_REG0, align 4
  %186 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %184, i32 %185, i32 16, i32 16)
  %187 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %188 = call i64 @bwn_current_band(%struct.bwn_mac* %187)
  %189 = load i64, i64* @BWN_BAND_2G, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %183
  %192 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %193 = load i32, i32* @R2057_PAD2G_TUNE_PUS_CORE0, align 4
  %194 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %192, i32 %193, i32 -2, i32 0)
  %195 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %196 = load i32, i32* @R2057_PAD2G_TUNE_PUS_CORE1, align 4
  %197 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %195, i32 %196, i32 -2, i32 0)
  br label %205

198:                                              ; preds = %183
  %199 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %200 = load i32, i32* @R2057_IPA5G_CASCOFFV_PU_CORE0, align 4
  %201 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %199, i32 %200, i32 -2, i32 0)
  %202 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %203 = load i32, i32* @R2057_IPA5G_CASCOFFV_PU_CORE1, align 4
  %204 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %202, i32 %203, i32 -2, i32 0)
  br label %205

205:                                              ; preds = %198, %191
  br label %206

206:                                              ; preds = %205, %178
  br label %207

207:                                              ; preds = %206, %175
  br label %208

208:                                              ; preds = %207, %167
  br label %209

209:                                              ; preds = %208, %157
  br label %277

210:                                              ; preds = %1
  %211 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %212 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %213 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %211, i32 %212, i32 4095, i32 40960)
  %214 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %215 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %216 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %214, i32 %215, i32 4095, i32 40960)
  %217 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %218 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %219 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %217, i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load i32*, i32** %5, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  store i32 %220, i32* %222, align 4
  %223 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %224 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %225 = load i32, i32* %6, align 4
  %226 = or i32 %225, 12288
  %227 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %223, i32 %224, i32 %226)
  %228 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %229 = call i32 @BWN_NTAB16(i32 8, i32 2)
  %230 = call i32 @bwn_ntab_read(%struct.bwn_mac* %228, i32 %229)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %6, align 4
  %235 = or i32 %234, 8192
  store i32 %235, i32* %6, align 4
  %236 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %237 = call i32 @BWN_NTAB16(i32 8, i32 2)
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @bwn_ntab_write(%struct.bwn_mac* %236, i32 %237, i32 %238)
  %240 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %241 = call i32 @BWN_NTAB16(i32 8, i32 18)
  %242 = call i32 @bwn_ntab_read(%struct.bwn_mac* %240, i32 %241)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load i32*, i32** %5, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 4
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %6, align 4
  %247 = or i32 %246, 8192
  store i32 %247, i32* %6, align 4
  %248 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %249 = call i32 @BWN_NTAB16(i32 8, i32 18)
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @bwn_ntab_write(%struct.bwn_mac* %248, i32 %249, i32 %250)
  %252 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %253 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  %254 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %252, i32 %253)
  %255 = load i32*, i32** %5, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 5
  store i32 %254, i32* %256, align 4
  %257 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %258 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  %259 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %257, i32 %258)
  %260 = load i32*, i32** %5, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 6
  store i32 %259, i32* %261, align 4
  %262 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %263 = call i64 @bwn_current_band(%struct.bwn_mac* %262)
  %264 = load i64, i64* @BWN_BAND_5G, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %210
  store i32 384, i32* %6, align 4
  br label %268

267:                                              ; preds = %210
  store i32 288, i32* %6, align 4
  br label %268

268:                                              ; preds = %267, %266
  %269 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %270 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %269, i32 %270, i32 %271)
  %273 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %274 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %273, i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %268, %209
  ret void
}

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_ntab_read(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

declare dso_local i32 @bwn_ntab_write(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_nphy_rf_ctl_intc_override(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_nphy_read_lpf_ctl(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_nphy_rf_ctl_override_rev19(%struct.bwn_mac*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bwn_nphy_rf_ctl_override_rev7(%struct.bwn_mac*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
