; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_PlotSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_PlotSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plot = type { i64, i8**, i32, i32, i32, i32, i8*, i32, i64 }
%struct.dataset = type { i32, i32* }

@plot = common dso_local global %struct.plot zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataset*, i32)* @PlotSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlotSet(%struct.dataset* %0, i32 %1) #0 {
  %3 = alloca %struct.dataset*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.plot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dataset* %0, %struct.dataset** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.plot* @plot, %struct.plot** %5, align 8
  %12 = load %struct.plot*, %struct.plot** %5, align 8
  %13 = getelementptr inbounds %struct.plot, %struct.plot* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %358

17:                                               ; preds = %2
  %18 = load %struct.plot*, %struct.plot** %5, align 8
  %19 = getelementptr inbounds %struct.plot, %struct.plot* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  br label %26

25:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load %struct.plot*, %struct.plot** %5, align 8
  %28 = getelementptr inbounds %struct.plot, %struct.plot* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = icmp eq i8** %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.plot*, %struct.plot** %5, align 8
  %33 = getelementptr inbounds %struct.plot, %struct.plot* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i8** @calloc(i32 8, i32 %34)
  %36 = load %struct.plot*, %struct.plot** %5, align 8
  %37 = getelementptr inbounds %struct.plot, %struct.plot* %36, i32 0, i32 1
  store i8** %35, i8*** %37, align 8
  %38 = load %struct.plot*, %struct.plot** %5, align 8
  %39 = getelementptr inbounds %struct.plot, %struct.plot* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = icmp ne i8** %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %44

44:                                               ; preds = %31, %26
  %45 = load %struct.plot*, %struct.plot** %5, align 8
  %46 = getelementptr inbounds %struct.plot, %struct.plot* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %85

53:                                               ; preds = %44
  %54 = load %struct.plot*, %struct.plot** %5, align 8
  %55 = getelementptr inbounds %struct.plot, %struct.plot* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @malloc(i32 %56)
  %58 = load %struct.plot*, %struct.plot** %5, align 8
  %59 = getelementptr inbounds %struct.plot, %struct.plot* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %57, i8** %63, align 8
  %64 = load %struct.plot*, %struct.plot** %5, align 8
  %65 = getelementptr inbounds %struct.plot, %struct.plot* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.plot*, %struct.plot** %5, align 8
  %75 = getelementptr inbounds %struct.plot, %struct.plot* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.plot*, %struct.plot** %5, align 8
  %82 = getelementptr inbounds %struct.plot, %struct.plot* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memset(i8* %80, i32 0, i32 %83)
  br label %85

85:                                               ; preds = %53, %44
  store i32 1, i32* %8, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %123, %85
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.dataset*, %struct.dataset** %3, align 8
  %89 = getelementptr inbounds %struct.dataset, %struct.dataset* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %92, label %126

92:                                               ; preds = %86
  %93 = load %struct.dataset*, %struct.dataset** %3, align 8
  %94 = getelementptr inbounds %struct.dataset, %struct.dataset* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.plot*, %struct.plot** %5, align 8
  %101 = getelementptr inbounds %struct.plot, %struct.plot* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = load %struct.plot*, %struct.plot** %5, align 8
  %105 = getelementptr inbounds %struct.plot, %struct.plot* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = sdiv i32 %103, %106
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %92
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %117, %111
  br label %122

120:                                              ; preds = %92
  store i32 1, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %119
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %86

126:                                              ; preds = %86
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.plot*, %struct.plot** %5, align 8
  %131 = getelementptr inbounds %struct.plot, %struct.plot* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %129, %132
  br i1 %133, label %134, label %174

