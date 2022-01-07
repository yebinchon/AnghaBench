; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32, i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.snddev_info = type { i32 }

@SOUND_MIXER_NONE = common dso_local global i32 0, align 4
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@SD_F_MPSAFE = common dso_local global i32 0, align 4
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@SOUND_MIXER_TREBLE = common dso_local global i32 0, align 4
@SOUND_MIXER_BASS = common dso_local global i32 0, align 4
@SD_F_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32)* @mixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_set(%struct.snd_mixer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snddev_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @SOUND_MIXER_NONE, align 4
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %20 = icmp eq %struct.snd_mixer* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %27 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 0, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %21, %3
  store i32 -1, i32* %4, align 4
  br label %348

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  %37 = call i32 @min(i32 %36, i32 100)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 65280
  %40 = ashr i32 %39, 8
  %41 = call i32 @min(i32 %40, i32 100)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %43 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  %49 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %50 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.snddev_info* @device_get_softc(i32 %51)
  store %struct.snddev_info* %52, %struct.snddev_info** %8, align 8
  %53 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %54 = icmp eq %struct.snddev_info* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %348

56:                                               ; preds = %34
  %57 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %58 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SD_F_MPSAFE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %65 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @mtx_owned(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %17, align 4
  br label %71

70:                                               ; preds = %63, %56
  store i32 0, i32* %17, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @MIXER_SET_UNLOCK(%struct.snd_mixer* %72, i32 %73)
  %75 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %76 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* @SOUND_MIXER_NONE, align 4
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %85, %71
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @SOUND_MIXER_NONE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %93 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %91, %87
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @SOUND_MIXER_NONE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %160

103:                                              ; preds = %99
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %106 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 255
  %113 = mul nsw i32 %104, %112
  %114 = sdiv i32 %113, 100
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %117 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 65280
  %124 = ashr i32 %123, 8
  %125 = mul nsw i32 %115, %124
  %126 = sdiv i32 %125, 100
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %103
  %131 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %132 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %139 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @mixer_set_softpcmvol(%struct.snd_mixer* %138, %struct.snddev_info* %139, i32 %140, i32 %141)
  br label %159

143:                                              ; preds = %130, %103
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @SOUND_MIXER_NONE, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i64 @MIXER_SET(%struct.snd_mixer* %148, i32 %149, i32 %150, i32 %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @MIXER_SET_LOCK(%struct.snd_mixer* %155, i32 %156)
  store i32 -1, i32* %4, align 4
  br label %348

158:                                              ; preds = %147, %143
  br label %159

159:                                              ; preds = %158, %137
  br label %330

160:                                              ; preds = %99
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %270

163:                                              ; preds = %160
  store i32 0, i32* %16, align 4
  br label %164

164:                                              ; preds = %244, %163
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %247

168:                                              ; preds = %164
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %16, align 4
  %171 = shl i32 1, %170
  %172 = and i32 %169, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %168
  %175 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %176 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %174, %168
  br label %244

185:                                              ; preds = %174
  %186 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %187 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %195 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, 255
  %202 = mul nsw i32 %193, %201
  %203 = sdiv i32 %202, 100
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %206 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 65280
  %213 = ashr i32 %212, 8
  %214 = mul nsw i32 %204, %213
  %215 = sdiv i32 %214, 100
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %185
  %220 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %221 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %228 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @mixer_set_softpcmvol(%struct.snd_mixer* %227, %struct.snddev_info* %228, i32 %229, i32 %230)
  br label %243

232:                                              ; preds = %219, %185
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* @SOUND_MIXER_NONE, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %232
  %237 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %12, align 4
  %241 = call i64 @MIXER_SET(%struct.snd_mixer* %237, i32 %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %236, %232
  br label %243

243:                                              ; preds = %242, %226
  br label %244

244:                                              ; preds = %243, %184
  %245 = load i32, i32* %16, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %16, align 4
  br label %164

247:                                              ; preds = %164
  %248 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %249 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %15, align 4
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* @SOUND_MIXER_NONE, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %269

258:                                              ; preds = %247
  %259 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i64 @MIXER_SET(%struct.snd_mixer* %259, i32 %260, i32 %261, i32 %262)
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %258
  %266 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %267 = load i32, i32* %17, align 4
  %268 = call i32 @MIXER_SET_LOCK(%struct.snd_mixer* %266, i32 %267)
  store i32 -1, i32* %4, align 4
  br label %348

269:                                              ; preds = %258, %247
  br label %329

270:                                              ; preds = %160
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %287

274:                                              ; preds = %270
  %275 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %276 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %274
  %282 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %283 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* %10, align 4
  %286 = call i32 @mixer_set_softpcmvol(%struct.snd_mixer* %282, %struct.snddev_info* %283, i32 %284, i32 %285)
  br label %328

287:                                              ; preds = %274, %270
  %288 = load i32, i32* %6, align 4
  %289 = load i32, i32* @SOUND_MIXER_TREBLE, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @SOUND_MIXER_BASS, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %311

295:                                              ; preds = %291, %287
  %296 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %297 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @SD_F_EQ, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %295
  %303 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %304 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %305 = load i32, i32* %6, align 4
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 %306, %307
  %309 = ashr i32 %308, 1
  %310 = call i32 @mixer_set_eq(%struct.snd_mixer* %303, %struct.snddev_info* %304, i32 %305, i32 %309)
  br label %327

311:                                              ; preds = %295, %291
  %312 = load i32, i32* %15, align 4
  %313 = load i32, i32* @SOUND_MIXER_NONE, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %326

315:                                              ; preds = %311
  %316 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %317 = load i32, i32* %15, align 4
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* %10, align 4
  %320 = call i64 @MIXER_SET(%struct.snd_mixer* %316, i32 %317, i32 %318, i32 %319)
  %321 = icmp slt i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %315
  %323 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %324 = load i32, i32* %17, align 4
  %325 = call i32 @MIXER_SET_LOCK(%struct.snd_mixer* %323, i32 %324)
  store i32 -1, i32* %4, align 4
  br label %348

326:                                              ; preds = %315, %311
  br label %327

327:                                              ; preds = %326, %302
  br label %328

328:                                              ; preds = %327, %281
  br label %329

329:                                              ; preds = %328, %269
  br label %330

330:                                              ; preds = %329, %159
  %331 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %332 = load i32, i32* %17, align 4
  %333 = call i32 @MIXER_SET_LOCK(%struct.snd_mixer* %331, i32 %332)
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* %10, align 4
  %336 = shl i32 %335, 8
  %337 = or i32 %334, %336
  %338 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %339 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %338, i32 0, i32 4
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  store i32 %337, i32* %343, align 4
  %344 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %345 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 8
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 8
  store i32 0, i32* %4, align 4
  br label %348

348:                                              ; preds = %330, %322, %265, %154, %55, %33
  %349 = load i32, i32* %4, align 4
  ret i32 %349
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i64 @mtx_owned(i32) #1

declare dso_local i32 @MIXER_SET_UNLOCK(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mixer_set_softpcmvol(%struct.snd_mixer*, %struct.snddev_info*, i32, i32) #1

declare dso_local i64 @MIXER_SET(%struct.snd_mixer*, i32, i32, i32) #1

declare dso_local i32 @MIXER_SET_LOCK(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mixer_set_eq(%struct.snd_mixer*, %struct.snddev_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
