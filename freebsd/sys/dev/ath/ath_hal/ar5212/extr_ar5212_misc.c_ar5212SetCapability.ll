; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetCapability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetCapability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32, i32, i32, i32, i32, i32 (%struct.ath_hal.0*, i32, i32)*, i32, i32 }
%struct.ath_hal.0 = type opaque
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }

@AR_STA_ID1_CRPT_MIC_ENABLE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AR_MISC_MODE_MIC_NEW_LOC_ENABLE = common dso_local global i32 0, align 4
@AR_MISC_MODE = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV = common dso_local global i32 0, align 4
@AR_PHY_RESTART = common dso_local global i32 0, align 4
@AR_PHY_RESTART_DIV_GC = common dso_local global i32 0, align 4
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_STA_ID1_MCAST_KSRCH = common dso_local global i32 0, align 4
@AR_TPC_ACK = common dso_local global i32 0, align 4
@AR_TPC_CTS = common dso_local global i32 0, align 4
@AR_TPC = common dso_local global i32 0, align 4
@ar5212SetCapability.cmds = internal constant [7 x i32] [i32 140, i32 143, i32 142, i32 141, i32 145, i32 144, i32 139], align 16
@AR_MISC_MODE_TX_ADD_TSF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212SetCapability(%struct.ath_hal* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ath_hal_5212*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %16 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %15)
  store %struct.ath_hal_5212* %16, %struct.ath_hal_5212** %12, align 8
  %17 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %18 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %13, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %270 [
    i32 133, label %21
    i32 132, label %39
    i32 137, label %74
    i32 138, label %141
    i32 131, label %154
    i32 135, label %161
    i32 130, label %179
    i32 129, label %179
    i32 136, label %225
    i32 128, label %246
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* @AR_STA_ID1_CRPT_MIC_ENABLE, align 4
  %26 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %27 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @AR_STA_ID1_CRPT_MIC_ENABLE, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %34 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* @AH_TRUE, align 4
  store i32 %38, i32* %6, align 4
  br label %277

39:                                               ; preds = %5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @AH_FALSE, align 4
  store i32 %45, i32* %6, align 4
  br label %277

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* @AR_MISC_MODE_MIC_NEW_LOC_ENABLE, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %53 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %62

56:                                               ; preds = %46
  %57 = load i32, i32* @AR_MISC_MODE_MIC_NEW_LOC_ENABLE, align 4
  %58 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %59 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %64 = load i32, i32* @AR_MISC_MODE, align 4
  %65 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %66 = load i32, i32* @AR_MISC_MODE, align 4
  %67 = call i32 @OS_REG_READ(%struct.ath_hal* %65, i32 %66)
  %68 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %69 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %67, %70
  %72 = call i32 @OS_REG_WRITE(%struct.ath_hal* %63, i32 %64, i32 %71)
  %73 = load i32, i32* @AH_TRUE, align 4
  store i32 %73, i32* %6, align 4
  br label %277

74:                                               ; preds = %5
  %75 = load i32, i32* %9, align 4
  switch i32 %75, label %139 [
    i32 0, label %76
    i32 1, label %78
    i32 134, label %114
  ]

76:                                               ; preds = %74
  %77 = load i32, i32* @AH_FALSE, align 4
  store i32 %77, i32* %6, align 4
  br label %277

78:                                               ; preds = %74
  %79 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %80 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 134
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %88 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %89 = call i32 @OS_REG_READ(%struct.ath_hal* %87, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %14, align 4
  br label %101

96:                                               ; preds = %86
  %97 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %96, %92
  %102 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %103 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @OS_REG_WRITE(%struct.ath_hal* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %83
  br label %107

107:                                              ; preds = %106, %78
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %112 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @AH_TRUE, align 4
  store i32 %113, i32* %6, align 4
  br label %277

114:                                              ; preds = %74
  %115 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %116 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @AH_FALSE, align 4
  store i32 %120, i32* %6, align 4
  br label %277

121:                                              ; preds = %114
  %122 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %123 = load i32, i32* @AR_PHY_RESTART, align 4
  %124 = call i32 @OS_REG_READ(%struct.ath_hal* %122, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* @AR_PHY_RESTART_DIV_GC, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %14, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @AR_PHY_RESTART_DIV_GC, align 4
  %131 = call i32 @SM(i32 %129, i32 %130)
  %132 = load i32, i32* %14, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %14, align 4
  %134 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %135 = load i32, i32* @AR_PHY_RESTART, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @OS_REG_WRITE(%struct.ath_hal* %134, i32 %135, i32 %136)
  %138 = load i32, i32* @AH_TRUE, align 4
  store i32 %138, i32* %6, align 4
  br label %277

139:                                              ; preds = %74
  %140 = load i32, i32* @AH_FALSE, align 4
  store i32 %140, i32* %6, align 4
  br label %277

141:                                              ; preds = %5
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %144 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %143)
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 4
  %146 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %147 = load i32, i32* @AR_DIAG_SW, align 4
  %148 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %149 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %148)
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @OS_REG_WRITE(%struct.ath_hal* %146, i32 %147, i32 %151)
  %153 = load i32, i32* @AH_TRUE, align 4
  store i32 %153, i32* %6, align 4
  br label %277

154:                                              ; preds = %5
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %159 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @AH_TRUE, align 4
  store i32 %160, i32* %6, align 4
  br label %277

161:                                              ; preds = %5
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* @AR_STA_ID1_MCAST_KSRCH, align 4
  %166 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %167 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %177

170:                                              ; preds = %161
  %171 = load i32, i32* @AR_STA_ID1_MCAST_KSRCH, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %174 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %170, %164
  %178 = load i32, i32* @AH_TRUE, align 4
  store i32 %178, i32* %6, align 4
  br label %277

179:                                              ; preds = %5, %5
  %180 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %181 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp sgt i32 %185, 63
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  store i32 63, i32* %10, align 4
  br label %188

188:                                              ; preds = %187, %179
  %189 = load i32, i32* %8, align 4
  %190 = icmp eq i32 %189, 130
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load i32, i32* @AR_TPC_ACK, align 4
  %193 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %194 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @AR_TPC_ACK, align 4
  %199 = call i32 @MS(i32 %197, i32 %198)
  %200 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %201 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %217

204:                                              ; preds = %188
  %205 = load i32, i32* @AR_TPC_CTS, align 4
  %206 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %207 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @AR_TPC_CTS, align 4
  %212 = call i32 @MS(i32 %210, i32 %211)
  %213 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %214 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %204, %191
  %218 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %219 = load i32, i32* @AR_TPC, align 4
  %220 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %221 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @OS_REG_WRITE(%struct.ath_hal* %218, i32 %219, i32 %222)
  %224 = load i32, i32* @AH_TRUE, align 4
  store i32 %224, i32* %6, align 4
  br label %277

225:                                              ; preds = %5
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = icmp ult i64 %227, 7
  br i1 %228, label %229, label %242

229:                                              ; preds = %225
  %230 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %231 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %230)
  %232 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %231, i32 0, i32 5
  %233 = load i32 (%struct.ath_hal.0*, i32, i32)*, i32 (%struct.ath_hal.0*, i32, i32)** %232, align 8
  %234 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %235 = bitcast %struct.ath_hal* %234 to %struct.ath_hal.0*
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [7 x i32], [7 x i32]* @ar5212SetCapability.cmds, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 %233(%struct.ath_hal.0* %235, i32 %239, i32 %240)
  br label %244

242:                                              ; preds = %225
  %243 = load i32, i32* @AH_FALSE, align 4
  br label %244

244:                                              ; preds = %242, %229
  %245 = phi i32 [ %241, %229 ], [ %243, %242 ]
  store i32 %245, i32* %6, align 4
  br label %277

246:                                              ; preds = %5
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %269

251:                                              ; preds = %246
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load i32, i32* @AR_MISC_MODE_TX_ADD_TSF, align 4
  %256 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %257 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  br label %267

260:                                              ; preds = %251
  %261 = load i32, i32* @AR_MISC_MODE_TX_ADD_TSF, align 4
  %262 = xor i32 %261, -1
  %263 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %12, align 8
  %264 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %265, %262
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %260, %254
  %268 = load i32, i32* @AH_TRUE, align 4
  store i32 %268, i32* %6, align 4
  br label %277

269:                                              ; preds = %246
  br label %270

270:                                              ; preds = %5, %269
  %271 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* %10, align 4
  %275 = load i32*, i32** %11, align 8
  %276 = call i32 @ath_hal_setcapability(%struct.ath_hal* %271, i32 %272, i32 %273, i32 %274, i32* %275)
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %270, %267, %244, %217, %177, %154, %141, %139, %121, %119, %107, %76, %62, %44, %37
  %278 = load i32, i32* %6, align 4
  ret i32 %278
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath_hal_setcapability(%struct.ath_hal*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