134:                                              ; preds = %126
  %135 = load %struct.plot*, %struct.plot** %5, align 8
  %136 = getelementptr inbounds %struct.plot, %struct.plot* %135, i32 0, i32 6
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.plot*, %struct.plot** %5, align 8
  %139 = getelementptr inbounds %struct.plot, %struct.plot* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 %140, %141
  %143 = call i8* @realloc(i8* %137, i32 %142)
  %144 = load %struct.plot*, %struct.plot** %5, align 8
  %145 = getelementptr inbounds %struct.plot, %struct.plot* %144, i32 0, i32 6
  store i8* %143, i8** %145, align 8
  %146 = load %struct.plot*, %struct.plot** %5, align 8
  %147 = getelementptr inbounds %struct.plot, %struct.plot* %146, i32 0, i32 6
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.plot*, %struct.plot** %5, align 8
  %153 = getelementptr inbounds %struct.plot, %struct.plot* %152, i32 0, i32 6
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.plot*, %struct.plot** %5, align 8
  %156 = getelementptr inbounds %struct.plot, %struct.plot* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.plot*, %struct.plot** %5, align 8
  %159 = getelementptr inbounds %struct.plot, %struct.plot* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %157, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %154, i64 %162
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.plot*, %struct.plot** %5, align 8
  %166 = getelementptr inbounds %struct.plot, %struct.plot* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %164, %167
  %169 = load %struct.plot*, %struct.plot** %5, align 8
  %170 = getelementptr inbounds %struct.plot, %struct.plot* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 %168, %171
  %173 = call i32 @memset(i8* %163, i32 0, i32 %172)
  br label %174

174:                                              ; preds = %134, %126
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.plot*, %struct.plot** %5, align 8
  %177 = getelementptr inbounds %struct.plot, %struct.plot* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %178

178:                                              ; preds = %226, %174
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.dataset*, %struct.dataset** %3, align 8
  %181 = getelementptr inbounds %struct.dataset, %struct.dataset* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ult i32 %179, %182
  br i1 %183, label %184, label %229

184:                                              ; preds = %178
  %185 = load %struct.dataset*, %struct.dataset** %3, align 8
  %186 = getelementptr inbounds %struct.dataset, %struct.dataset* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.plot*, %struct.plot** %5, align 8
  %193 = getelementptr inbounds %struct.plot, %struct.plot* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %191, %194
  %196 = load %struct.plot*, %struct.plot** %5, align 8
  %197 = getelementptr inbounds %struct.plot, %struct.plot* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = sdiv i32 %195, %198
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %184
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %208

206:                                              ; preds = %184
  store i32 1, i32* %7, align 4
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %206, %203
  %209 = load i32, i32* %4, align 4
  %210 = load %struct.plot*, %struct.plot** %5, align 8
  %211 = getelementptr inbounds %struct.plot, %struct.plot* %210, i32 0, i32 6
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.plot*, %struct.plot** %5, align 8
  %215 = getelementptr inbounds %struct.plot, %struct.plot* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %213, %216
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %212, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = or i32 %223, %209
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %221, align 1
  br label %226

226:                                              ; preds = %208
  %227 = load i32, i32* %10, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %178

