; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwscoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwscoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64* }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@byte_sort = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"bwscoll error 01\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bwscoll error 02\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bwscoll error 1\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"bwscoll error 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwscoll(%struct.bwstring* %0, %struct.bwstring* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca %struct.bwstring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %5, align 8
  store %struct.bwstring* %1, %struct.bwstring** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %22 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %25 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ule i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 -1
  store i32 %35, i32* %4, align 4
  br label %403

36:                                               ; preds = %3
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %403

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %9, align 8
  %48 = load i32, i32* @MB_CUR_MAX, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %249

50:                                               ; preds = %41
  %51 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %52 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %10, align 8
  %57 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %58 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %11, align 8
  %63 = load i64, i64* @byte_sort, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @memcmp(i8* %70, i8* %71, i64 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %69
  br label %97

78:                                               ; preds = %65
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @memcmp(i8* %83, i8* %84, i64 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i32 -1, i32* %12, align 4
  br label %90

90:                                               ; preds = %89, %82
  br label %96

91:                                               ; preds = %78
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @memcmp(i8* %92, i8* %93, i64 %94)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %91, %90
  br label %97

97:                                               ; preds = %96, %77
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  br label %403

99:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %100 = load i64, i64* %8, align 8
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i64, i64* %9, align 8
  store i64 %105, i64* %15, align 8
  br label %106

106:                                              ; preds = %104, %99
  br label %107

107:                                              ; preds = %236, %221, %106
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %15, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %237

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %131, %111
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %15, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i8*, i8** %10, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load i8*, i8** %11, align 8
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %122, %116, %112
  %130 = phi i1 [ false, %116 ], [ false, %112 ], [ %128, %122 ]
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = load i64, i64* %14, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %14, align 8
  br label %112

134:                                              ; preds = %129
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* %15, align 8
  %137 = icmp uge i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %237

139:                                              ; preds = %134
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %139
  %147 = load i8*, i8** %11, align 8
  %148 = load i64, i64* %14, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = call i32 @err(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %156

155:                                              ; preds = %146
  store i32 -1, i32* %4, align 4
  br label %403

156:                                              ; preds = %153
  br label %166

157:                                              ; preds = %139
  %158 = load i8*, i8** %11, align 8
  %159 = load i64, i64* %14, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 1, i32* %4, align 4
  br label %403

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165, %156
  %167 = load i8*, i8** %10, align 8
  %168 = load i64, i64* %14, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = load i8*, i8** %11, align 8
  %171 = load i64, i64* %14, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = call i32 @strcoll(i8* %169, i8* %172)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load i32, i32* %13, align 4
  store i32 %177, i32* %4, align 4
  br label %403

178:                                              ; preds = %166
  br label %179

179:                                              ; preds = %199, %178
  %180 = load i64, i64* %14, align 8
  %181 = load i64, i64* %15, align 8
  %182 = icmp ult i64 %180, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %179
  %184 = load i8*, i8** %10, align 8
  %185 = load i64, i64* %14, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = load i8*, i8** %11, align 8
  %192 = load i64, i64* %14, align 8
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br label %197

197:                                              ; preds = %190, %183, %179
  %198 = phi i1 [ false, %183 ], [ false, %179 ], [ %196, %190 ]
  br i1 %198, label %199, label %202

199:                                              ; preds = %197
  %200 = load i64, i64* %14, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %14, align 8
  br label %179

202:                                              ; preds = %197
  %203 = load i64, i64* %14, align 8
  %204 = load i64, i64* %15, align 8
  %205 = icmp uge i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %237

207:                                              ; preds = %202
  %208 = load i8*, i8** %10, align 8
  %209 = load i64, i64* %14, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %207
  %215 = load i8*, i8** %11, align 8
  %216 = load i64, i64* %14, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = load i64, i64* %14, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %14, align 8
  br label %107

224:                                              ; preds = %214
  store i32 -1, i32* %4, align 4
  br label %403

225:                                              ; preds = %207
  %226 = load i8*, i8** %11, align 8
  %227 = load i64, i64* %14, align 8
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  store i32 1, i32* %4, align 4
  br label %403

233:                                              ; preds = %225
  %234 = call i32 @err(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233
  br label %236

236:                                              ; preds = %235
  br label %107

237:                                              ; preds = %206, %138, %107
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* %9, align 8
  %240 = icmp ult i64 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store i32 -1, i32* %4, align 4
  br label %403

242:                                              ; preds = %237
  %243 = load i64, i64* %8, align 8
  %244 = load i64, i64* %9, align 8
  %245 = icmp ugt i64 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store i32 1, i32* %4, align 4
  br label %403

247:                                              ; preds = %242
  br label %248

248:                                              ; preds = %247
  store i32 0, i32* %4, align 4
  br label %403

249:                                              ; preds = %41
  store i32 0, i32* %20, align 4
  %250 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %251 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  %253 = load i64*, i64** %252, align 8
  %254 = load i64, i64* %7, align 8
  %255 = getelementptr inbounds i64, i64* %253, i64 %254
  store i64* %255, i64** %16, align 8
  %256 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %257 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 1
  %259 = load i64*, i64** %258, align 8
  %260 = load i64, i64* %7, align 8
  %261 = getelementptr inbounds i64, i64* %259, i64 %260
  store i64* %261, i64** %17, align 8
  store i64 0, i64* %18, align 8
  %262 = load i64, i64* %8, align 8
  store i64 %262, i64* %19, align 8
  %263 = load i64, i64* %19, align 8
  %264 = load i64, i64* %9, align 8
  %265 = icmp ugt i64 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %249
  %267 = load i64, i64* %9, align 8
  store i64 %267, i64* %19, align 8
  br label %268

268:                                              ; preds = %266, %249
  br label %269

269:                                              ; preds = %390, %376, %268
  %270 = load i64, i64* %18, align 8
  %271 = load i64, i64* %19, align 8
  %272 = icmp ult i64 %270, %271
  br i1 %272, label %273, label %391

273:                                              ; preds = %269
  br label %274

274:                                              ; preds = %293, %273
  %275 = load i64, i64* %18, align 8
  %276 = load i64, i64* %19, align 8
  %277 = icmp ult i64 %275, %276
  br i1 %277, label %278, label %291

278:                                              ; preds = %274
  %279 = load i64*, i64** %16, align 8
  %280 = load i64, i64* %18, align 8
  %281 = getelementptr inbounds i64, i64* %279, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %278
  %285 = load i64*, i64** %17, align 8
  %286 = load i64, i64* %18, align 8
  %287 = getelementptr inbounds i64, i64* %285, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  %290 = xor i1 %289, true
  br label %291

291:                                              ; preds = %284, %278, %274
  %292 = phi i1 [ false, %278 ], [ false, %274 ], [ %290, %284 ]
  br i1 %292, label %293, label %296

293:                                              ; preds = %291
  %294 = load i64, i64* %18, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %18, align 8
  br label %274

296:                                              ; preds = %291
  %297 = load i64, i64* %18, align 8
  %298 = load i64, i64* %19, align 8
  %299 = icmp uge i64 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %391

301:                                              ; preds = %296
  %302 = load i64*, i64** %16, align 8
  %303 = load i64, i64* %18, align 8
  %304 = getelementptr inbounds i64, i64* %302, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %301
  %308 = load i64*, i64** %17, align 8
  %309 = load i64, i64* %18, align 8
  %310 = getelementptr inbounds i64, i64* %308, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %307
  %314 = call i32 @err(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %316

315:                                              ; preds = %307
  store i32 -1, i32* %4, align 4
  br label %403

316:                                              ; preds = %313
  br label %325

317:                                              ; preds = %301
  %318 = load i64*, i64** %17, align 8
  %319 = load i64, i64* %18, align 8
  %320 = getelementptr inbounds i64, i64* %318, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  store i32 1, i32* %4, align 4
  br label %403

324:                                              ; preds = %317
  br label %325

325:                                              ; preds = %324, %316
  %326 = load i64*, i64** %16, align 8
  %327 = load i64, i64* %18, align 8
  %328 = getelementptr inbounds i64, i64* %326, i64 %327
  %329 = load i64*, i64** %17, align 8
  %330 = load i64, i64* %18, align 8
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  %332 = call i32 @wide_str_coll(i64* %328, i64* %331)
  store i32 %332, i32* %20, align 4
  %333 = load i32, i32* %20, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %325
  %336 = load i32, i32* %20, align 4
  store i32 %336, i32* %4, align 4
  br label %403

337:                                              ; preds = %325
  br label %338

338:                                              ; preds = %356, %337
  %339 = load i64, i64* %18, align 8
  %340 = load i64, i64* %19, align 8
  %341 = icmp ult i64 %339, %340
  br i1 %341, label %342, label %354

342:                                              ; preds = %338
  %343 = load i64*, i64** %16, align 8
  %344 = load i64, i64* %18, align 8
  %345 = getelementptr inbounds i64, i64* %343, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %342
  %349 = load i64*, i64** %17, align 8
  %350 = load i64, i64* %18, align 8
  %351 = getelementptr inbounds i64, i64* %349, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br label %354

354:                                              ; preds = %348, %342, %338
  %355 = phi i1 [ false, %342 ], [ false, %338 ], [ %353, %348 ]
  br i1 %355, label %356, label %359

356:                                              ; preds = %354
  %357 = load i64, i64* %18, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %18, align 8
  br label %338

359:                                              ; preds = %354
  %360 = load i64, i64* %18, align 8
  %361 = load i64, i64* %19, align 8
  %362 = icmp uge i64 %360, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %359
  br label %391

364:                                              ; preds = %359
  %365 = load i64*, i64** %16, align 8
  %366 = load i64, i64* %18, align 8
  %367 = getelementptr inbounds i64, i64* %365, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %380

370:                                              ; preds = %364
  %371 = load i64*, i64** %17, align 8
  %372 = load i64, i64* %18, align 8
  %373 = getelementptr inbounds i64, i64* %371, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %370
  %377 = load i64, i64* %18, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* %18, align 8
  br label %269

379:                                              ; preds = %370
  store i32 -1, i32* %4, align 4
  br label %403

380:                                              ; preds = %364
  %381 = load i64*, i64** %17, align 8
  %382 = load i64, i64* %18, align 8
  %383 = getelementptr inbounds i64, i64* %381, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %380
  store i32 1, i32* %4, align 4
  br label %403

387:                                              ; preds = %380
  %388 = call i32 @err(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %389

389:                                              ; preds = %387
  br label %390

390:                                              ; preds = %389
  br label %269

391:                                              ; preds = %363, %300, %269
  %392 = load i64, i64* %8, align 8
  %393 = load i64, i64* %9, align 8
  %394 = icmp ult i64 %392, %393
  br i1 %394, label %395, label %396

395:                                              ; preds = %391
  store i32 -1, i32* %4, align 4
  br label %403

396:                                              ; preds = %391
  %397 = load i64, i64* %8, align 8
  %398 = load i64, i64* %9, align 8
  %399 = icmp ugt i64 %397, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %396
  store i32 1, i32* %4, align 4
  br label %403

401:                                              ; preds = %396
  br label %402

402:                                              ; preds = %401
  store i32 0, i32* %4, align 4
  br label %403

403:                                              ; preds = %402, %400, %395, %386, %379, %335, %323, %315, %248, %246, %241, %232, %224, %176, %164, %155, %97, %40, %30
  %404 = load i32, i32* %4, align 4
  ret i32 %404
}

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strcoll(i8*, i8*) #1

declare dso_local i32 @wide_str_coll(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
