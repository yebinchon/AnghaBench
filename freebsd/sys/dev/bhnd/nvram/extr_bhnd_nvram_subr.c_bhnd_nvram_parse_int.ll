; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_subr.c_bhnd_nvram_parse_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_subr.c_bhnd_nvram_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@UINT8_MAX = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@INT8_MIN = common dso_local global i64 0, align 8
@INT8_MAX = common dso_local global i64 0, align 8
@INT16_MIN = common dso_local global i64 0, align 8
@INT16_MAX = common dso_local global i64 0, align 8
@INT32_MIN = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i64 0, align 8
@INT64_MIN = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"unsupported integer type: %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"unhandled type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_parse_int(i8* %0, i64 %1, i32 %2, i64* %3, i8* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64* %3, i64** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @bhnd_nvram_is_int_type(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %8, align 4
  br label %465

33:                                               ; preds = %7
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64*, i64** %14, align 8
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %20, align 8
  br label %40

39:                                               ; preds = %33
  store i64 0, i64* %20, align 8
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i64*, i64** %12, align 8
  %42 = icmp eq i64* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i64* %21, i64** %12, align 8
  br label %44

44:                                               ; preds = %43, %40
  store i8 0, i8* %16, align 1
  store i64 0, i64* %22, align 8
  %45 = load i64*, i64** %12, align 8
  store i64 0, i64* %45, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = icmp sle i32 %52, 36
  br i1 %53, label %56, label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %8, align 4
  br label %465

56:                                               ; preds = %51, %44
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i64*, i64** %12, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @bhnd_nv_isspace(i8 signext %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %76

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71
  %73 = load i64*, i64** %12, align 8
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %57

76:                                               ; preds = %70, %57
  %77 = load i64*, i64** %12, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @EFTYPE, align 4
  store i32 %82, i32* %8, align 4
  br label %465

83:                                               ; preds = %76
  %84 = load i8*, i8** %9, align 8
  %85 = load i64*, i64** %12, align 8
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 45
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  store i32 1, i32* %23, align 4
  store i32 1, i32* %24, align 4
  %92 = load i64*, i64** %12, align 8
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  br label %108

95:                                               ; preds = %83
  %96 = load i8*, i8** %9, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 43
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  store i32 1, i32* %24, align 4
  %104 = load i64*, i64** %12, align 8
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %103, %95
  br label %108

108:                                              ; preds = %107, %91
  %109 = load i64*, i64** %12, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @EFTYPE, align 4
  store i32 %114, i32* %8, align 4
  br label %465

115:                                              ; preds = %108
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 16
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %158

121:                                              ; preds = %118, %115
  %122 = load i64, i64* %10, align 8
  %123 = load i64*, i64** %12, align 8
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %122, %124
  %126 = icmp uge i64 %125, 2
  br i1 %126, label %127, label %157

127:                                              ; preds = %121
  %128 = load i8*, i8** %9, align 8
  %129 = load i64*, i64** %12, align 8
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 48
  br i1 %134, label %135, label %157

135:                                              ; preds = %127
  %136 = load i8*, i8** %9, align 8
  %137 = load i64*, i64** %12, align 8
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 120
  br i1 %143, label %153, label %144

144:                                              ; preds = %135
  %145 = load i8*, i8** %9, align 8
  %146 = load i64*, i64** %12, align 8
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 88
  br i1 %152, label %153, label %157

153:                                              ; preds = %144, %135
  store i32 16, i32* %11, align 4
  %154 = load i64*, i64** %12, align 8
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 2
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %153, %144, %127, %121
  br label %158

158:                                              ; preds = %157, %118
  %159 = load i64*, i64** %12, align 8
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %10, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* @EFTYPE, align 4
  store i32 %164, i32* %8, align 4
  br label %465

165:                                              ; preds = %158
  %166 = load i32, i32* %11, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = load i8*, i8** %9, align 8
  %170 = load i64*, i64** %12, align 8
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 48
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 8, i32* %11, align 4
  br label %178

177:                                              ; preds = %168
  store i32 10, i32* %11, align 4
  br label %178

178:                                              ; preds = %177, %176
  br label %179

179:                                              ; preds = %178, %165
  %180 = load i32, i32* %24, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %11, align 4
  %184 = icmp eq i32 %183, 16
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 1, i32* %25, align 4
  br label %187

186:                                              ; preds = %182, %179
  store i32 0, i32* %25, align 4
  br label %187

187:                                              ; preds = %186, %185
  %188 = load i32, i32* %15, align 4
  switch i32 %188, label %281 [
    i32 136, label %189
    i32 128, label %189
    i32 131, label %192
    i32 130, label %195
    i32 129, label %198
    i32 132, label %201
    i32 135, label %221
    i32 134, label %241
    i32 133, label %261
  ]

189:                                              ; preds = %187, %187
  %190 = load i64, i64* @UINT8_MAX, align 8
  %191 = trunc i64 %190 to i8
  store i8 %191, i8* %19, align 1
  br label %285

192:                                              ; preds = %187
  %193 = load i64, i64* @UINT16_MAX, align 8
  %194 = trunc i64 %193 to i8
  store i8 %194, i8* %19, align 1
  br label %285

195:                                              ; preds = %187
  %196 = load i64, i64* @UINT32_MAX, align 8
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %19, align 1
  br label %285

198:                                              ; preds = %187
  %199 = load i64, i64* @UINT64_MAX, align 8
  %200 = trunc i64 %199 to i8
  store i8 %200, i8* %19, align 1
  br label %285

201:                                              ; preds = %187
  %202 = load i32, i32* %25, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i64, i64* @UINT8_MAX, align 8
  %206 = trunc i64 %205 to i8
  store i8 %206, i8* %19, align 1
  br label %220

207:                                              ; preds = %201
  %208 = load i32, i32* %23, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i64, i64* @INT8_MIN, align 8
  %212 = trunc i64 %211 to i8
  %213 = sext i8 %212 to i32
  %214 = sub nsw i32 0, %213
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %19, align 1
  br label %219

216:                                              ; preds = %207
  %217 = load i64, i64* @INT8_MAX, align 8
  %218 = trunc i64 %217 to i8
  store i8 %218, i8* %19, align 1
  br label %219

219:                                              ; preds = %216, %210
  br label %220

220:                                              ; preds = %219, %204
  br label %285

221:                                              ; preds = %187
  %222 = load i32, i32* %25, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i64, i64* @UINT16_MAX, align 8
  %226 = trunc i64 %225 to i8
  store i8 %226, i8* %19, align 1
  br label %240

227:                                              ; preds = %221
  %228 = load i32, i32* %23, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load i64, i64* @INT16_MIN, align 8
  %232 = trunc i64 %231 to i8
  %233 = sext i8 %232 to i32
  %234 = sub nsw i32 0, %233
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %19, align 1
  br label %239

236:                                              ; preds = %227
  %237 = load i64, i64* @INT16_MAX, align 8
  %238 = trunc i64 %237 to i8
  store i8 %238, i8* %19, align 1
  br label %239

239:                                              ; preds = %236, %230
  br label %240

240:                                              ; preds = %239, %224
  br label %285

241:                                              ; preds = %187
  %242 = load i32, i32* %25, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i64, i64* @UINT32_MAX, align 8
  %246 = trunc i64 %245 to i8
  store i8 %246, i8* %19, align 1
  br label %260

247:                                              ; preds = %241
  %248 = load i32, i32* %23, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i64, i64* @INT32_MIN, align 8
  %252 = trunc i64 %251 to i8
  %253 = sext i8 %252 to i32
  %254 = sub nsw i32 0, %253
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %19, align 1
  br label %259

256:                                              ; preds = %247
  %257 = load i64, i64* @INT32_MAX, align 8
  %258 = trunc i64 %257 to i8
  store i8 %258, i8* %19, align 1
  br label %259

259:                                              ; preds = %256, %250
  br label %260

260:                                              ; preds = %259, %244
  br label %285

261:                                              ; preds = %187
  %262 = load i32, i32* %25, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i64, i64* @UINT64_MAX, align 8
  %266 = trunc i64 %265 to i8
  store i8 %266, i8* %19, align 1
  br label %280

267:                                              ; preds = %261
  %268 = load i32, i32* %23, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %267
  %271 = load i64, i64* @INT64_MIN, align 8
  %272 = trunc i64 %271 to i8
  %273 = sext i8 %272 to i32
  %274 = sub nsw i32 0, %273
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %19, align 1
  br label %279

276:                                              ; preds = %267
  %277 = load i64, i64* @INT64_MAX, align 8
  %278 = trunc i64 %277 to i8
  store i8 %278, i8* %19, align 1
  br label %279

279:                                              ; preds = %276, %270
  br label %280

280:                                              ; preds = %279, %264
  br label %285

281:                                              ; preds = %187
  %282 = load i32, i32* %15, align 4
  %283 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %282)
  %284 = load i32, i32* @EINVAL, align 4
  store i32 %284, i32* %8, align 4
  br label %465

285:                                              ; preds = %280, %260, %240, %220, %198, %195, %192, %189
  %286 = load i8, i8* %19, align 1
  %287 = sext i8 %286 to i32
  %288 = load i32, i32* %11, align 4
  %289 = trunc i32 %288 to i8
  %290 = sext i8 %289 to i32
  %291 = sdiv i32 %287, %290
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %18, align 1
  %293 = load i8, i8* %19, align 1
  %294 = sext i8 %293 to i32
  %295 = load i32, i32* %11, align 4
  %296 = trunc i32 %295 to i8
  %297 = sext i8 %296 to i32
  %298 = srem i32 %294, %297
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %17, align 1
  br label %300

300:                                              ; preds = %389, %285
  %301 = load i64*, i64** %12, align 8
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* %10, align 8
  %304 = icmp ult i64 %302, %303
  br i1 %304, label %305, label %393

305:                                              ; preds = %300
  %306 = load i8*, i8** %9, align 8
  %307 = load i64*, i64** %12, align 8
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8, i8* %309, align 1
  store i8 %310, i8* %27, align 1
  %311 = load i8, i8* %27, align 1
  %312 = call i64 @bhnd_nv_isdigit(i8 signext %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %305
  %315 = load i8, i8* %27, align 1
  %316 = sext i8 %315 to i32
  %317 = sub nsw i32 %316, 48
  %318 = trunc i32 %317 to i8
  store i8 %318, i8* %26, align 1
  br label %342

319:                                              ; preds = %305
  %320 = load i8, i8* %27, align 1
  %321 = call i64 @bhnd_nv_isxdigit(i8 signext %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %340

323:                                              ; preds = %319
  %324 = load i8, i8* %27, align 1
  %325 = call i64 @bhnd_nv_isupper(i8 signext %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %323
  %328 = load i8, i8* %27, align 1
  %329 = sext i8 %328 to i32
  %330 = sub nsw i32 %329, 65
  %331 = add nsw i32 %330, 10
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %26, align 1
  br label %339

333:                                              ; preds = %323
  %334 = load i8, i8* %27, align 1
  %335 = sext i8 %334 to i32
  %336 = sub nsw i32 %335, 97
  %337 = add nsw i32 %336, 10
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %26, align 1
  br label %339

339:                                              ; preds = %333, %327
  br label %341

340:                                              ; preds = %319
  br label %393

341:                                              ; preds = %339
  br label %342

342:                                              ; preds = %341, %314
  %343 = load i8, i8* %26, align 1
  %344 = sext i8 %343 to i32
  %345 = load i32, i32* %11, align 4
  %346 = trunc i32 %345 to i8
  %347 = sext i8 %346 to i32
  %348 = icmp sge i32 %344, %347
  br i1 %348, label %349, label %350

349:                                              ; preds = %342
  br label %393

350:                                              ; preds = %342
  %351 = load i64, i64* %22, align 8
  %352 = add i64 %351, 1
  store i64 %352, i64* %22, align 8
  %353 = load i8, i8* %16, align 1
  %354 = sext i8 %353 to i32
  %355 = load i8, i8* %18, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp sgt i32 %354, %356
  br i1 %357, label %358, label %360

358:                                              ; preds = %350
  %359 = load i32, i32* @ERANGE, align 4
  store i32 %359, i32* %8, align 4
  br label %465

360:                                              ; preds = %350
  %361 = load i8, i8* %16, align 1
  %362 = sext i8 %361 to i32
  %363 = load i8, i8* %18, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %362, %364
  br i1 %365, label %366, label %374

366:                                              ; preds = %360
  %367 = load i8, i8* %26, align 1
  %368 = sext i8 %367 to i32
  %369 = load i8, i8* %17, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp sgt i32 %368, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %366
  %373 = load i32, i32* @ERANGE, align 4
  store i32 %373, i32* %8, align 4
  br label %465

374:                                              ; preds = %366, %360
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %11, align 4
  %377 = trunc i32 %376 to i8
  %378 = sext i8 %377 to i32
  %379 = load i8, i8* %16, align 1
  %380 = sext i8 %379 to i32
  %381 = mul nsw i32 %380, %378
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %16, align 1
  %383 = load i8, i8* %26, align 1
  %384 = sext i8 %383 to i32
  %385 = load i8, i8* %16, align 1
  %386 = sext i8 %385 to i32
  %387 = add nsw i32 %386, %384
  %388 = trunc i32 %387 to i8
  store i8 %388, i8* %16, align 1
  br label %389

389:                                              ; preds = %375
  %390 = load i64*, i64** %12, align 8
  %391 = load i64, i64* %390, align 8
  %392 = add i64 %391, 1
  store i64 %392, i64* %390, align 8
  br label %300

393:                                              ; preds = %349, %340, %300
  %394 = load i64, i64* %22, align 8
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %393
  %397 = load i32, i32* @EFTYPE, align 4
  store i32 %397, i32* %8, align 4
  br label %465

398:                                              ; preds = %393
  %399 = load i32, i32* %23, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %398
  %402 = load i8, i8* %16, align 1
  %403 = sext i8 %402 to i32
  %404 = sub nsw i32 0, %403
  %405 = trunc i32 %404 to i8
  store i8 %405, i8* %16, align 1
  br label %406

406:                                              ; preds = %401, %398
  %407 = load i32, i32* %15, align 4
  %408 = call i64 @bhnd_nvram_type_width(i32 %407)
  %409 = load i64*, i64** %14, align 8
  store i64 %408, i64* %409, align 8
  %410 = load i8*, i8** %13, align 8
  %411 = icmp eq i8* %410, null
  br i1 %411, label %412, label %413

412:                                              ; preds = %406
  store i32 0, i32* %8, align 4
  br label %465

413:                                              ; preds = %406
  %414 = load i64, i64* %20, align 8
  %415 = load i64*, i64** %14, align 8
  %416 = load i64, i64* %415, align 8
  %417 = icmp ult i64 %414, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %413
  %419 = load i32, i32* @ENOMEM, align 4
  store i32 %419, i32* %8, align 4
  br label %465

420:                                              ; preds = %413
  br label %421

421:                                              ; preds = %420
  %422 = load i32, i32* %15, align 4
  switch i32 %422, label %461 [
    i32 136, label %423
    i32 128, label %423
    i32 131, label %428
    i32 130, label %433
    i32 129, label %438
    i32 132, label %441
    i32 135, label %446
    i32 134, label %451
    i32 133, label %456
  ]

423:                                              ; preds = %421, %421
  %424 = load i8, i8* %16, align 1
  %425 = sext i8 %424 to i32
  %426 = load i8*, i8** %13, align 8
  %427 = bitcast i8* %426 to i32*
  store i32 %425, i32* %427, align 4
  br label %464

428:                                              ; preds = %421
  %429 = load i8, i8* %16, align 1
  %430 = sext i8 %429 to i32
  %431 = load i8*, i8** %13, align 8
  %432 = bitcast i8* %431 to i32*
  store i32 %430, i32* %432, align 4
  br label %464

433:                                              ; preds = %421
  %434 = load i8, i8* %16, align 1
  %435 = sext i8 %434 to i32
  %436 = load i8*, i8** %13, align 8
  %437 = bitcast i8* %436 to i32*
  store i32 %435, i32* %437, align 4
  br label %464

438:                                              ; preds = %421
  %439 = load i8, i8* %16, align 1
  %440 = load i8*, i8** %13, align 8
  store i8 %439, i8* %440, align 1
  br label %464

441:                                              ; preds = %421
  %442 = load i8, i8* %16, align 1
  %443 = sext i8 %442 to i32
  %444 = load i8*, i8** %13, align 8
  %445 = bitcast i8* %444 to i32*
  store i32 %443, i32* %445, align 4
  br label %464

446:                                              ; preds = %421
  %447 = load i8, i8* %16, align 1
  %448 = sext i8 %447 to i32
  %449 = load i8*, i8** %13, align 8
  %450 = bitcast i8* %449 to i32*
  store i32 %448, i32* %450, align 4
  br label %464

451:                                              ; preds = %421
  %452 = load i8, i8* %16, align 1
  %453 = sext i8 %452 to i32
  %454 = load i8*, i8** %13, align 8
  %455 = bitcast i8* %454 to i32*
  store i32 %453, i32* %455, align 4
  br label %464

456:                                              ; preds = %421
  %457 = load i8, i8* %16, align 1
  %458 = sext i8 %457 to i32
  %459 = load i8*, i8** %13, align 8
  %460 = bitcast i8* %459 to i32*
  store i32 %458, i32* %460, align 4
  br label %464

461:                                              ; preds = %421
  %462 = load i32, i32* %15, align 4
  %463 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %462)
  br label %464

464:                                              ; preds = %461, %456, %451, %446, %441, %438, %433, %428, %423
  store i32 0, i32* %8, align 4
  br label %465

465:                                              ; preds = %464, %418, %412, %396, %372, %358, %281, %163, %113, %81, %54, %31
  %466 = load i32, i32* %8, align 4
  ret i32 %466
}

declare dso_local i32 @bhnd_nvram_is_int_type(i32) #1

declare dso_local i32 @bhnd_nv_isspace(i8 signext) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i32) #1

declare dso_local i64 @bhnd_nv_isdigit(i8 signext) #1

declare dso_local i64 @bhnd_nv_isxdigit(i8 signext) #1

declare dso_local i64 @bhnd_nv_isupper(i8 signext) #1

declare dso_local i64 @bhnd_nvram_type_width(i32) #1

declare dso_local i32 @BHND_NV_PANIC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
