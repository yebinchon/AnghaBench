; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_match_fragment.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_match_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i64, i64 }
%struct.image = type { i32, i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.strbuf = type { i64, i8* }

@correct_ws_error = common dso_local global i64 0, align 8
@WS_BLANK_AT_EOF = common dso_local global i32 0, align 4
@LINE_PATCHED = common dso_local global i32 0, align 4
@ignore_ws_change = common dso_local global i64 0, align 8
@LINE_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.image*, %struct.image*, %struct.image*, i64, i32, i32, i32, i32)* @match_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_fragment(%struct.apply_state* %0, %struct.image* %1, %struct.image* %2, %struct.image* %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.apply_state*, align 8
  %12 = alloca %struct.image*, align 8
  %13 = alloca %struct.image*, align 8
  %14 = alloca %struct.image*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.strbuf, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.strbuf, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %11, align 8
  store %struct.image* %1, %struct.image** %12, align 8
  store %struct.image* %2, %struct.image** %13, align 8
  store %struct.image* %3, %struct.image** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %38 = load %struct.image*, %struct.image** %13, align 8
  %39 = getelementptr inbounds %struct.image, %struct.image* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.image*, %struct.image** %12, align 8
  %44 = getelementptr inbounds %struct.image, %struct.image* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %9
  %48 = load %struct.image*, %struct.image** %13, align 8
  %49 = getelementptr inbounds %struct.image, %struct.image* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %28, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.image*, %struct.image** %13, align 8
  %55 = getelementptr inbounds %struct.image, %struct.image* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.image*, %struct.image** %12, align 8
  %60 = getelementptr inbounds %struct.image, %struct.image* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %451

64:                                               ; preds = %53, %47
  br label %84

65:                                               ; preds = %9
  %66 = load %struct.apply_state*, %struct.apply_state** %11, align 8
  %67 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @correct_ws_error, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @WS_BLANK_AT_EOF, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.image*, %struct.image** %12, align 8
  %78 = getelementptr inbounds %struct.image, %struct.image* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %28, align 4
  br label %83

82:                                               ; preds = %71, %65
  store i32 0, i32* %10, align 4
  br label %451

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %64
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %10, align 4
  br label %451

91:                                               ; preds = %87, %84
  store i32 0, i32* %20, align 4
  br label %92

92:                                               ; preds = %132, %91
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %28, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %135

96:                                               ; preds = %92
  %97 = load %struct.image*, %struct.image** %12, align 8
  %98 = getelementptr inbounds %struct.image, %struct.image* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @LINE_PATCHED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %96
  %111 = load %struct.image*, %struct.image** %13, align 8
  %112 = getelementptr inbounds %struct.image, %struct.image* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.image*, %struct.image** %12, align 8
  %120 = getelementptr inbounds %struct.image, %struct.image* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %118, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %110, %96
  store i32 0, i32* %10, align 4
  br label %451

131:                                              ; preds = %110
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %20, align 4
  br label %92

135:                                              ; preds = %92
  %136 = load i32, i32* %28, align 4
  %137 = load %struct.image*, %struct.image** %13, align 8
  %138 = getelementptr inbounds %struct.image, %struct.image* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %141, label %180

141:                                              ; preds = %135
  %142 = load i32, i32* %19, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load i64, i64* %15, align 8
  %146 = load %struct.image*, %struct.image** %13, align 8
  %147 = getelementptr inbounds %struct.image, %struct.image* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %145, %148
  %150 = load %struct.image*, %struct.image** %12, align 8
  %151 = getelementptr inbounds %struct.image, %struct.image* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %149, %152
  br i1 %153, label %164, label %179

154:                                              ; preds = %141
  %155 = load i64, i64* %15, align 8
  %156 = load %struct.image*, %struct.image** %13, align 8
  %157 = getelementptr inbounds %struct.image, %struct.image* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %155, %158
  %160 = load %struct.image*, %struct.image** %12, align 8
  %161 = getelementptr inbounds %struct.image, %struct.image* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ule i64 %159, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %154, %144
  %165 = load %struct.image*, %struct.image** %12, align 8
  %166 = getelementptr inbounds %struct.image, %struct.image* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load i64, i64* %15, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = load %struct.image*, %struct.image** %13, align 8
  %171 = getelementptr inbounds %struct.image, %struct.image* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.image*, %struct.image** %13, align 8
  %174 = getelementptr inbounds %struct.image, %struct.image* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @memcmp(i8* %169, i8* %172, i64 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %164
  store i32 1, i32* %10, align 4
  br label %451

179:                                              ; preds = %164, %154, %144
  br label %224

180:                                              ; preds = %135
  %181 = load %struct.image*, %struct.image** %13, align 8
  %182 = getelementptr inbounds %struct.image, %struct.image* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** %22, align 8
  %184 = load i8*, i8** %22, align 8
  store i8* %184, i8** %29, align 8
  store i32 0, i32* %20, align 4
  br label %185

185:                                              ; preds = %200, %180
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %28, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load %struct.image*, %struct.image** %13, align 8
  %191 = getelementptr inbounds %struct.image, %struct.image* %190, i32 0, i32 3
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i8*, i8** %29, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 %197
  store i8* %199, i8** %29, align 8
  br label %200

200:                                              ; preds = %189
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %20, align 4
  br label %185

203:                                              ; preds = %185
  br label %204

204:                                              ; preds = %215, %203
  %205 = load i8*, i8** %22, align 8
  %206 = load i8*, i8** %29, align 8
  %207 = icmp ult i8* %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  %209 = load i8*, i8** %22, align 8
  %210 = load i8, i8* %209, align 1
  %211 = call i32 @isspace(i8 signext %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  br label %218

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214
  %216 = load i8*, i8** %22, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %22, align 8
  br label %204

218:                                              ; preds = %213, %204
  %219 = load i8*, i8** %22, align 8
  %220 = load i8*, i8** %29, align 8
  %221 = icmp eq i8* %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  store i32 0, i32* %10, align 4
  br label %451

223:                                              ; preds = %218
  br label %224

224:                                              ; preds = %223, %179
  %225 = load %struct.apply_state*, %struct.apply_state** %11, align 8
  %226 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @ignore_ws_change, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %224
  %231 = load %struct.image*, %struct.image** %12, align 8
  %232 = load %struct.image*, %struct.image** %13, align 8
  %233 = load %struct.image*, %struct.image** %14, align 8
  %234 = load i64, i64* %15, align 8
  %235 = load i32, i32* %16, align 4
  %236 = load i32, i32* %28, align 4
  %237 = call i32 @line_by_line_fuzzy_match(%struct.image* %231, %struct.image* %232, %struct.image* %233, i64 %234, i32 %235, i32 %236)
  store i32 %237, i32* %10, align 4
  br label %451

238:                                              ; preds = %224
  %239 = load %struct.apply_state*, %struct.apply_state** %11, align 8
  %240 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @correct_ws_error, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  store i32 0, i32* %10, align 4
  br label %451

245:                                              ; preds = %238
  store i64 0, i64* %27, align 8
  store i32 0, i32* %20, align 4
  br label %246

246:                                              ; preds = %276, %245
  %247 = load i32, i32* %20, align 4
  %248 = load %struct.image*, %struct.image** %14, align 8
  %249 = getelementptr inbounds %struct.image, %struct.image* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %279

252:                                              ; preds = %246
  %253 = load %struct.image*, %struct.image** %14, align 8
  %254 = getelementptr inbounds %struct.image, %struct.image* %253, i32 0, i32 3
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = load i32, i32* %20, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @LINE_COMMON, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %275, label %264

264:                                              ; preds = %252
  %265 = load %struct.image*, %struct.image** %14, align 8
  %266 = getelementptr inbounds %struct.image, %struct.image* %265, i32 0, i32 3
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %266, align 8
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %27, align 8
  %274 = add i64 %273, %272
  store i64 %274, i64* %27, align 8
  br label %275

275:                                              ; preds = %264, %252
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %20, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %20, align 4
  br label %246

279:                                              ; preds = %246
  %280 = load %struct.image*, %struct.image** %13, align 8
  %281 = getelementptr inbounds %struct.image, %struct.image* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = add nsw i64 %282, 1
  %284 = call i32 @strbuf_init(%struct.strbuf* %25, i64 %283)
  %285 = load %struct.image*, %struct.image** %13, align 8
  %286 = getelementptr inbounds %struct.image, %struct.image* %285, i32 0, i32 2
  %287 = load i8*, i8** %286, align 8
  store i8* %287, i8** %23, align 8
  %288 = load %struct.image*, %struct.image** %12, align 8
  %289 = getelementptr inbounds %struct.image, %struct.image* %288, i32 0, i32 2
  %290 = load i8*, i8** %289, align 8
  %291 = load i64, i64* %15, align 8
  %292 = getelementptr inbounds i8, i8* %290, i64 %291
  store i8* %292, i8** %24, align 8
  store i32 0, i32* %20, align 4
  br label %293

293:                                              ; preds = %380, %279
  %294 = load i32, i32* %20, align 4
  %295 = load i32, i32* %28, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %383

297:                                              ; preds = %293
  %298 = load %struct.image*, %struct.image** %13, align 8
  %299 = getelementptr inbounds %struct.image, %struct.image* %298, i32 0, i32 3
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %299, align 8
  %301 = load i32, i32* %20, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %30, align 8
  %306 = load %struct.image*, %struct.image** %12, align 8
  %307 = getelementptr inbounds %struct.image, %struct.image* %306, i32 0, i32 3
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = load i32, i32* %16, align 4
  %310 = load i32, i32* %20, align 4
  %311 = add nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  store i64 %315, i64* %31, align 8
  %316 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %32, align 8
  %318 = load i8*, i8** %23, align 8
  %319 = load i64, i64* %30, align 8
  %320 = load i32, i32* %17, align 4
  %321 = call i32 @ws_fix_copy(%struct.strbuf* %25, i8* %318, i64 %319, i32 %320, i32* null)
  %322 = load i64, i64* %31, align 8
  %323 = call i32 @strbuf_init(%struct.strbuf* %33, i64 %322)
  %324 = load i8*, i8** %24, align 8
  %325 = load i64, i64* %31, align 8
  %326 = load i32, i32* %17, align 4
  %327 = call i32 @ws_fix_copy(%struct.strbuf* %33, i8* %324, i64 %325, i32 %326, i32* null)
  %328 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* %32, align 8
  %333 = sub i64 %331, %332
  %334 = icmp eq i64 %329, %333
  br i1 %334, label %335, label %349

335:                                              ; preds = %297
  %336 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 1
  %337 = load i8*, i8** %336, align 8
  %338 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 1
  %339 = load i8*, i8** %338, align 8
  %340 = load i64, i64* %32, align 8
  %341 = getelementptr inbounds i8, i8* %339, i64 %340
  %342 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* %32, align 8
  %345 = sub i64 %343, %344
  %346 = call i32 @memcmp(i8* %337, i8* %341, i64 %345)
  %347 = icmp ne i32 %346, 0
  %348 = xor i1 %347, true
  br label %349

349:                                              ; preds = %335, %297
  %350 = phi i1 [ false, %297 ], [ %348, %335 ]
  %351 = zext i1 %350 to i32
  store i32 %351, i32* %34, align 4
  %352 = load %struct.image*, %struct.image** %13, align 8
  %353 = getelementptr inbounds %struct.image, %struct.image* %352, i32 0, i32 3
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** %353, align 8
  %355 = load i32, i32* %20, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @LINE_COMMON, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %349
  %364 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* %27, align 8
  %367 = add i64 %366, %365
  store i64 %367, i64* %27, align 8
  br label %368

368:                                              ; preds = %363, %349
  %369 = call i32 @strbuf_release(%struct.strbuf* %33)
  %370 = load i32, i32* %34, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %368
  br label %449

373:                                              ; preds = %368
  %374 = load i64, i64* %30, align 8
  %375 = load i8*, i8** %23, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 %374
  store i8* %376, i8** %23, align 8
  %377 = load i64, i64* %31, align 8
  %378 = load i8*, i8** %24, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 %377
  store i8* %379, i8** %24, align 8
  br label %380

380:                                              ; preds = %373
  %381 = load i32, i32* %20, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %20, align 4
  br label %293

383:                                              ; preds = %293
  br label %384

384:                                              ; preds = %431, %383
  %385 = load i32, i32* %20, align 4
  %386 = load %struct.image*, %struct.image** %13, align 8
  %387 = getelementptr inbounds %struct.image, %struct.image* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = icmp slt i32 %385, %388
  br i1 %389, label %390, label %434

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %35, align 8
  %393 = load %struct.image*, %struct.image** %13, align 8
  %394 = getelementptr inbounds %struct.image, %struct.image* %393, i32 0, i32 3
  %395 = load %struct.TYPE_2__*, %struct.TYPE_2__** %394, align 8
  %396 = load i32, i32* %20, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 2
  %400 = load i64, i64* %399, align 8
  store i64 %400, i64* %36, align 8
  %401 = load i8*, i8** %23, align 8
  %402 = load i64, i64* %36, align 8
  %403 = load i32, i32* %17, align 4
  %404 = call i32 @ws_fix_copy(%struct.strbuf* %25, i8* %401, i64 %402, i32 %403, i32* null)
  %405 = load i64, i64* %35, align 8
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %37, align 4
  br label %407

407:                                              ; preds = %424, %390
  %408 = load i32, i32* %37, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = icmp ult i64 %409, %411
  br i1 %412, label %413, label %427

413:                                              ; preds = %407
  %414 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 1
  %415 = load i8*, i8** %414, align 8
  %416 = load i32, i32* %37, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8, i8* %415, i64 %417
  %419 = load i8, i8* %418, align 1
  %420 = call i32 @isspace(i8 signext %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %413
  br label %449

423:                                              ; preds = %413
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* %37, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %37, align 4
  br label %407

427:                                              ; preds = %407
  %428 = load i64, i64* %36, align 8
  %429 = load i8*, i8** %23, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 %428
  store i8* %430, i8** %23, align 8
  br label %431

431:                                              ; preds = %427
  %432 = load i32, i32* %20, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %20, align 4
  br label %384

434:                                              ; preds = %384
  %435 = call i8* @strbuf_detach(%struct.strbuf* %25, i64* %26)
  store i8* %435, i8** %21, align 8
  %436 = load i64, i64* %27, align 8
  %437 = load %struct.image*, %struct.image** %14, align 8
  %438 = getelementptr inbounds %struct.image, %struct.image* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = icmp ult i64 %436, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %434
  store i64 0, i64* %27, align 8
  br label %442

442:                                              ; preds = %441, %434
  %443 = load %struct.image*, %struct.image** %13, align 8
  %444 = load %struct.image*, %struct.image** %14, align 8
  %445 = load i8*, i8** %21, align 8
  %446 = load i64, i64* %26, align 8
  %447 = load i64, i64* %27, align 8
  %448 = call i32 @update_pre_post_images(%struct.image* %443, %struct.image* %444, i8* %445, i64 %446, i64 %447)
  store i32 1, i32* %10, align 4
  br label %451

449:                                              ; preds = %422, %372
  %450 = call i32 @strbuf_release(%struct.strbuf* %25)
  store i32 0, i32* %10, align 4
  br label %451

451:                                              ; preds = %449, %442, %244, %230, %222, %178, %130, %90, %82, %63
  %452 = load i32, i32* %10, align 4
  ret i32 %452
}

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @line_by_line_fuzzy_match(%struct.image*, %struct.image*, %struct.image*, i64, i32, i32) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i64) #1

declare dso_local i32 @ws_fix_copy(%struct.strbuf*, i8*, i64, i32, i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i64*) #1

declare dso_local i32 @update_pre_post_images(%struct.image*, %struct.image*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
