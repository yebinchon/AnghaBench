; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_radar.c_ar5416EnableDfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_radar.c_ar5416EnableDfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32 }

@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@HAL_PHYERR_PARAM_NOVAL = common dso_local global i64 0, align 8
@AR_PHY_RADAR_0_FIRPWR = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_HEIGHT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_PRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_INBAND = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FFT_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_USE_FIR128 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_MAX_RRSSI = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_BLOCK_CHECK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELSTEP_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELPWR_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELSTEP_CHECK = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_RELPWR_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_MAXLEN = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416EnableDfs(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %8 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @AR_PHY_RADAR_0_FIRPWR, align 4
  %23 = call i32 @SM(i64 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %14, %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %41 = call i32 @SM(i64 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %32, %26
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %59 = call i32 @SM(i64 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %50, %44
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i32, i32* @AR_PHY_RADAR_0_PRSSI, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @AR_PHY_RADAR_0_PRSSI, align 4
  %77 = call i32 @SM(i64 %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %68, %62
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32, i32* @AR_PHY_RADAR_0_INBAND, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @AR_PHY_RADAR_0_INBAND, align 4
  %95 = call i32 @SM(i64 %93, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %86, %80
  %99 = load i32, i32* @AR_PHY_RADAR_0_FFT_ENA, align 4
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %103 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @OS_REG_WRITE(%struct.ath_hal* %102, i32 %103, i32 %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %115

110:                                              ; preds = %98
  %111 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %112 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %113 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %114 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %111, i32 %112, i32 %113)
  br label %126

115:                                              ; preds = %98
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %122 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %123 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %124 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %110
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %133 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %134 = load i32, i32* @AR_PHY_RADAR_1_USE_FIR128, align 4
  %135 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %132, i32 %133, i32 %134)
  br label %147

136:                                              ; preds = %126
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %143 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %144 = load i32, i32* @AR_PHY_RADAR_1_USE_FIR128, align 4
  %145 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %136
  br label %147

147:                                              ; preds = %146, %131
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %154 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %155 = load i32, i32* @AR_PHY_RADAR_1_MAX_RRSSI, align 4
  %156 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %153, i32 %154, i32 %155)
  br label %168

157:                                              ; preds = %147
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %164 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %165 = load i32, i32* @AR_PHY_RADAR_1_MAX_RRSSI, align 4
  %166 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %157
  br label %168

168:                                              ; preds = %167, %152
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %175 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %176 = load i32, i32* @AR_PHY_RADAR_1_BLOCK_CHECK, align 4
  %177 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %174, i32 %175, i32 %176)
  br label %189

178:                                              ; preds = %168
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %185 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %186 = load i32, i32* @AR_PHY_RADAR_1_BLOCK_CHECK, align 4
  %187 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %178
  br label %189

189:                                              ; preds = %188, %173
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 9
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %189
  %196 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %197 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %198 = call i32 @OS_REG_READ(%struct.ath_hal* %196, i32 %197)
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_THRESH, align 4
  %200 = xor i32 %199, -1
  %201 = load i32, i32* %5, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %5, align 4
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 9
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_THRESH, align 4
  %207 = call i32 @SM(i64 %205, i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %5, align 4
  %210 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %211 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @OS_REG_WRITE(%struct.ath_hal* %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %195, %189
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 10
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %239

220:                                              ; preds = %214
  %221 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %222 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %223 = call i32 @OS_REG_READ(%struct.ath_hal* %221, i32 %222)
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_THRESH, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %5, align 4
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_THRESH, align 4
  %232 = call i32 @SM(i64 %230, i32 %231)
  %233 = load i32, i32* %5, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %5, align 4
  %235 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %236 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %237 = load i32, i32* %5, align 4
  %238 = call i32 @OS_REG_WRITE(%struct.ath_hal* %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %220, %214
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 11
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %246 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %247 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_CHECK, align 4
  %248 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %245, i32 %246, i32 %247)
  br label %260

249:                                              ; preds = %239
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 11
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %256 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %257 = load i32, i32* @AR_PHY_RADAR_1_RELSTEP_CHECK, align 4
  %258 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %254, %249
  br label %260

260:                                              ; preds = %259, %244
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 12
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %267 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %268 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_ENA, align 4
  %269 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %266, i32 %267, i32 %268)
  br label %281

270:                                              ; preds = %260
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 12
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %277 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %278 = load i32, i32* @AR_PHY_RADAR_1_RELPWR_ENA, align 4
  %279 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %275, %270
  br label %281

281:                                              ; preds = %280, %265
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 13
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @HAL_PHYERR_PARAM_NOVAL, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %287, label %306

287:                                              ; preds = %281
  %288 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %289 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %290 = call i32 @OS_REG_READ(%struct.ath_hal* %288, i32 %289)
  store i32 %290, i32* %5, align 4
  %291 = load i32, i32* @AR_PHY_RADAR_1_MAXLEN, align 4
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %5, align 4
  %294 = and i32 %293, %292
  store i32 %294, i32* %5, align 4
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 13
  %297 = load i64, i64* %296, align 8
  %298 = load i32, i32* @AR_PHY_RADAR_1_MAXLEN, align 4
  %299 = call i32 @SM(i64 %297, i32 %298)
  %300 = load i32, i32* %5, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %5, align 4
  %302 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %303 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %304 = load i32, i32* %5, align 4
  %305 = call i32 @OS_REG_WRITE(%struct.ath_hal* %302, i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %287, %281
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 14
  %309 = load i32, i32* %308, align 8
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %313 = load i32, i32* @AR_PHY_RADAR_EXT, align 4
  %314 = load i32, i32* @AR_PHY_RADAR_EXT_ENA, align 4
  %315 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %312, i32 %313, i32 %314)
  br label %327

316:                                              ; preds = %306
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 14
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %323 = load i32, i32* @AR_PHY_RADAR_EXT, align 4
  %324 = load i32, i32* @AR_PHY_RADAR_EXT_ENA, align 4
  %325 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %322, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %321, %316
  br label %327

327:                                              ; preds = %326, %311
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @SM(i64, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