229:                                              ; preds = %178
  %230 = load %struct.dataset*, %struct.dataset** %3, align 8
  %231 = call i32 @Stddev(%struct.dataset* %230)
  %232 = call i32 @isnan(i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %317, label %234

234:                                              ; preds = %229
  %235 = load %struct.dataset*, %struct.dataset** %3, align 8
  %236 = call i32 @Avg(%struct.dataset* %235)
  %237 = load %struct.dataset*, %struct.dataset** %3, align 8
  %238 = call i32 @Stddev(%struct.dataset* %237)
  %239 = sub nsw i32 %236, %238
  %240 = load %struct.plot*, %struct.plot** %5, align 8
  %241 = getelementptr inbounds %struct.plot, %struct.plot* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %239, %242
  %244 = load %struct.plot*, %struct.plot** %5, align 8
  %245 = getelementptr inbounds %struct.plot, %struct.plot* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = sdiv i32 %243, %246
  store i32 %247, i32* %9, align 4
  %248 = load %struct.dataset*, %struct.dataset** %3, align 8
  %249 = call i32 @Avg(%struct.dataset* %248)
  %250 = load %struct.dataset*, %struct.dataset** %3, align 8
  %251 = call i32 @Stddev(%struct.dataset* %250)
  %252 = add nsw i32 %249, %251
  %253 = load %struct.plot*, %struct.plot** %5, align 8
  %254 = getelementptr inbounds %struct.plot, %struct.plot* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %252, %255
  %257 = load %struct.plot*, %struct.plot** %5, align 8
  %258 = getelementptr inbounds %struct.plot, %struct.plot* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = sdiv i32 %256, %259
  store i32 %260, i32* %8, align 4
  %261 = load %struct.plot*, %struct.plot** %5, align 8
  %262 = getelementptr inbounds %struct.plot, %struct.plot* %261, i32 0, i32 1
  %263 = load i8**, i8*** %262, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  store i8 124, i8* %270, align 1
  %271 = load %struct.plot*, %struct.plot** %5, align 8
  %272 = getelementptr inbounds %struct.plot, %struct.plot* %271, i32 0, i32 1
  %273 = load i8**, i8*** %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  store i8 124, i8* %280, align 1
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %6, align 4
  br label %283

283:                                              ; preds = %313, %234
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* %8, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %316

287:                                              ; preds = %283
  %288 = load %struct.plot*, %struct.plot** %5, align 8
  %289 = getelementptr inbounds %struct.plot, %struct.plot* %288, i32 0, i32 1
  %290 = load i8**, i8*** %289, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8*, i8** %290, i64 %292
  %294 = load i8*, i8** %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %312

301:                                              ; preds = %287
  %302 = load %struct.plot*, %struct.plot** %5, align 8
  %303 = getelementptr inbounds %struct.plot, %struct.plot* %302, i32 0, i32 1
  %304 = load i8**, i8*** %303, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %304, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = load i32, i32* %6, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %308, i64 %310
  store i8 95, i8* %311, align 1
  br label %312

312:                                              ; preds = %301, %287
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %6, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %6, align 4
  br label %283

316:                                              ; preds = %283
  br label %317

317:                                              ; preds = %316, %229
  %318 = load %struct.dataset*, %struct.dataset** %3, align 8
  %319 = call i32 @Median(%struct.dataset* %318)
  %320 = load %struct.plot*, %struct.plot** %5, align 8
  %321 = getelementptr inbounds %struct.plot, %struct.plot* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = sub nsw i32 %319, %322
  %324 = load %struct.plot*, %struct.plot** %5, align 8
  %325 = getelementptr inbounds %struct.plot, %struct.plot* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = sdiv i32 %323, %326
  store i32 %327, i32* %9, align 4
  %328 = load %struct.plot*, %struct.plot** %5, align 8
  %329 = getelementptr inbounds %struct.plot, %struct.plot* %328, i32 0, i32 1
  %330 = load i8**, i8*** %329, align 8
  %331 = load i32, i32* %11, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8*, i8** %330, i64 %332
  %334 = load i8*, i8** %333, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  store i8 77, i8* %337, align 1
  %338 = load %struct.dataset*, %struct.dataset** %3, align 8
  %339 = call i32 @Avg(%struct.dataset* %338)
  %340 = load %struct.plot*, %struct.plot** %5, align 8
  %341 = getelementptr inbounds %struct.plot, %struct.plot* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 4
  %343 = sub nsw i32 %339, %342
  %344 = load %struct.plot*, %struct.plot** %5, align 8
  %345 = getelementptr inbounds %struct.plot, %struct.plot* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = sdiv i32 %343, %346
  store i32 %347, i32* %9, align 4
  %348 = load %struct.plot*, %struct.plot** %5, align 8
  %349 = getelementptr inbounds %struct.plot, %struct.plot* %348, i32 0, i32 1
  %350 = load i8**, i8*** %349, align 8
  %351 = load i32, i32* %11, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8*, i8** %350, i64 %352
  %354 = load i8*, i8** %353, align 8
  %355 = load i32, i32* %9, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  store i8 65, i8* %357, align 1
  br label %358

358:                                              ; preds = %317, %16
  ret void
}

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @isnan(i32) #1

declare dso_local i32 @Stddev(%struct.dataset*) #1

declare dso_local i32 @Avg(%struct.dataset*) #1

declare dso_local i32 @Median(%struct.dataset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
