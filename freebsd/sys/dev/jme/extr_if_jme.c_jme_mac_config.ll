; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_mac_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i64, i64, i32, i32, i32 }
%struct.mii_data = type { i32 }

@JME_GHC = common dso_local global i32 0, align 4
@GHC_RESET = common dso_local global i32 0, align 4
@JME_RXMAC = common dso_local global i32 0, align 4
@RXMAC_FC_ENB = common dso_local global i32 0, align 4
@JME_TXMAC = common dso_local global i32 0, align 4
@TXMAC_CARRIER_EXT = common dso_local global i32 0, align 4
@TXMAC_FRAME_BURST = common dso_local global i32 0, align 4
@JME_TXPFC = common dso_local global i32 0, align 4
@TXPFC_PAUSE_ENB = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@GHC_FULL_DUPLEX = common dso_local global i32 0, align 4
@RXMAC_COLL_DET_ENB = common dso_local global i32 0, align 4
@TXMAC_COLL_ENB = common dso_local global i32 0, align 4
@TXMAC_CARRIER_SENSE = common dso_local global i32 0, align 4
@TXMAC_BACKOFF = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@JME_TXTRHD = common dso_local global i32 0, align 4
@TXTRHD_RT_PERIOD_ENB = common dso_local global i32 0, align 4
@TXTRHD_RT_LIMIT_ENB = common dso_local global i32 0, align 4
@GHC_SPEED_10 = common dso_local global i32 0, align 4
@GHC_TX_OFFLD_CLK_100 = common dso_local global i32 0, align 4
@GHC_TX_MAC_CLK_100 = common dso_local global i32 0, align 4
@GHC_SPEED_100 = common dso_local global i32 0, align 4
@JME_FLAG_FASTETH = common dso_local global i32 0, align 4
@GHC_SPEED_1000 = common dso_local global i32 0, align 4
@GHC_TX_OFFLD_CLK_1000 = common dso_local global i32 0, align 4
@GHC_TX_MAC_CLK_1000 = common dso_local global i32 0, align 4
@DEVICEID_JMC250 = common dso_local global i64 0, align 8
@DEVICEREVID_JMC250_A2 = common dso_local global i64 0, align 8
@JME_GPREG1 = common dso_local global i32 0, align 4
@GPREG1_HDPX_FIX = common dso_local global i32 0, align 4
@JME_FLAG_TXCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_mac_config(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %10 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %11 = call i32 @JME_LOCK_ASSERT(%struct.jme_softc* %10)
  %12 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %13 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.mii_data* @device_get_softc(i32 %14)
  store %struct.mii_data* %15, %struct.mii_data** %3, align 8
  %16 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %17 = load i32, i32* @JME_GHC, align 4
  %18 = load i32, i32* @GHC_RESET, align 4
  %19 = call i32 @CSR_WRITE_4(%struct.jme_softc* %16, i32 %17, i32 %18)
  %20 = call i32 @DELAY(i32 10)
  %21 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %22 = load i32, i32* @JME_GHC, align 4
  %23 = call i32 @CSR_WRITE_4(%struct.jme_softc* %21, i32 %22, i32 0)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %25 = load i32, i32* @JME_RXMAC, align 4
  %26 = call i32 @CSR_READ_4(%struct.jme_softc* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @RXMAC_FC_ENB, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %32 = load i32, i32* @JME_TXMAC, align 4
  %33 = call i32 @CSR_READ_4(%struct.jme_softc* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @TXMAC_CARRIER_EXT, align 4
  %35 = load i32, i32* @TXMAC_FRAME_BURST, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %41 = load i32, i32* @JME_TXPFC, align 4
  %42 = call i32 @CSR_READ_4(%struct.jme_softc* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @TXPFC_PAUSE_ENB, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %48 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IFM_OPTIONS(i32 %49)
  %51 = load i32, i32* @IFM_FDX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %1
  %55 = load i32, i32* @GHC_FULL_DUPLEX, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @RXMAC_COLL_DET_ENB, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @TXMAC_COLL_ENB, align 4
  %63 = load i32, i32* @TXMAC_CARRIER_SENSE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @TXMAC_BACKOFF, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @TXMAC_CARRIER_EXT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @TXMAC_FRAME_BURST, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %75 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @IFM_OPTIONS(i32 %76)
  %78 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %54
  %82 = load i32, i32* @TXPFC_PAUSE_ENB, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %54
  %86 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %87 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @IFM_OPTIONS(i32 %88)
  %90 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @RXMAC_FC_ENB, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %85
  %98 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %99 = load i32, i32* @JME_TXTRHD, align 4
  %100 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %101 = load i32, i32* @JME_TXTRHD, align 4
  %102 = call i32 @CSR_READ_4(%struct.jme_softc* %100, i32 %101)
  %103 = load i32, i32* @TXTRHD_RT_PERIOD_ENB, align 4
  %104 = load i32, i32* @TXTRHD_RT_LIMIT_ENB, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %102, %106
  %108 = call i32 @CSR_WRITE_4(%struct.jme_softc* %98, i32 %99, i32 %107)
  br label %130

109:                                              ; preds = %1
  %110 = load i32, i32* @RXMAC_COLL_DET_ENB, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @TXMAC_COLL_ENB, align 4
  %114 = load i32, i32* @TXMAC_CARRIER_SENSE, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @TXMAC_BACKOFF, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %121 = load i32, i32* @JME_TXTRHD, align 4
  %122 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %123 = load i32, i32* @JME_TXTRHD, align 4
  %124 = call i32 @CSR_READ_4(%struct.jme_softc* %122, i32 %123)
  %125 = load i32, i32* @TXTRHD_RT_PERIOD_ENB, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @TXTRHD_RT_LIMIT_ENB, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @CSR_WRITE_4(%struct.jme_softc* %120, i32 %121, i32 %128)
  br label %130

130:                                              ; preds = %109, %97
  %131 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %132 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @IFM_SUBTYPE(i32 %133)
  switch i32 %134, label %184 [
    i32 128, label %135
    i32 129, label %144
    i32 130, label %153
  ]

135:                                              ; preds = %130
  %136 = load i32, i32* @GHC_SPEED_10, align 4
  %137 = load i32, i32* %4, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* @GHC_TX_OFFLD_CLK_100, align 4
  %140 = load i32, i32* @GHC_TX_MAC_CLK_100, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %185

144:                                              ; preds = %130
  %145 = load i32, i32* @GHC_SPEED_100, align 4
  %146 = load i32, i32* %4, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* @GHC_TX_OFFLD_CLK_100, align 4
  %149 = load i32, i32* @GHC_TX_MAC_CLK_100, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %9, align 4
  br label %185

153:                                              ; preds = %130
  %154 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %155 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @JME_FLAG_FASTETH, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %185

161:                                              ; preds = %153
  %162 = load i32, i32* @GHC_SPEED_1000, align 4
  %163 = load i32, i32* %4, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* @GHC_TX_OFFLD_CLK_1000, align 4
  %166 = load i32, i32* @GHC_TX_MAC_CLK_1000, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  %170 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %171 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @IFM_OPTIONS(i32 %172)
  %174 = load i32, i32* @IFM_FDX, align 4
  %175 = and i32 %173, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %161
  %178 = load i32, i32* @TXMAC_CARRIER_EXT, align 4
  %179 = load i32, i32* @TXMAC_FRAME_BURST, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %7, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %177, %161
  br label %185

184:                                              ; preds = %130
  br label %185

185:                                              ; preds = %184, %183, %160, %144, %135
  %186 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %187 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @DEVICEID_JMC250, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %244

191:                                              ; preds = %185
  %192 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %193 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @DEVICEREVID_JMC250_A2, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %244

197:                                              ; preds = %191
  %198 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %199 = load i32, i32* @JME_GPREG1, align 4
  %200 = call i32 @CSR_READ_4(%struct.jme_softc* %198, i32 %199)
  store i32 %200, i32* %5, align 4
  %201 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %202 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @IFM_OPTIONS(i32 %203)
  %205 = load i32, i32* @IFM_FDX, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %197
  %209 = load i32, i32* @GPREG1_HDPX_FIX, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %5, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %5, align 4
  br label %217

213:                                              ; preds = %197
  %214 = load i32, i32* @GPREG1_HDPX_FIX, align 4
  %215 = load i32, i32* %5, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %213, %208
  %218 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %219 = load i32, i32* @JME_GPREG1, align 4
  %220 = load i32, i32* %5, align 4
  %221 = call i32 @CSR_WRITE_4(%struct.jme_softc* %218, i32 %219, i32 %220)
  %222 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %223 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @IFM_SUBTYPE(i32 %224)
  %226 = icmp eq i32 %225, 129
  br i1 %226, label %227, label %235

227:                                              ; preds = %217
  %228 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %229 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %232 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @jme_miibus_writereg(i32 %230, i32 %233, i32 27, i32 0)
  br label %243

235:                                              ; preds = %217
  %236 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %237 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %240 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @jme_miibus_writereg(i32 %238, i32 %241, i32 27, i32 4)
  br label %243

243:                                              ; preds = %235, %227
  br label %244

244:                                              ; preds = %243, %191, %185
  %245 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %246 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @JME_FLAG_TXCLK, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %4, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %4, align 4
  br label %255

255:                                              ; preds = %251, %244
  %256 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %257 = load i32, i32* @JME_GHC, align 4
  %258 = load i32, i32* %4, align 4
  %259 = call i32 @CSR_WRITE_4(%struct.jme_softc* %256, i32 %257, i32 %258)
  %260 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %261 = load i32, i32* @JME_RXMAC, align 4
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @CSR_WRITE_4(%struct.jme_softc* %260, i32 %261, i32 %262)
  %264 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %265 = load i32, i32* @JME_TXMAC, align 4
  %266 = load i32, i32* %7, align 4
  %267 = call i32 @CSR_WRITE_4(%struct.jme_softc* %264, i32 %265, i32 %266)
  %268 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %269 = load i32, i32* @JME_TXPFC, align 4
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @CSR_WRITE_4(%struct.jme_softc* %268, i32 %269, i32 %270)
  ret void
}

declare dso_local i32 @JME_LOCK_ASSERT(%struct.jme_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @jme_miibus_writereg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
