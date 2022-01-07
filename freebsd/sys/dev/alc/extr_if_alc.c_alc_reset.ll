; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@ALC_MBOX_RD0_PROD_IDX = common dso_local global i32 0, align 4
@AR816X_REV_A1 = common dso_local global i64 0, align 8
@ALC_PM_CFG = common dso_local global i32 0, align 4
@PM_CFG_ASPM_L0S_ENB = common dso_local global i32 0, align 4
@PM_CFG_ASPM_L1_ENB = common dso_local global i32 0, align 4
@ALC_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_OOB_DIS_OFF = common dso_local global i32 0, align 4
@MASTER_RESET = common dso_local global i32 0, align 4
@ALC_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MAC reset timeout!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"master reset timeout!\0A\00", align 1
@ALC_IDLE_STATUS = common dso_local global i32 0, align 4
@IDLE_STATUS_RXMAC = common dso_local global i32 0, align 4
@IDLE_STATUS_TXMAC = common dso_local global i32 0, align 4
@IDLE_STATUS_RXQ = common dso_local global i32 0, align 4
@IDLE_STATUS_TXQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"reset timeout(0x%08x)!\0A\00", align 1
@MASTER_CLK_SEL_DIS = common dso_local global i32 0, align 4
@ALC_MISC3 = common dso_local global i32 0, align 4
@MISC3_25M_BY_SW = common dso_local global i32 0, align 4
@MISC3_25M_NOTO_INTNL = common dso_local global i32 0, align 4
@ALC_MISC = common dso_local global i32 0, align 4
@MISC_INTNLOSC_OPEN = common dso_local global i32 0, align 4
@MISC_ISO_ENB = common dso_local global i32 0, align 4
@DEVICEID_ATHEROS_AR8152_B = common dso_local global i64 0, align 8
@DEVICEID_ATHEROS_AR8151_V2 = common dso_local global i64 0, align 8
@ALC_SERDES_LOCK = common dso_local global i32 0, align 4
@SERDES_MAC_CLK_SLOWDOWN = common dso_local global i32 0, align 4
@SERDES_PHY_CLK_SLOWDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_reset(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %14 = load i32, i32* @ALC_MBOX_RD0_PROD_IDX, align 4
  %15 = call i32 @CSR_WRITE_4(%struct.alc_softc* %13, i32 %14, i32 1)
  %16 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @AR816X_REV(i32 %18)
  %20 = load i64, i64* @AR816X_REV_A1, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %12
  %23 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %30 = load i32, i32* @ALC_PM_CFG, align 4
  %31 = call i32 @CSR_READ_4(%struct.alc_softc* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %34 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %40 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %46 = load i32, i32* @ALC_PM_CFG, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @CSR_WRITE_4(%struct.alc_softc* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %28
  br label %50

50:                                               ; preds = %49, %22, %12
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %53 = load i32, i32* @ALC_MASTER_CFG, align 4
  %54 = call i32 @CSR_READ_4(%struct.alc_softc* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @MASTER_OOB_DIS_OFF, align 4
  %56 = load i32, i32* @MASTER_RESET, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %61 = load i32, i32* @ALC_MASTER_CFG, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @CSR_WRITE_4(%struct.alc_softc* %60, i32 %61, i32 %62)
  %64 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %65 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %51
  %71 = load i32, i32* @ALC_RESET_TIMEOUT, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %83, %70
  %73 = load i32, i32* %5, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = call i32 @DELAY(i32 10)
  %77 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %78 = load i32, i32* @ALC_MBOX_RD0_PROD_IDX, align 4
  %79 = call i32 @CSR_READ_4(%struct.alc_softc* %77, i32 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %86

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %5, align 4
  br label %72

86:                                               ; preds = %81, %72
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %91 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %94, %51
  %96 = load i32, i32* @ALC_RESET_TIMEOUT, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %110, %95
  %98 = load i32, i32* %5, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = call i32 @DELAY(i32 10)
  %102 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %103 = load i32, i32* @ALC_MASTER_CFG, align 4
  %104 = call i32 @CSR_READ_4(%struct.alc_softc* %102, i32 %103)
  %105 = load i32, i32* @MASTER_RESET, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %113

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %5, align 4
  br label %97

113:                                              ; preds = %108, %97
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %118 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %113
  %122 = load i32, i32* @ALC_RESET_TIMEOUT, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %143, %121
  %124 = load i32, i32* %5, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %123
  %127 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %128 = load i32, i32* @ALC_IDLE_STATUS, align 4
  %129 = call i32 @CSR_READ_4(%struct.alc_softc* %127, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @IDLE_STATUS_RXMAC, align 4
  %132 = load i32, i32* @IDLE_STATUS_TXMAC, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @IDLE_STATUS_RXQ, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @IDLE_STATUS_TXQ, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %130, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %126
  br label %146

141:                                              ; preds = %126
  %142 = call i32 @DELAY(i32 10)
  br label %143

143:                                              ; preds = %141
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %5, align 4
  br label %123

146:                                              ; preds = %140, %123
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %151 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %149, %146
  %156 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %157 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %239

162:                                              ; preds = %155
  %163 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %164 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @AR816X_REV(i32 %165)
  %167 = load i64, i64* @AR816X_REV_A1, align 8
  %168 = icmp sle i64 %166, %167
  br i1 %168, label %169, label %198

169:                                              ; preds = %162
  %170 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %171 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 1
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %198

175:                                              ; preds = %169
  %176 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %177 = load i32, i32* @ALC_MASTER_CFG, align 4
  %178 = call i32 @CSR_READ_4(%struct.alc_softc* %176, i32 %177)
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* @MASTER_CLK_SEL_DIS, align 4
  %180 = load i32, i32* %4, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %4, align 4
  %182 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %183 = load i32, i32* @ALC_MASTER_CFG, align 4
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @CSR_WRITE_4(%struct.alc_softc* %182, i32 %183, i32 %184)
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %188 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %186, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %175
  %193 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %194 = load i32, i32* @ALC_PM_CFG, align 4
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @CSR_WRITE_4(%struct.alc_softc* %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %192, %175
  br label %198

198:                                              ; preds = %197, %169, %162
  %199 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %200 = call i32 @alc_osc_reset(%struct.alc_softc* %199)
  %201 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %202 = load i32, i32* @ALC_MISC3, align 4
  %203 = call i32 @CSR_READ_4(%struct.alc_softc* %201, i32 %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* @MISC3_25M_BY_SW, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %4, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* @MISC3_25M_NOTO_INTNL, align 4
  %209 = load i32, i32* %4, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %4, align 4
  %211 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %212 = load i32, i32* @ALC_MISC3, align 4
  %213 = load i32, i32* %4, align 4
  %214 = call i32 @CSR_WRITE_4(%struct.alc_softc* %211, i32 %212, i32 %213)
  %215 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %216 = load i32, i32* @ALC_MISC, align 4
  %217 = call i32 @CSR_READ_4(%struct.alc_softc* %215, i32 %216)
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* @MISC_INTNLOSC_OPEN, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %4, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %4, align 4
  %222 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %223 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @AR816X_REV(i32 %224)
  %226 = load i64, i64* @AR816X_REV_A1, align 8
  %227 = icmp sle i64 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %198
  %229 = load i32, i32* @MISC_ISO_ENB, align 4
  %230 = xor i32 %229, -1
  %231 = load i32, i32* %4, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %228, %198
  %234 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %235 = load i32, i32* @ALC_MISC, align 4
  %236 = load i32, i32* %4, align 4
  %237 = call i32 @CSR_WRITE_4(%struct.alc_softc* %234, i32 %235, i32 %236)
  %238 = call i32 @DELAY(i32 20)
  br label %239

239:                                              ; preds = %233, %155
  %240 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %241 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %262, label %246

246:                                              ; preds = %239
  %247 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %248 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %247, i32 0, i32 2
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @DEVICEID_ATHEROS_AR8152_B, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %262, label %254

254:                                              ; preds = %246
  %255 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %256 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %255, i32 0, i32 2
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @DEVICEID_ATHEROS_AR8151_V2, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %273

262:                                              ; preds = %254, %246, %239
  %263 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %264 = load i32, i32* @ALC_SERDES_LOCK, align 4
  %265 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %266 = load i32, i32* @ALC_SERDES_LOCK, align 4
  %267 = call i32 @CSR_READ_4(%struct.alc_softc* %265, i32 %266)
  %268 = load i32, i32* @SERDES_MAC_CLK_SLOWDOWN, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @SERDES_PHY_CLK_SLOWDOWN, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @CSR_WRITE_4(%struct.alc_softc* %263, i32 %264, i32 %271)
  br label %273

273:                                              ; preds = %262, %254
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i64 @AR816X_REV(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @alc_osc_reset(%struct.alc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
