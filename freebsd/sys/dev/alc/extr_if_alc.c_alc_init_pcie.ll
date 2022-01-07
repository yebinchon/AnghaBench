; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_init_pcie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_init_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"L0s/L1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"L0s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"L1\00", align 1
@__const.alc_init_pcie.aspm_state = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)], align 16
@ALC_PEX_UNC_ERR_SEV = common dso_local global i32 0, align 4
@PEX_UNC_ERR_SEV_DLP = common dso_local global i32 0, align 4
@PEX_UNC_ERR_SEV_FCP = common dso_local global i32 0, align 4
@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@ALC_LTSSM_ID_CFG = common dso_local global i32 0, align 4
@LTSSM_ID_WRO_ENB = common dso_local global i32 0, align 4
@ALC_PCIE_PHYMISC = common dso_local global i32 0, align 4
@PCIE_PHYMISC_FORCE_RCV_DET = common dso_local global i32 0, align 4
@DEVICEID_ATHEROS_AR8152_B = common dso_local global i64 0, align 8
@ATHEROS_AR8152_B_V10 = common dso_local global i32 0, align 4
@ALC_PCIE_PHYMISC2 = common dso_local global i32 0, align 4
@PCIE_PHYMISC2_SERDES_CDR_MASK = common dso_local global i32 0, align 4
@PCIE_PHYMISC2_SERDES_TH_MASK = common dso_local global i32 0, align 4
@PCIE_PHYMISC2_SERDES_CDR_SHIFT = common dso_local global i32 0, align 4
@PCIE_PHYMISC2_SERDES_TH_SHIFT = common dso_local global i32 0, align 4
@PCIER_LINK_CAP = common dso_local global i64 0, align 8
@PCIEM_LINK_CAP_ASPM = common dso_local global i32 0, align 4
@PCIER_LINK_CTL = common dso_local global i64 0, align 8
@PCIEM_LINK_CTL_RCB = common dso_local global i32 0, align 4
@DMA_CFG_RCB_128 = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"RCB %u bytes\0A\00", align 1
@DMA_CFG_RCB_64 = common dso_local global i64 0, align 8
@PCIEM_LINK_CTL_ASPMC = common dso_local global i32 0, align 4
@PCIEM_LINK_CTL_ASPMC_L0S = common dso_local global i32 0, align 4
@ALC_FLAG_L0S = common dso_local global i32 0, align 4
@PCIEM_LINK_CTL_ASPMC_L1 = common dso_local global i32 0, align 4
@ALC_FLAG_L1S = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ASPM %s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"no ASPM support\0A\00", align 1
@ALC_PDLL_TRNS1 = common dso_local global i32 0, align 4
@PDLL_TRNS1_D3PLLOFF_ENB = common dso_local global i32 0, align 4
@ALC_MASTER_CFG = common dso_local global i32 0, align 4
@AR816X_REV_A1 = common dso_local global i64 0, align 8
@MASTER_WAKEN_25M = common dso_local global i32 0, align 4
@MASTER_CLK_SEL_DIS = common dso_local global i32 0, align 4
@IFM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_init_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_init_pcie(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca [4 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %8 = bitcast [4 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i8*]* @__const.alc_init_pcie.aspm_state to i8*), i64 32, i1 false)
  %9 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %10 = load i32, i32* @ALC_PEX_UNC_ERR_SEV, align 4
  %11 = call i32 @CSR_READ_4(%struct.alc_softc* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @PEX_UNC_ERR_SEV_DLP, align 4
  %13 = load i32, i32* @PEX_UNC_ERR_SEV_FCP, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %19 = load i32, i32* @ALC_PEX_UNC_ERR_SEV, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @CSR_WRITE_4(%struct.alc_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %178

28:                                               ; preds = %1
  %29 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %30 = load i32, i32* @ALC_LTSSM_ID_CFG, align 4
  %31 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %32 = load i32, i32* @ALC_LTSSM_ID_CFG, align 4
  %33 = call i32 @CSR_READ_4(%struct.alc_softc* %31, i32 %32)
  %34 = load i32, i32* @LTSSM_ID_WRO_ENB, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @CSR_WRITE_4(%struct.alc_softc* %29, i32 %30, i32 %36)
  %38 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %39 = load i32, i32* @ALC_PCIE_PHYMISC, align 4
  %40 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %41 = load i32, i32* @ALC_PCIE_PHYMISC, align 4
  %42 = call i32 @CSR_READ_4(%struct.alc_softc* %40, i32 %41)
  %43 = load i32, i32* @PCIE_PHYMISC_FORCE_RCV_DET, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @CSR_WRITE_4(%struct.alc_softc* %38, i32 %39, i32 %44)
  %46 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %47 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DEVICEID_ATHEROS_AR8152_B, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %28
  %54 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %55 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ATHEROS_AR8152_B_V10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %61 = load i32, i32* @ALC_PCIE_PHYMISC2, align 4
  %62 = call i32 @CSR_READ_4(%struct.alc_softc* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @PCIE_PHYMISC2_SERDES_CDR_MASK, align 4
  %64 = load i32, i32* @PCIE_PHYMISC2_SERDES_TH_MASK, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @PCIE_PHYMISC2_SERDES_CDR_SHIFT, align 4
  %70 = shl i32 3, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @PCIE_PHYMISC2_SERDES_TH_SHIFT, align 4
  %74 = shl i32 3, %73
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %78 = load i32, i32* @ALC_PCIE_PHYMISC2, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @CSR_WRITE_4(%struct.alc_softc* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %59, %53, %28
  %82 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %83 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %84 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCIER_LINK_CAP, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @CSR_READ_2(%struct.alc_softc* %82, i64 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @PCIEM_LINK_CAP_ASPM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %168

93:                                               ; preds = %81
  %94 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %95 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %96 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PCIER_LINK_CTL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @CSR_READ_2(%struct.alc_softc* %94, i64 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @PCIEM_LINK_CTL_RCB, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load i64, i64* @DMA_CFG_RCB_128, align 8
  %107 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %108 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %93
  %110 = load i64, i64* @bootverbose, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %114 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %117 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DMA_CFG_RCB_64, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 64, i32 128
  %123 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %112, %109
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @PCIEM_LINK_CTL_ASPMC, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @PCIEM_LINK_CTL_ASPMC_L0S, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load i32, i32* @ALC_FLAG_L0S, align 4
  %134 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %135 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %132, %124
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @PCIEM_LINK_CTL_ASPMC_L1, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32, i32* @ALC_FLAG_L1S, align 4
  %145 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %146 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %138
  %150 = load i64, i64* @bootverbose, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %149
  %153 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %154 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %164 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %159, i8* %163)
  br label %165

165:                                              ; preds = %152, %149
  %166 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %167 = call i32 @alc_disable_l0s_l1(%struct.alc_softc* %166)
  br label %177

168:                                              ; preds = %81
  %169 = load i64, i64* @bootverbose, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %173 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32, i8*, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %176

176:                                              ; preds = %171, %168
  br label %177

177:                                              ; preds = %176, %165
  br label %250

178:                                              ; preds = %1
  %179 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %180 = load i32, i32* @ALC_PDLL_TRNS1, align 4
  %181 = call i32 @CSR_READ_4(%struct.alc_softc* %179, i32 %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* @PDLL_TRNS1_D3PLLOFF_ENB, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %6, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %6, align 4
  %186 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %187 = load i32, i32* @ALC_PDLL_TRNS1, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @CSR_WRITE_4(%struct.alc_softc* %186, i32 %187, i32 %188)
  %190 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %191 = load i32, i32* @ALC_MASTER_CFG, align 4
  %192 = call i32 @CSR_READ_4(%struct.alc_softc* %190, i32 %191)
  store i32 %192, i32* %6, align 4
  %193 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %194 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @AR816X_REV(i32 %195)
  %197 = load i64, i64* @AR816X_REV_A1, align 8
  %198 = icmp sle i64 %196, %197
  br i1 %198, label %199, label %226

199:                                              ; preds = %178
  %200 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %201 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %226

205:                                              ; preds = %199
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @MASTER_WAKEN_25M, align 4
  %208 = and i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %205
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @MASTER_CLK_SEL_DIS, align 4
  %213 = and i32 %211, %212
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %210, %205
  %216 = load i32, i32* @MASTER_WAKEN_25M, align 4
  %217 = load i32, i32* @MASTER_CLK_SEL_DIS, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %6, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %6, align 4
  %221 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %222 = load i32, i32* @ALC_MASTER_CFG, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @CSR_WRITE_4(%struct.alc_softc* %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %215, %210
  br label %249

226:                                              ; preds = %199, %178
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @MASTER_WAKEN_25M, align 4
  %229 = and i32 %227, %228
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @MASTER_CLK_SEL_DIS, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %231, %226
  %237 = load i32, i32* @MASTER_WAKEN_25M, align 4
  %238 = load i32, i32* %6, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* @MASTER_CLK_SEL_DIS, align 4
  %241 = xor i32 %240, -1
  %242 = load i32, i32* %6, align 4
  %243 = and i32 %242, %241
  store i32 %243, i32* %6, align 4
  %244 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %245 = load i32, i32* @ALC_MASTER_CFG, align 4
  %246 = load i32, i32* %6, align 4
  %247 = call i32 @CSR_WRITE_4(%struct.alc_softc* %244, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %236, %231
  br label %249

249:                                              ; preds = %248, %225
  br label %250

250:                                              ; preds = %249, %177
  %251 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %252 = load i32, i32* @IFM_UNKNOWN, align 4
  %253 = call i32 @alc_aspm(%struct.alc_softc* %251, i32 1, i32 %252)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #2

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #2

declare dso_local i32 @CSR_READ_2(%struct.alc_softc*, i64) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @alc_disable_l0s_l1(%struct.alc_softc*) #2

declare dso_local i64 @AR816X_REV(i32) #2

declare dso_local i32 @alc_aspm(%struct.alc_softc*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
