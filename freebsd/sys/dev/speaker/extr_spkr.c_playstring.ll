; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/speaker/extr_spkr.c_playstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/speaker/extr_spkr.c_playstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTAVE_NOTES = common dso_local global i32 0, align 4
@DFLT_OCTAVE = common dso_local global i32 0, align 4
@notetab = common dso_local global i32* null, align 8
@octave = common dso_local global i32 0, align 4
@octtrack = common dso_local global i8* null, align 8
@octprefix = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@MIN_VALUE = common dso_local global i32 0, align 4
@value = common dso_local global i32 0, align 4
@fill = common dso_local global i32 0, align 4
@LEGATO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@pitchtab = common dso_local global i32 0, align 4
@DFLT_VALUE = common dso_local global i32 0, align 4
@MIN_TEMPO = common dso_local global i32 0, align 4
@MAX_TEMPO = common dso_local global i32 0, align 4
@DFLT_TEMPO = common dso_local global i32 0, align 4
@SECS_PER_MIN = common dso_local global i32 0, align 4
@WHOLE_NOTE = common dso_local global i32 0, align 4
@whole = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@STACCATO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @playstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @playstring(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @OCTAVE_NOTES, align 4
  %13 = load i32, i32* @DFLT_OCTAVE, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %519, %2
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %4, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %522

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call signext i8 @toupper(i8 signext %21)
  store i8 %22, i8* %11, align 1
  %23 = load i8, i8* %11, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %518 [
    i32 65, label %25
    i32 66, label %25
    i32 67, label %25
    i32 68, label %25
    i32 69, label %25
    i32 70, label %25
    i32 71, label %25
    i32 79, label %181
    i32 62, label %254
    i32 60, label %267
    i32 78, label %275
    i32 76, label %334
    i32 80, label %368
    i32 126, label %368
    i32 84, label %420
    i32 77, label %461
  ]

25:                                               ; preds = %19, %19, %19, %19, %19, %19, %19
  %26 = load i32*, i32** @notetab, align 8
  %27 = load i8, i8* %11, align 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %28, 65
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @octave, align 4
  %34 = load i32, i32* @OCTAVE_NOTES, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %5, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 35
  br i1 %41, label %48, label %42

42:                                               ; preds = %25
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 43
  br i1 %47, label %48, label %55

48:                                               ; preds = %42, %25
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %4, align 8
  br label %69

55:                                               ; preds = %42
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 45
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %5, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  %66 = load i64, i64* %4, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %61, %55
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i8*, i8** @octtrack, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %112

72:                                               ; preds = %69
  %73 = load i8*, i8** @octprefix, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %112, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i32 @abs(i32 %78) #4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @OCTAVE_NOTES, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i32 @abs(i32 %84) #4
  %86 = icmp sgt i32 %79, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %75
  %88 = load i32, i32* @octave, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @octave, align 4
  %90 = load i32, i32* @OCTAVE_NOTES, align 4
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %75
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @abs(i32 %96) #4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @OCTAVE_NOTES, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %100, %101
  %103 = call i32 @abs(i32 %102) #4
  %104 = icmp sgt i32 %97, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %93
  %106 = load i32, i32* @octave, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* @octave, align 4
  %108 = load i32, i32* @OCTAVE_NOTES, align 4
  %109 = load i32, i32* %5, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %93
  br label %112

112:                                              ; preds = %111, %72, %69
  %113 = load i8*, i8** @FALSE, align 8
  store i8* %113, i8** @octprefix, align 8
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %127, %112
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = call i32 @isdigit(i32 %119) #5
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i64, i64* %4, align 8
  %124 = icmp ugt i64 %123, 0
  br label %125

125:                                              ; preds = %122, %115
  %126 = phi i1 [ false, %115 ], [ %124, %122 ]
  br i1 %126, label %127, label %138

127:                                              ; preds = %125
  %128 = load i32, i32* %9, align 4
  %129 = mul nsw i32 %128, 10
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %3, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = sub nsw i32 %133, 48
  %135 = add nsw i32 %129, %134
  store i32 %135, i32* %9, align 4
  %136 = load i64, i64* %4, align 8
  %137 = add i64 %136, -1
  store i64 %137, i64* %4, align 8
  br label %115

138:                                              ; preds = %125
  %139 = load i32, i32* %9, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @MIN_VALUE, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141, %138
  %146 = load i32, i32* @value, align 4
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %145, %141
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %159, %147
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 46
  br i1 %153, label %154, label %162

154:                                              ; preds = %148
  %155 = load i64, i64* %4, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %4, align 8
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %154
  %160 = load i8*, i8** %3, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %3, align 8
  br label %148

162:                                              ; preds = %148
  %163 = load i32, i32* @fill, align 4
  store i32 %163, i32* %6, align 4
  %164 = load i8*, i8** %3, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 95
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load i32, i32* @LEGATO, align 4
  store i32 %170, i32* @fill, align 4
  %171 = load i8*, i8** %3, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %3, align 8
  %173 = load i64, i64* %4, align 8
  %174 = add i64 %173, -1
  store i64 %174, i64* %4, align 8
  br label %175

175:                                              ; preds = %169, %162
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @playtone(i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* @fill, align 4
  br label %518

181:                                              ; preds = %19
  %182 = load i8*, i8** %3, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 78
  br i1 %186, label %193, label %187

187:                                              ; preds = %181
  %188 = load i8*, i8** %3, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 110
  br i1 %192, label %193, label %199

193:                                              ; preds = %187, %181
  %194 = load i8*, i8** @FALSE, align 8
  store i8* %194, i8** @octtrack, align 8
  store i8* %194, i8** @octprefix, align 8
  %195 = load i8*, i8** %3, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %3, align 8
  %197 = load i64, i64* %4, align 8
  %198 = add i64 %197, -1
  store i64 %198, i64* %4, align 8
  br label %253

199:                                              ; preds = %187
  %200 = load i8*, i8** %3, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 76
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = load i8*, i8** %3, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 108
  br i1 %210, label %211, label %217

211:                                              ; preds = %205, %199
  %212 = load i8*, i8** @TRUE, align 8
  store i8* %212, i8** @octtrack, align 8
  %213 = load i8*, i8** %3, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %3, align 8
  %215 = load i64, i64* %4, align 8
  %216 = add i64 %215, -1
  store i64 %216, i64* %4, align 8
  br label %252

217:                                              ; preds = %205
  store i32 0, i32* @octave, align 4
  br label %218

218:                                              ; preds = %230, %217
  %219 = load i8*, i8** %3, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = call i32 @isdigit(i32 %222) #5
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load i64, i64* %4, align 8
  %227 = icmp ugt i64 %226, 0
  br label %228

228:                                              ; preds = %225, %218
  %229 = phi i1 [ false, %218 ], [ %227, %225 ]
  br i1 %229, label %230, label %241

230:                                              ; preds = %228
  %231 = load i32, i32* @octave, align 4
  %232 = mul nsw i32 %231, 10
  %233 = load i8*, i8** %3, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %3, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = sub nsw i32 %236, 48
  %238 = add nsw i32 %232, %237
  store i32 %238, i32* @octave, align 4
  %239 = load i64, i64* %4, align 8
  %240 = add i64 %239, -1
  store i64 %240, i64* %4, align 8
  br label %218

241:                                              ; preds = %228
  %242 = load i32, i32* @octave, align 4
  %243 = load i32, i32* @pitchtab, align 4
  %244 = call i32 @nitems(i32 %243)
  %245 = load i32, i32* @OCTAVE_NOTES, align 4
  %246 = sdiv i32 %244, %245
  %247 = icmp sge i32 %242, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = load i32, i32* @DFLT_OCTAVE, align 4
  store i32 %249, i32* @octave, align 4
  br label %250

250:                                              ; preds = %248, %241
  %251 = load i8*, i8** @TRUE, align 8
  store i8* %251, i8** @octprefix, align 8
  br label %252

252:                                              ; preds = %250, %211
  br label %253

253:                                              ; preds = %252, %193
  br label %518

254:                                              ; preds = %19
  %255 = load i32, i32* @octave, align 4
  %256 = load i32, i32* @pitchtab, align 4
  %257 = call i32 @nitems(i32 %256)
  %258 = load i32, i32* @OCTAVE_NOTES, align 4
  %259 = sdiv i32 %257, %258
  %260 = sub nsw i32 %259, 1
  %261 = icmp slt i32 %255, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %254
  %263 = load i32, i32* @octave, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* @octave, align 4
  br label %265

265:                                              ; preds = %262, %254
  %266 = load i8*, i8** @TRUE, align 8
  store i8* %266, i8** @octprefix, align 8
  br label %518

267:                                              ; preds = %19
  %268 = load i32, i32* @octave, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32, i32* @octave, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* @octave, align 4
  br label %273

273:                                              ; preds = %270, %267
  %274 = load i8*, i8** @TRUE, align 8
  store i8* %274, i8** @octprefix, align 8
  br label %518

275:                                              ; preds = %19
  store i32 0, i32* %5, align 4
  br label %276

276:                                              ; preds = %288, %275
  %277 = load i8*, i8** %3, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 1
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = call i32 @isdigit(i32 %280) #5
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %276
  %284 = load i64, i64* %4, align 8
  %285 = icmp ugt i64 %284, 0
  br label %286

286:                                              ; preds = %283, %276
  %287 = phi i1 [ false, %276 ], [ %285, %283 ]
  br i1 %287, label %288, label %299

288:                                              ; preds = %286
  %289 = load i32, i32* %5, align 4
  %290 = mul nsw i32 %289, 10
  %291 = load i8*, i8** %3, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %3, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = sub nsw i32 %294, 48
  %296 = add nsw i32 %290, %295
  store i32 %296, i32* %5, align 4
  %297 = load i64, i64* %4, align 8
  %298 = add i64 %297, -1
  store i64 %298, i64* %4, align 8
  br label %276

299:                                              ; preds = %286
  store i32 0, i32* %8, align 4
  br label %300

300:                                              ; preds = %311, %299
  %301 = load i8*, i8** %3, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 1
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 46
  br i1 %305, label %306, label %314

306:                                              ; preds = %300
  %307 = load i64, i64* %4, align 8
  %308 = add i64 %307, -1
  store i64 %308, i64* %4, align 8
  %309 = load i32, i32* %8, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %8, align 4
  br label %311

311:                                              ; preds = %306
  %312 = load i8*, i8** %3, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %313, i8** %3, align 8
  br label %300

314:                                              ; preds = %300
  %315 = load i32, i32* @fill, align 4
  store i32 %315, i32* %6, align 4
  %316 = load i8*, i8** %3, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 1
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 %319, 95
  br i1 %320, label %321, label %327

321:                                              ; preds = %314
  %322 = load i32, i32* @LEGATO, align 4
  store i32 %322, i32* @fill, align 4
  %323 = load i8*, i8** %3, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %3, align 8
  %325 = load i64, i64* %4, align 8
  %326 = add i64 %325, -1
  store i64 %326, i64* %4, align 8
  br label %327

327:                                              ; preds = %321, %314
  %328 = load i32, i32* %5, align 4
  %329 = sub nsw i32 %328, 1
  %330 = load i32, i32* @value, align 4
  %331 = load i32, i32* %8, align 4
  %332 = call i32 @playtone(i32 %329, i32 %330, i32 %331)
  %333 = load i32, i32* %6, align 4
  store i32 %333, i32* @fill, align 4
  br label %518

334:                                              ; preds = %19
  store i32 0, i32* @value, align 4
  br label %335

335:                                              ; preds = %347, %334
  %336 = load i8*, i8** %3, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 1
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = call i32 @isdigit(i32 %339) #5
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %335
  %343 = load i64, i64* %4, align 8
  %344 = icmp ugt i64 %343, 0
  br label %345

345:                                              ; preds = %342, %335
  %346 = phi i1 [ false, %335 ], [ %344, %342 ]
  br i1 %346, label %347, label %358

347:                                              ; preds = %345
  %348 = load i32, i32* @value, align 4
  %349 = mul nsw i32 %348, 10
  %350 = load i8*, i8** %3, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %3, align 8
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = sub nsw i32 %353, 48
  %355 = add nsw i32 %349, %354
  store i32 %355, i32* @value, align 4
  %356 = load i64, i64* %4, align 8
  %357 = add i64 %356, -1
  store i64 %357, i64* %4, align 8
  br label %335

358:                                              ; preds = %345
  %359 = load i32, i32* @value, align 4
  %360 = icmp sle i32 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %358
  %362 = load i32, i32* @value, align 4
  %363 = load i32, i32* @MIN_VALUE, align 4
  %364 = icmp sgt i32 %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %361, %358
  %366 = load i32, i32* @DFLT_VALUE, align 4
  store i32 %366, i32* @value, align 4
  br label %367

367:                                              ; preds = %365, %361
  br label %518

368:                                              ; preds = %19, %19
  store i32 0, i32* %9, align 4
  br label %369

369:                                              ; preds = %381, %368
  %370 = load i8*, i8** %3, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 1
  %372 = load i8, i8* %371, align 1
  %373 = sext i8 %372 to i32
  %374 = call i32 @isdigit(i32 %373) #5
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %369
  %377 = load i64, i64* %4, align 8
  %378 = icmp ugt i64 %377, 0
  br label %379

379:                                              ; preds = %376, %369
  %380 = phi i1 [ false, %369 ], [ %378, %376 ]
  br i1 %380, label %381, label %392

381:                                              ; preds = %379
  %382 = load i32, i32* %9, align 4
  %383 = mul nsw i32 %382, 10
  %384 = load i8*, i8** %3, align 8
  %385 = getelementptr inbounds i8, i8* %384, i32 1
  store i8* %385, i8** %3, align 8
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = sub nsw i32 %387, 48
  %389 = add nsw i32 %383, %388
  store i32 %389, i32* %9, align 4
  %390 = load i64, i64* %4, align 8
  %391 = add i64 %390, -1
  store i64 %391, i64* %4, align 8
  br label %369

392:                                              ; preds = %379
  %393 = load i32, i32* %9, align 4
  %394 = icmp sle i32 %393, 0
  br i1 %394, label %399, label %395

395:                                              ; preds = %392
  %396 = load i32, i32* %9, align 4
  %397 = load i32, i32* @MIN_VALUE, align 4
  %398 = icmp sgt i32 %396, %397
  br i1 %398, label %399, label %401

399:                                              ; preds = %395, %392
  %400 = load i32, i32* @value, align 4
  store i32 %400, i32* %9, align 4
  br label %401

401:                                              ; preds = %399, %395
  store i32 0, i32* %8, align 4
  br label %402

402:                                              ; preds = %413, %401
  %403 = load i8*, i8** %3, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 1
  %405 = load i8, i8* %404, align 1
  %406 = sext i8 %405 to i32
  %407 = icmp eq i32 %406, 46
  br i1 %407, label %408, label %416

408:                                              ; preds = %402
  %409 = load i64, i64* %4, align 8
  %410 = add i64 %409, -1
  store i64 %410, i64* %4, align 8
  %411 = load i32, i32* %8, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %8, align 4
  br label %413

413:                                              ; preds = %408
  %414 = load i8*, i8** %3, align 8
  %415 = getelementptr inbounds i8, i8* %414, i32 1
  store i8* %415, i8** %3, align 8
  br label %402

416:                                              ; preds = %402
  %417 = load i32, i32* %9, align 4
  %418 = load i32, i32* %8, align 4
  %419 = call i32 @playtone(i32 -1, i32 %417, i32 %418)
  br label %518

420:                                              ; preds = %19
  store i32 0, i32* %10, align 4
  br label %421

421:                                              ; preds = %433, %420
  %422 = load i8*, i8** %3, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 1
  %424 = load i8, i8* %423, align 1
  %425 = sext i8 %424 to i32
  %426 = call i32 @isdigit(i32 %425) #5
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %421
  %429 = load i64, i64* %4, align 8
  %430 = icmp ugt i64 %429, 0
  br label %431

431:                                              ; preds = %428, %421
  %432 = phi i1 [ false, %421 ], [ %430, %428 ]
  br i1 %432, label %433, label %444

433:                                              ; preds = %431
  %434 = load i32, i32* %10, align 4
  %435 = mul nsw i32 %434, 10
  %436 = load i8*, i8** %3, align 8
  %437 = getelementptr inbounds i8, i8* %436, i32 1
  store i8* %437, i8** %3, align 8
  %438 = load i8, i8* %437, align 1
  %439 = sext i8 %438 to i32
  %440 = sub nsw i32 %439, 48
  %441 = add nsw i32 %435, %440
  store i32 %441, i32* %10, align 4
  %442 = load i64, i64* %4, align 8
  %443 = add i64 %442, -1
  store i64 %443, i64* %4, align 8
  br label %421

444:                                              ; preds = %431
  %445 = load i32, i32* %10, align 4
  %446 = load i32, i32* @MIN_TEMPO, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %452, label %448

448:                                              ; preds = %444
  %449 = load i32, i32* %10, align 4
  %450 = load i32, i32* @MAX_TEMPO, align 4
  %451 = icmp sgt i32 %449, %450
  br i1 %451, label %452, label %454

452:                                              ; preds = %448, %444
  %453 = load i32, i32* @DFLT_TEMPO, align 4
  store i32 %453, i32* %10, align 4
  br label %454

454:                                              ; preds = %452, %448
  %455 = load i32, i32* @SECS_PER_MIN, align 4
  %456 = mul nsw i32 100, %455
  %457 = load i32, i32* @WHOLE_NOTE, align 4
  %458 = mul nsw i32 %456, %457
  %459 = load i32, i32* %10, align 4
  %460 = sdiv i32 %458, %459
  store i32 %460, i32* @whole, align 4
  br label %518

461:                                              ; preds = %19
  %462 = load i8*, i8** %3, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 1
  %464 = load i8, i8* %463, align 1
  %465 = sext i8 %464 to i32
  %466 = icmp eq i32 %465, 78
  br i1 %466, label %473, label %467

467:                                              ; preds = %461
  %468 = load i8*, i8** %3, align 8
  %469 = getelementptr inbounds i8, i8* %468, i64 1
  %470 = load i8, i8* %469, align 1
  %471 = sext i8 %470 to i32
  %472 = icmp eq i32 %471, 110
  br i1 %472, label %473, label %479

473:                                              ; preds = %467, %461
  %474 = load i32, i32* @NORMAL, align 4
  store i32 %474, i32* @fill, align 4
  %475 = load i8*, i8** %3, align 8
  %476 = getelementptr inbounds i8, i8* %475, i32 1
  store i8* %476, i8** %3, align 8
  %477 = load i64, i64* %4, align 8
  %478 = add i64 %477, -1
  store i64 %478, i64* %4, align 8
  br label %517

479:                                              ; preds = %467
  %480 = load i8*, i8** %3, align 8
  %481 = getelementptr inbounds i8, i8* %480, i64 1
  %482 = load i8, i8* %481, align 1
  %483 = sext i8 %482 to i32
  %484 = icmp eq i32 %483, 76
  br i1 %484, label %491, label %485

485:                                              ; preds = %479
  %486 = load i8*, i8** %3, align 8
  %487 = getelementptr inbounds i8, i8* %486, i64 1
  %488 = load i8, i8* %487, align 1
  %489 = sext i8 %488 to i32
  %490 = icmp eq i32 %489, 108
  br i1 %490, label %491, label %497

491:                                              ; preds = %485, %479
  %492 = load i32, i32* @LEGATO, align 4
  store i32 %492, i32* @fill, align 4
  %493 = load i8*, i8** %3, align 8
  %494 = getelementptr inbounds i8, i8* %493, i32 1
  store i8* %494, i8** %3, align 8
  %495 = load i64, i64* %4, align 8
  %496 = add i64 %495, -1
  store i64 %496, i64* %4, align 8
  br label %516

497:                                              ; preds = %485
  %498 = load i8*, i8** %3, align 8
  %499 = getelementptr inbounds i8, i8* %498, i64 1
  %500 = load i8, i8* %499, align 1
  %501 = sext i8 %500 to i32
  %502 = icmp eq i32 %501, 83
  br i1 %502, label %509, label %503

503:                                              ; preds = %497
  %504 = load i8*, i8** %3, align 8
  %505 = getelementptr inbounds i8, i8* %504, i64 1
  %506 = load i8, i8* %505, align 1
  %507 = sext i8 %506 to i32
  %508 = icmp eq i32 %507, 115
  br i1 %508, label %509, label %515

509:                                              ; preds = %503, %497
  %510 = load i32, i32* @STACCATO, align 4
  store i32 %510, i32* @fill, align 4
  %511 = load i8*, i8** %3, align 8
  %512 = getelementptr inbounds i8, i8* %511, i32 1
  store i8* %512, i8** %3, align 8
  %513 = load i64, i64* %4, align 8
  %514 = add i64 %513, -1
  store i64 %514, i64* %4, align 8
  br label %515

515:                                              ; preds = %509, %503
  br label %516

516:                                              ; preds = %515, %491
  br label %517

517:                                              ; preds = %516, %473
  br label %518

518:                                              ; preds = %19, %517, %454, %416, %367, %327, %273, %265, %253, %175
  br label %519

519:                                              ; preds = %518
  %520 = load i8*, i8** %3, align 8
  %521 = getelementptr inbounds i8, i8* %520, i32 1
  store i8* %521, i8** %3, align 8
  br label %15

522:                                              ; preds = %15
  ret void
}

declare dso_local signext i8 @toupper(i8 signext) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #3

declare dso_local i32 @playtone(i32, i32, i32) #1

declare dso_local i32 @nitems(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
