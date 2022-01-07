; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_aspm_813x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_aspm_813x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@ALC_FLAG_LINK = common dso_local global i32 0, align 4
@ALC_PM_CFG = common dso_local global i32 0, align 4
@ALC_FLAG_APS = common dso_local global i32 0, align 4
@ALC_FLAG_PCIE = common dso_local global i32 0, align 4
@PCIER_LINK_CTL = common dso_local global i64 0, align 8
@PM_CFG_SERDES_PD_EX_L1 = common dso_local global i32 0, align 4
@PM_CFG_L1_ENTRY_TIMER_MASK = common dso_local global i32 0, align 4
@PM_CFG_LCKDET_TIMER_MASK = common dso_local global i32 0, align 4
@PM_CFG_MAC_ASPM_CHK = common dso_local global i32 0, align 4
@PM_CFG_LCKDET_TIMER_DEFAULT = common dso_local global i32 0, align 4
@PM_CFG_LCKDET_TIMER_SHIFT = common dso_local global i32 0, align 4
@PM_CFG_ASPM_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_ASPM_L0S_ENB = common dso_local global i32 0, align 4
@PCIEM_LINK_CTL_EXTENDED_SYNC = common dso_local global i32 0, align 4
@ATHEROS_AR8152_B_V10 = common dso_local global i64 0, align 8
@PM_CFG_EN_BUFS_RX_L0S = common dso_local global i32 0, align 4
@PM_CFG_SA_DLY_ENB = common dso_local global i32 0, align 4
@PM_CFG_HOTRST = common dso_local global i32 0, align 4
@PM_CFG_L1_ENTRY_TIMER_DEFAULT = common dso_local global i32 0, align 4
@PM_CFG_L1_ENTRY_TIMER_SHIFT = common dso_local global i32 0, align 4
@PM_CFG_PM_REQ_TIMER_MASK = common dso_local global i32 0, align 4
@PM_CFG_PM_REQ_TIMER_DEFAULT = common dso_local global i32 0, align 4
@PM_CFG_PM_REQ_TIMER_SHIFT = common dso_local global i32 0, align 4
@PM_CFG_PCIE_RECV = common dso_local global i32 0, align 4
@ALC_FLAG_L0S = common dso_local global i32 0, align 4
@ALC_FLAG_L1S = common dso_local global i32 0, align 4
@PM_CFG_SERDES_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_SERDES_PLL_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_SERDES_BUDS_RX_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_CLK_SWH_L1 = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*, i32)* @alc_aspm_813x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_aspm_813x(%struct.alc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.alc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ALC_FLAG_LINK, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %265

14:                                               ; preds = %2
  %15 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %16 = load i32, i32* @ALC_PM_CFG, align 4
  %17 = call i32 @CSR_READ_4(%struct.alc_softc* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ALC_FLAG_APS, align 4
  %22 = load i32, i32* @ALC_FLAG_PCIE, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @ALC_FLAG_APS, align 4
  %26 = load i32, i32* @ALC_FLAG_PCIE, align 4
  %27 = or i32 %25, %26
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %14
  %30 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %31 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %32 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCIER_LINK_CTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @CSR_READ_2(%struct.alc_softc* %30, i64 %35)
  store i32 %36, i32* %6, align 4
  br label %38

37:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* @PM_CFG_SERDES_PD_EX_L1, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_MASK, align 4
  %44 = load i32, i32* @PM_CFG_LCKDET_TIMER_MASK, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @PM_CFG_MAC_ASPM_CHK, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @PM_CFG_LCKDET_TIMER_DEFAULT, align 4
  %53 = load i32, i32* @PM_CFG_LCKDET_TIMER_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %58 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %64 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ALC_FLAG_APS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %126

69:                                               ; preds = %38
  %70 = load i32, i32* @PCIEM_LINK_CTL_EXTENDED_SYNC, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 129
  br i1 %79, label %80, label %90

80:                                               ; preds = %69
  %81 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %82 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ATHEROS_AR8152_B_V10, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @PCIEM_LINK_CTL_EXTENDED_SYNC, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %80, %69
  %91 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %92 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %93 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCIER_LINK_CTL, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @CSR_WRITE_2(%struct.alc_softc* %91, i64 %96, i32 %97)
  %99 = load i32, i32* @PM_CFG_EN_BUFS_RX_L0S, align 4
  %100 = load i32, i32* @PM_CFG_SA_DLY_ENB, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @PM_CFG_HOTRST, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_DEFAULT, align 4
  %108 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @PM_CFG_PM_REQ_TIMER_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @PM_CFG_PM_REQ_TIMER_DEFAULT, align 4
  %117 = load i32, i32* @PM_CFG_PM_REQ_TIMER_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @PM_CFG_SERDES_PD_EX_L1, align 4
  %122 = load i32, i32* @PM_CFG_PCIE_RECV, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %90, %38
  %127 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %128 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ALC_FLAG_LINK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %237

133:                                              ; preds = %126
  %134 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %135 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ALC_FLAG_L0S, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %146 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ALC_FLAG_L1S, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %153 = load i32, i32* %5, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %151, %144
  %156 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %157 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ALC_FLAG_APS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %220

162:                                              ; preds = %155
  %163 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %164 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %163, i32 0, i32 2
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 129
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  %170 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %5, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %169, %162
  %175 = load i32, i32* @PM_CFG_SERDES_L1_ENB, align 4
  %176 = load i32, i32* @PM_CFG_SERDES_PLL_L1_ENB, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @PM_CFG_SERDES_BUDS_RX_L1_ENB, align 4
  %179 = or i32 %177, %178
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %5, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* @PM_CFG_CLK_SWH_L1, align 4
  %184 = load i32, i32* %5, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @IFM_100_TX, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %174
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @IFM_1000_T, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %219

193:                                              ; preds = %189, %174
  %194 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_MASK, align 4
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %5, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %5, align 4
  %198 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %199 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %198, i32 0, i32 2
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  switch i32 %202, label %213 [
    i32 129, label %203
    i32 128, label %208
    i32 130, label %208
  ]

203:                                              ; preds = %193
  %204 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_SHIFT, align 4
  %205 = shl i32 7, %204
  %206 = load i32, i32* %5, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %5, align 4
  br label %218

208:                                              ; preds = %193, %193
  %209 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_SHIFT, align 4
  %210 = shl i32 4, %209
  %211 = load i32, i32* %5, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %5, align 4
  br label %218

213:                                              ; preds = %193
  %214 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_SHIFT, align 4
  %215 = shl i32 15, %214
  %216 = load i32, i32* %5, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %213, %208, %203
  br label %219

219:                                              ; preds = %218, %189
  br label %236

220:                                              ; preds = %155
  %221 = load i32, i32* @PM_CFG_SERDES_L1_ENB, align 4
  %222 = load i32, i32* @PM_CFG_SERDES_PLL_L1_ENB, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @PM_CFG_SERDES_BUDS_RX_L1_ENB, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* %5, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %5, align 4
  %228 = load i32, i32* @PM_CFG_CLK_SWH_L1, align 4
  %229 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %232 = or i32 %230, %231
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %5, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %220, %219
  br label %260

237:                                              ; preds = %126
  %238 = load i32, i32* @PM_CFG_SERDES_BUDS_RX_L1_ENB, align 4
  %239 = load i32, i32* @PM_CFG_SERDES_L1_ENB, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @PM_CFG_SERDES_PLL_L1_ENB, align 4
  %242 = or i32 %240, %241
  %243 = xor i32 %242, -1
  %244 = load i32, i32* %5, align 4
  %245 = and i32 %244, %243
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* @PM_CFG_CLK_SWH_L1, align 4
  %247 = load i32, i32* %5, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %5, align 4
  %249 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %250 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @ALC_FLAG_L1S, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %237
  %256 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %257 = load i32, i32* %5, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %5, align 4
  br label %259

259:                                              ; preds = %255, %237
  br label %260

260:                                              ; preds = %259, %236
  %261 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %262 = load i32, i32* @ALC_PM_CFG, align 4
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @CSR_WRITE_4(%struct.alc_softc* %261, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %260, %13
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.alc_softc*, i64) #1

declare dso_local i32 @CSR_WRITE_2(%struct.alc_softc*, i64, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
