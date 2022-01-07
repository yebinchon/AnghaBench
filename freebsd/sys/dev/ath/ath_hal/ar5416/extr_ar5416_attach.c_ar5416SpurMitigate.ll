; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_attach.c_ar5416SpurMitigate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_attach.c_ar5416SpurMitigate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@ar5416SpurMitigate.pilot_mask_reg = internal constant [4 x i32] [i32 130, i32 129, i32 133, i32 132], align 16
@ar5416SpurMitigate.chan_mask_reg = internal constant [4 x i32] [i32 128, i32 131, i32 135, i32 134], align 16
@ar5416SpurMitigate.inc = internal constant [4 x i32] [i32 0, i32 100, i32 0, i32 0], align 16
@AR_NO_SPUR = common dso_local global i32 0, align 4
@AR5416_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_CNTL = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_MASK_PPM = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_SELECT = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI = common dso_local global i32 0, align 4
@AR5416_SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_DELTA_PHASE = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_USE_SPUR_IN_AGC = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_FREQ_SD = common dso_local global i32 0, align 4
@AR_PHY_TIMING11 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK_1 = common dso_local global i32 0, align 4
@AR_PHY_VIT_MASK2_M_46_61 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK_2 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_M_31_45 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK_3 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_M_16_30 = common dso_local global i32 0, align 4
@AR_PHY_MASK_CTL = common dso_local global i32 0, align 4
@AR_PHY_MASK2_M_00_15 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_1 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_15_01 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_2 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_30_16 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_3 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_45_31 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_4 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_61_45 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar5416SpurMitigate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416SpurMitigate(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [123 x i32], align 16
  %19 = alloca [123 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %29 = call i32 @ath_hal_gethwchannel(%struct.ath_hal* %27, %struct.ieee80211_channel* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @AR_NO_SPUR, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %32 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %31)
  store i64 %32, i64* %23, align 8
  %33 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 0
  %34 = call i32 @OS_MEMZERO(i32* %33, i32 492)
  %35 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 0
  %36 = call i32 @OS_MEMZERO(i32* %35, i32 492)
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %63, %2
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @AR5416_EEPROM_MODAL_SPURS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %43 = load i32, i32* %17, align 4
  %44 = load i64, i64* %23, align 8
  %45 = call i32 @ath_hal_getSpurChan(%struct.ath_hal* %42, i32 %43, i64 %44)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* @AR_NO_SPUR, align 4
  %47 = load i32, i32* %22, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %66

50:                                               ; preds = %41
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 10
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %22, align 4
  %56 = icmp sgt i32 %55, -95
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %22, align 4
  %59 = icmp slt i32 %58, 95
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %22, align 4
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %37

66:                                               ; preds = %60, %49, %37
  %67 = load i32, i32* @AR_NO_SPUR, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %796

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %72, 32
  store i32 %73, i32* %7, align 4
  %74 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %75 = call i32 @AR_PHY_TIMING_CTRL4_CHAIN(i32 0)
  %76 = call i32 @OS_REG_READ(%struct.ath_hal* %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI, align 4
  %79 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK, align 4
  %84 = or i32 %82, %83
  %85 = or i32 %77, %84
  store i32 %85, i32* %16, align 4
  %86 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %87 = call i32 @OS_REG_WRITE_BUFFER_ENABLE(%struct.ath_hal* %86)
  %88 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %89 = call i32 @AR_PHY_TIMING_CTRL4_CHAIN(i32 0)
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @OS_REG_WRITE(%struct.ath_hal* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_CNTL, align 4
  %93 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_MASK_PPM, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_SELECT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @AR5416_SPUR_RSSI_THRESH, align 4
  %100 = load i32, i32* @AR_PHY_SPUR_REG_SPUR_RSSI_THRESH, align 4
  %101 = call i32 @SM(i32 %99, i32 %100)
  %102 = or i32 %98, %101
  store i32 %102, i32* %16, align 4
  %103 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %104 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @OS_REG_WRITE(%struct.ath_hal* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %107, 524288
  %109 = sdiv i32 %108, 100
  %110 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %10, align 4
  %112 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %113 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %112)
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 440, i32 400
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %6, align 4
  %118 = mul nsw i32 %117, 2048
  %119 = load i32, i32* %11, align 4
  %120 = sdiv i32 %118, %119
  %121 = and i32 %120, 1023
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_IN_AGC, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @AR_PHY_TIMING11_SPUR_FREQ_SD, align 4
  %125 = call i32 @SM(i32 %123, i32 %124)
  %126 = or i32 %122, %125
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %129 = call i32 @SM(i32 %127, i32 %128)
  %130 = or i32 %126, %129
  store i32 %130, i32* %16, align 4
  %131 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %132 = load i32, i32* @AR_PHY_TIMING11, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @OS_REG_WRITE(%struct.ath_hal* %131, i32 %132, i32 %133)
  store i32 -6000, i32* %8, align 4
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 100
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %7, align 4
  %138 = sub nsw i32 %137, 100
  store i32 %138, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %139

139:                                              ; preds = %190, %71
  %140 = load i32, i32* %17, align 4
  %141 = icmp slt i32 %140, 4
  br i1 %141, label %142, label %193

142:                                              ; preds = %139
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %26, align 4
  br label %143

143:                                              ; preds = %166, %142
  %144 = load i32, i32* %26, align 4
  %145 = icmp slt i32 %144, 30
  br i1 %145, label %146, label %169

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %146
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i32, i32* %24, align 4
  %156 = load i32, i32* %26, align 4
  %157 = shl i32 1, %156
  %158 = or i32 %155, %157
  store i32 %158, i32* %24, align 4
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %26, align 4
  %161 = shl i32 1, %160
  %162 = or i32 %159, %161
  store i32 %162, i32* %25, align 4
  br label %163

163:                                              ; preds = %154, %150, %146
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 100
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %26, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %26, align 4
  br label %143

169:                                              ; preds = %143
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* @ar5416SpurMitigate.inc, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %8, align 4
  %176 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* @ar5416SpurMitigate.pilot_mask_reg, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %24, align 4
  %182 = call i32 @OS_REG_WRITE(%struct.ath_hal* %176, i32 %180, i32 %181)
  %183 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* @ar5416SpurMitigate.chan_mask_reg, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %25, align 4
  %189 = call i32 @OS_REG_WRITE(%struct.ath_hal* %183, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %169
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %17, align 4
  br label %139

193:                                              ; preds = %139
  store i32 6100, i32* %14, align 4
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 120
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %7, align 4
  %197 = sub nsw i32 %196, 120
  store i32 %197, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %198

198:                                              ; preds = %236, %193
  %199 = load i32, i32* %17, align 4
  %200 = icmp slt i32 %199, 123
  br i1 %200, label %201, label %239

201:                                              ; preds = %198
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %233

205:                                              ; preds = %201
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %233

209:                                              ; preds = %205
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %7, align 4
  %212 = sub nsw i32 %210, %211
  %213 = call i64 @abs(i32 %212)
  %214 = icmp ult i64 %213, 75
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  store i32 1, i32* %20, align 4
  br label %217

216:                                              ; preds = %209
  store i32 0, i32* %20, align 4
  br label %217

217:                                              ; preds = %216, %215
  %218 = load i32, i32* %14, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %14, align 4
  %223 = sdiv i32 %222, 100
  %224 = call i64 @abs(i32 %223)
  %225 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 %224
  store i32 %221, i32* %225, align 4
  br label %232

226:                                              ; preds = %217
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %14, align 4
  %229 = sdiv i32 %228, 100
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 %230
  store i32 %227, i32* %231, align 4
  br label %232

232:                                              ; preds = %226, %220
  br label %233

233:                                              ; preds = %232, %205, %201
  %234 = load i32, i32* %14, align 4
  %235 = sub nsw i32 %234, 100
  store i32 %235, i32* %14, align 4
  br label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %17, align 4
  br label %198

239:                                              ; preds = %198
  %240 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 46
  %241 = load i32, i32* %240, align 8
  %242 = shl i32 %241, 30
  %243 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 47
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 %244, 28
  %246 = or i32 %242, %245
  %247 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 48
  %248 = load i32, i32* %247, align 16
  %249 = shl i32 %248, 26
  %250 = or i32 %246, %249
  %251 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 49
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 24
  %254 = or i32 %250, %253
  %255 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 50
  %256 = load i32, i32* %255, align 8
  %257 = shl i32 %256, 22
  %258 = or i32 %254, %257
  %259 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 51
  %260 = load i32, i32* %259, align 4
  %261 = shl i32 %260, 20
  %262 = or i32 %258, %261
  %263 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 52
  %264 = load i32, i32* %263, align 16
  %265 = shl i32 %264, 18
  %266 = or i32 %262, %265
  %267 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 53
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %268, 16
  %270 = or i32 %266, %269
  %271 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 54
  %272 = load i32, i32* %271, align 8
  %273 = shl i32 %272, 14
  %274 = or i32 %270, %273
  %275 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 55
  %276 = load i32, i32* %275, align 4
  %277 = shl i32 %276, 12
  %278 = or i32 %274, %277
  %279 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 56
  %280 = load i32, i32* %279, align 16
  %281 = shl i32 %280, 10
  %282 = or i32 %278, %281
  %283 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 57
  %284 = load i32, i32* %283, align 4
  %285 = shl i32 %284, 8
  %286 = or i32 %282, %285
  %287 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 58
  %288 = load i32, i32* %287, align 8
  %289 = shl i32 %288, 6
  %290 = or i32 %286, %289
  %291 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 59
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 4
  %294 = or i32 %290, %293
  %295 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 60
  %296 = load i32, i32* %295, align 16
  %297 = shl i32 %296, 2
  %298 = or i32 %294, %297
  %299 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 61
  %300 = load i32, i32* %299, align 4
  %301 = shl i32 %300, 0
  %302 = or i32 %298, %301
  store i32 %302, i32* %21, align 4
  %303 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %304 = load i32, i32* @AR_PHY_BIN_MASK_1, align 4
  %305 = load i32, i32* %21, align 4
  %306 = call i32 @OS_REG_WRITE(%struct.ath_hal* %303, i32 %304, i32 %305)
  %307 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %308 = load i32, i32* @AR_PHY_VIT_MASK2_M_46_61, align 4
  %309 = load i32, i32* %21, align 4
  %310 = call i32 @OS_REG_WRITE(%struct.ath_hal* %307, i32 %308, i32 %309)
  %311 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 31
  %312 = load i32, i32* %311, align 4
  %313 = shl i32 %312, 28
  %314 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 32
  %315 = load i32, i32* %314, align 16
  %316 = shl i32 %315, 26
  %317 = or i32 %313, %316
  %318 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 33
  %319 = load i32, i32* %318, align 4
  %320 = shl i32 %319, 24
  %321 = or i32 %317, %320
  %322 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 34
  %323 = load i32, i32* %322, align 8
  %324 = shl i32 %323, 22
  %325 = or i32 %321, %324
  %326 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 35
  %327 = load i32, i32* %326, align 4
  %328 = shl i32 %327, 20
  %329 = or i32 %325, %328
  %330 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 36
  %331 = load i32, i32* %330, align 16
  %332 = shl i32 %331, 18
  %333 = or i32 %329, %332
  %334 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 37
  %335 = load i32, i32* %334, align 4
  %336 = shl i32 %335, 16
  %337 = or i32 %333, %336
  %338 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 48
  %339 = load i32, i32* %338, align 16
  %340 = shl i32 %339, 14
  %341 = or i32 %337, %340
  %342 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 39
  %343 = load i32, i32* %342, align 4
  %344 = shl i32 %343, 12
  %345 = or i32 %341, %344
  %346 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 40
  %347 = load i32, i32* %346, align 16
  %348 = shl i32 %347, 10
  %349 = or i32 %345, %348
  %350 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 41
  %351 = load i32, i32* %350, align 4
  %352 = shl i32 %351, 8
  %353 = or i32 %349, %352
  %354 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 42
  %355 = load i32, i32* %354, align 8
  %356 = shl i32 %355, 6
  %357 = or i32 %353, %356
  %358 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 43
  %359 = load i32, i32* %358, align 4
  %360 = shl i32 %359, 4
  %361 = or i32 %357, %360
  %362 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 44
  %363 = load i32, i32* %362, align 16
  %364 = shl i32 %363, 2
  %365 = or i32 %361, %364
  %366 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 45
  %367 = load i32, i32* %366, align 4
  %368 = shl i32 %367, 0
  %369 = or i32 %365, %368
  store i32 %369, i32* %21, align 4
  %370 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %371 = load i32, i32* @AR_PHY_BIN_MASK_2, align 4
  %372 = load i32, i32* %21, align 4
  %373 = call i32 @OS_REG_WRITE(%struct.ath_hal* %370, i32 %371, i32 %372)
  %374 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %375 = load i32, i32* @AR_PHY_MASK2_M_31_45, align 4
  %376 = load i32, i32* %21, align 4
  %377 = call i32 @OS_REG_WRITE(%struct.ath_hal* %374, i32 %375, i32 %376)
  %378 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 16
  %379 = load i32, i32* %378, align 16
  %380 = shl i32 %379, 30
  %381 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 16
  %382 = load i32, i32* %381, align 16
  %383 = shl i32 %382, 28
  %384 = or i32 %380, %383
  %385 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 18
  %386 = load i32, i32* %385, align 8
  %387 = shl i32 %386, 26
  %388 = or i32 %384, %387
  %389 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 18
  %390 = load i32, i32* %389, align 8
  %391 = shl i32 %390, 24
  %392 = or i32 %388, %391
  %393 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 20
  %394 = load i32, i32* %393, align 16
  %395 = shl i32 %394, 22
  %396 = or i32 %392, %395
  %397 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 20
  %398 = load i32, i32* %397, align 16
  %399 = shl i32 %398, 20
  %400 = or i32 %396, %399
  %401 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 22
  %402 = load i32, i32* %401, align 8
  %403 = shl i32 %402, 18
  %404 = or i32 %400, %403
  %405 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 22
  %406 = load i32, i32* %405, align 8
  %407 = shl i32 %406, 16
  %408 = or i32 %404, %407
  %409 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 24
  %410 = load i32, i32* %409, align 16
  %411 = shl i32 %410, 14
  %412 = or i32 %408, %411
  %413 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 24
  %414 = load i32, i32* %413, align 16
  %415 = shl i32 %414, 12
  %416 = or i32 %412, %415
  %417 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 25
  %418 = load i32, i32* %417, align 4
  %419 = shl i32 %418, 10
  %420 = or i32 %416, %419
  %421 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 26
  %422 = load i32, i32* %421, align 8
  %423 = shl i32 %422, 8
  %424 = or i32 %420, %423
  %425 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 27
  %426 = load i32, i32* %425, align 4
  %427 = shl i32 %426, 6
  %428 = or i32 %424, %427
  %429 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 28
  %430 = load i32, i32* %429, align 16
  %431 = shl i32 %430, 4
  %432 = or i32 %428, %431
  %433 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 29
  %434 = load i32, i32* %433, align 4
  %435 = shl i32 %434, 2
  %436 = or i32 %432, %435
  %437 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 30
  %438 = load i32, i32* %437, align 8
  %439 = shl i32 %438, 0
  %440 = or i32 %436, %439
  store i32 %440, i32* %21, align 4
  %441 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %442 = load i32, i32* @AR_PHY_BIN_MASK_3, align 4
  %443 = load i32, i32* %21, align 4
  %444 = call i32 @OS_REG_WRITE(%struct.ath_hal* %441, i32 %442, i32 %443)
  %445 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %446 = load i32, i32* @AR_PHY_MASK2_M_16_30, align 4
  %447 = load i32, i32* %21, align 4
  %448 = call i32 @OS_REG_WRITE(%struct.ath_hal* %445, i32 %446, i32 %447)
  %449 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 0
  %450 = load i32, i32* %449, align 16
  %451 = shl i32 %450, 30
  %452 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 1
  %453 = load i32, i32* %452, align 4
  %454 = shl i32 %453, 28
  %455 = or i32 %451, %454
  %456 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 2
  %457 = load i32, i32* %456, align 8
  %458 = shl i32 %457, 26
  %459 = or i32 %455, %458
  %460 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 3
  %461 = load i32, i32* %460, align 4
  %462 = shl i32 %461, 24
  %463 = or i32 %459, %462
  %464 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 4
  %465 = load i32, i32* %464, align 16
  %466 = shl i32 %465, 22
  %467 = or i32 %463, %466
  %468 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 5
  %469 = load i32, i32* %468, align 4
  %470 = shl i32 %469, 20
  %471 = or i32 %467, %470
  %472 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 6
  %473 = load i32, i32* %472, align 8
  %474 = shl i32 %473, 18
  %475 = or i32 %471, %474
  %476 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 7
  %477 = load i32, i32* %476, align 4
  %478 = shl i32 %477, 16
  %479 = or i32 %475, %478
  %480 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 8
  %481 = load i32, i32* %480, align 16
  %482 = shl i32 %481, 14
  %483 = or i32 %479, %482
  %484 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 9
  %485 = load i32, i32* %484, align 4
  %486 = shl i32 %485, 12
  %487 = or i32 %483, %486
  %488 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 10
  %489 = load i32, i32* %488, align 8
  %490 = shl i32 %489, 10
  %491 = or i32 %487, %490
  %492 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 11
  %493 = load i32, i32* %492, align 4
  %494 = shl i32 %493, 8
  %495 = or i32 %491, %494
  %496 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 12
  %497 = load i32, i32* %496, align 16
  %498 = shl i32 %497, 6
  %499 = or i32 %495, %498
  %500 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 13
  %501 = load i32, i32* %500, align 4
  %502 = shl i32 %501, 4
  %503 = or i32 %499, %502
  %504 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 14
  %505 = load i32, i32* %504, align 8
  %506 = shl i32 %505, 2
  %507 = or i32 %503, %506
  %508 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 15
  %509 = load i32, i32* %508, align 4
  %510 = shl i32 %509, 0
  %511 = or i32 %507, %510
  store i32 %511, i32* %21, align 4
  %512 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %513 = load i32, i32* @AR_PHY_MASK_CTL, align 4
  %514 = load i32, i32* %21, align 4
  %515 = call i32 @OS_REG_WRITE(%struct.ath_hal* %512, i32 %513, i32 %514)
  %516 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %517 = load i32, i32* @AR_PHY_MASK2_M_00_15, align 4
  %518 = load i32, i32* %21, align 4
  %519 = call i32 @OS_REG_WRITE(%struct.ath_hal* %516, i32 %517, i32 %518)
  %520 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 15
  %521 = load i32, i32* %520, align 4
  %522 = shl i32 %521, 28
  %523 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 14
  %524 = load i32, i32* %523, align 8
  %525 = shl i32 %524, 26
  %526 = or i32 %522, %525
  %527 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 13
  %528 = load i32, i32* %527, align 4
  %529 = shl i32 %528, 24
  %530 = or i32 %526, %529
  %531 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 12
  %532 = load i32, i32* %531, align 16
  %533 = shl i32 %532, 22
  %534 = or i32 %530, %533
  %535 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 11
  %536 = load i32, i32* %535, align 4
  %537 = shl i32 %536, 20
  %538 = or i32 %534, %537
  %539 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 10
  %540 = load i32, i32* %539, align 8
  %541 = shl i32 %540, 18
  %542 = or i32 %538, %541
  %543 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 9
  %544 = load i32, i32* %543, align 4
  %545 = shl i32 %544, 16
  %546 = or i32 %542, %545
  %547 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 8
  %548 = load i32, i32* %547, align 16
  %549 = shl i32 %548, 14
  %550 = or i32 %546, %549
  %551 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 7
  %552 = load i32, i32* %551, align 4
  %553 = shl i32 %552, 12
  %554 = or i32 %550, %553
  %555 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 6
  %556 = load i32, i32* %555, align 8
  %557 = shl i32 %556, 10
  %558 = or i32 %554, %557
  %559 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 5
  %560 = load i32, i32* %559, align 4
  %561 = shl i32 %560, 8
  %562 = or i32 %558, %561
  %563 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 4
  %564 = load i32, i32* %563, align 16
  %565 = shl i32 %564, 6
  %566 = or i32 %562, %565
  %567 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 3
  %568 = load i32, i32* %567, align 4
  %569 = shl i32 %568, 4
  %570 = or i32 %566, %569
  %571 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 2
  %572 = load i32, i32* %571, align 8
  %573 = shl i32 %572, 2
  %574 = or i32 %570, %573
  %575 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 1
  %576 = load i32, i32* %575, align 4
  %577 = shl i32 %576, 0
  %578 = or i32 %574, %577
  store i32 %578, i32* %21, align 4
  %579 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %580 = load i32, i32* @AR_PHY_BIN_MASK2_1, align 4
  %581 = load i32, i32* %21, align 4
  %582 = call i32 @OS_REG_WRITE(%struct.ath_hal* %579, i32 %580, i32 %581)
  %583 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %584 = load i32, i32* @AR_PHY_MASK2_P_15_01, align 4
  %585 = load i32, i32* %21, align 4
  %586 = call i32 @OS_REG_WRITE(%struct.ath_hal* %583, i32 %584, i32 %585)
  %587 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 30
  %588 = load i32, i32* %587, align 8
  %589 = shl i32 %588, 28
  %590 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 29
  %591 = load i32, i32* %590, align 4
  %592 = shl i32 %591, 26
  %593 = or i32 %589, %592
  %594 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 28
  %595 = load i32, i32* %594, align 16
  %596 = shl i32 %595, 24
  %597 = or i32 %593, %596
  %598 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 27
  %599 = load i32, i32* %598, align 4
  %600 = shl i32 %599, 22
  %601 = or i32 %597, %600
  %602 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 26
  %603 = load i32, i32* %602, align 8
  %604 = shl i32 %603, 20
  %605 = or i32 %601, %604
  %606 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 25
  %607 = load i32, i32* %606, align 4
  %608 = shl i32 %607, 18
  %609 = or i32 %605, %608
  %610 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 24
  %611 = load i32, i32* %610, align 16
  %612 = shl i32 %611, 16
  %613 = or i32 %609, %612
  %614 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 23
  %615 = load i32, i32* %614, align 4
  %616 = shl i32 %615, 14
  %617 = or i32 %613, %616
  %618 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 22
  %619 = load i32, i32* %618, align 8
  %620 = shl i32 %619, 12
  %621 = or i32 %617, %620
  %622 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 21
  %623 = load i32, i32* %622, align 4
  %624 = shl i32 %623, 10
  %625 = or i32 %621, %624
  %626 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 20
  %627 = load i32, i32* %626, align 16
  %628 = shl i32 %627, 8
  %629 = or i32 %625, %628
  %630 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 19
  %631 = load i32, i32* %630, align 4
  %632 = shl i32 %631, 6
  %633 = or i32 %629, %632
  %634 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 18
  %635 = load i32, i32* %634, align 8
  %636 = shl i32 %635, 4
  %637 = or i32 %633, %636
  %638 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 17
  %639 = load i32, i32* %638, align 4
  %640 = shl i32 %639, 2
  %641 = or i32 %637, %640
  %642 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 16
  %643 = load i32, i32* %642, align 16
  %644 = shl i32 %643, 0
  %645 = or i32 %641, %644
  store i32 %645, i32* %21, align 4
  %646 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %647 = load i32, i32* @AR_PHY_BIN_MASK2_2, align 4
  %648 = load i32, i32* %21, align 4
  %649 = call i32 @OS_REG_WRITE(%struct.ath_hal* %646, i32 %647, i32 %648)
  %650 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %651 = load i32, i32* @AR_PHY_MASK2_P_30_16, align 4
  %652 = load i32, i32* %21, align 4
  %653 = call i32 @OS_REG_WRITE(%struct.ath_hal* %650, i32 %651, i32 %652)
  %654 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 45
  %655 = load i32, i32* %654, align 4
  %656 = shl i32 %655, 28
  %657 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 44
  %658 = load i32, i32* %657, align 16
  %659 = shl i32 %658, 26
  %660 = or i32 %656, %659
  %661 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 43
  %662 = load i32, i32* %661, align 4
  %663 = shl i32 %662, 24
  %664 = or i32 %660, %663
  %665 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 42
  %666 = load i32, i32* %665, align 8
  %667 = shl i32 %666, 22
  %668 = or i32 %664, %667
  %669 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 41
  %670 = load i32, i32* %669, align 4
  %671 = shl i32 %670, 20
  %672 = or i32 %668, %671
  %673 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 40
  %674 = load i32, i32* %673, align 16
  %675 = shl i32 %674, 18
  %676 = or i32 %672, %675
  %677 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 39
  %678 = load i32, i32* %677, align 4
  %679 = shl i32 %678, 16
  %680 = or i32 %676, %679
  %681 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 38
  %682 = load i32, i32* %681, align 8
  %683 = shl i32 %682, 14
  %684 = or i32 %680, %683
  %685 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 37
  %686 = load i32, i32* %685, align 4
  %687 = shl i32 %686, 12
  %688 = or i32 %684, %687
  %689 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 36
  %690 = load i32, i32* %689, align 16
  %691 = shl i32 %690, 10
  %692 = or i32 %688, %691
  %693 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 35
  %694 = load i32, i32* %693, align 4
  %695 = shl i32 %694, 8
  %696 = or i32 %692, %695
  %697 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 34
  %698 = load i32, i32* %697, align 8
  %699 = shl i32 %698, 6
  %700 = or i32 %696, %699
  %701 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 33
  %702 = load i32, i32* %701, align 4
  %703 = shl i32 %702, 4
  %704 = or i32 %700, %703
  %705 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 32
  %706 = load i32, i32* %705, align 16
  %707 = shl i32 %706, 2
  %708 = or i32 %704, %707
  %709 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 31
  %710 = load i32, i32* %709, align 4
  %711 = shl i32 %710, 0
  %712 = or i32 %708, %711
  store i32 %712, i32* %21, align 4
  %713 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %714 = load i32, i32* @AR_PHY_BIN_MASK2_3, align 4
  %715 = load i32, i32* %21, align 4
  %716 = call i32 @OS_REG_WRITE(%struct.ath_hal* %713, i32 %714, i32 %715)
  %717 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %718 = load i32, i32* @AR_PHY_MASK2_P_45_31, align 4
  %719 = load i32, i32* %21, align 4
  %720 = call i32 @OS_REG_WRITE(%struct.ath_hal* %717, i32 %718, i32 %719)
  %721 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 61
  %722 = load i32, i32* %721, align 4
  %723 = shl i32 %722, 30
  %724 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 60
  %725 = load i32, i32* %724, align 16
  %726 = shl i32 %725, 28
  %727 = or i32 %723, %726
  %728 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 59
  %729 = load i32, i32* %728, align 4
  %730 = shl i32 %729, 26
  %731 = or i32 %727, %730
  %732 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 58
  %733 = load i32, i32* %732, align 8
  %734 = shl i32 %733, 24
  %735 = or i32 %731, %734
  %736 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 57
  %737 = load i32, i32* %736, align 4
  %738 = shl i32 %737, 22
  %739 = or i32 %735, %738
  %740 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 56
  %741 = load i32, i32* %740, align 16
  %742 = shl i32 %741, 20
  %743 = or i32 %739, %742
  %744 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 55
  %745 = load i32, i32* %744, align 4
  %746 = shl i32 %745, 18
  %747 = or i32 %743, %746
  %748 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 54
  %749 = load i32, i32* %748, align 8
  %750 = shl i32 %749, 16
  %751 = or i32 %747, %750
  %752 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 53
  %753 = load i32, i32* %752, align 4
  %754 = shl i32 %753, 14
  %755 = or i32 %751, %754
  %756 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 52
  %757 = load i32, i32* %756, align 16
  %758 = shl i32 %757, 12
  %759 = or i32 %755, %758
  %760 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 51
  %761 = load i32, i32* %760, align 4
  %762 = shl i32 %761, 10
  %763 = or i32 %759, %762
  %764 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 50
  %765 = load i32, i32* %764, align 8
  %766 = shl i32 %765, 8
  %767 = or i32 %763, %766
  %768 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 49
  %769 = load i32, i32* %768, align 4
  %770 = shl i32 %769, 6
  %771 = or i32 %767, %770
  %772 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 48
  %773 = load i32, i32* %772, align 16
  %774 = shl i32 %773, 4
  %775 = or i32 %771, %774
  %776 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 47
  %777 = load i32, i32* %776, align 4
  %778 = shl i32 %777, 2
  %779 = or i32 %775, %778
  %780 = getelementptr inbounds [123 x i32], [123 x i32]* %19, i64 0, i64 46
  %781 = load i32, i32* %780, align 8
  %782 = shl i32 %781, 0
  %783 = or i32 %779, %782
  store i32 %783, i32* %21, align 4
  %784 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %785 = load i32, i32* @AR_PHY_BIN_MASK2_4, align 4
  %786 = load i32, i32* %21, align 4
  %787 = call i32 @OS_REG_WRITE(%struct.ath_hal* %784, i32 %785, i32 %786)
  %788 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %789 = load i32, i32* @AR_PHY_MASK2_P_61_45, align 4
  %790 = load i32, i32* %21, align 4
  %791 = call i32 @OS_REG_WRITE(%struct.ath_hal* %788, i32 %789, i32 %790)
  %792 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %793 = call i32 @OS_REG_WRITE_BUFFER_FLUSH(%struct.ath_hal* %792)
  %794 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %795 = call i32 @OS_REG_WRITE_BUFFER_DISABLE(%struct.ath_hal* %794)
  br label %796

796:                                              ; preds = %239, %70
  ret void
}

declare dso_local i32 @ath_hal_gethwchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_MEMZERO(i32*, i32) #1

declare dso_local i32 @ath_hal_getSpurChan(%struct.ath_hal*, i32, i64) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4_CHAIN(i32) #1

declare dso_local i32 @OS_REG_WRITE_BUFFER_ENABLE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @OS_REG_WRITE_BUFFER_FLUSH(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE_BUFFER_DISABLE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
