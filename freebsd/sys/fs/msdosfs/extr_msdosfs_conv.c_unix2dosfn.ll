; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_unix2dosfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_unix2dosfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i32 }

@SLOT_E5 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unix2dosfn(i8* %0, i8* %1, i64 %2, i32 %3, %struct.msdosfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.msdosfsmount*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [6 x i8], align 1
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.msdosfsmount* %4, %struct.msdosfsmount** %11, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %30, %5
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 11
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 32, i8* %29, align 1
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %12, align 4
  br label %22

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 11
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 46, i8* %46, align 1
  %47 = load i32, i32* %10, align 4
  %48 = icmp sle i32 %47, 1
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %554

50:                                               ; preds = %41, %33
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 2
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 46, i8* %67, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8 46, i8* %69, align 1
  %70 = load i32, i32* %10, align 4
  %71 = icmp sle i32 %70, 1
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %554

73:                                               ; preds = %62, %56, %50
  %74 = load i8*, i8** %7, align 8
  store i8* %74, i8** %16, align 8
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %93, %73
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %12, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load i8*, i8** %16, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 32
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i8*, i8** %16, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 46
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %96

92:                                               ; preds = %86, %81
  br label %93

93:                                               ; preds = %92
  %94 = load i8*, i8** %16, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %16, align 8
  br label %77

96:                                               ; preds = %91, %77
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %6, align 4
  br label %554

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  store i8* %101, i8** %16, align 8
  %102 = load i64, i64* %9, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %113, %100
  %105 = load i32, i32* %12, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = bitcast i32* %12 to i64*
  %109 = load %struct.msdosfsmount*, %struct.msdosfsmount** %11, align 8
  %110 = call i32 (i8**, ...) @unix2doschr(i8** %16, i64* %108, %struct.msdosfsmount* %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %554

113:                                              ; preds = %107
  br label %104

114:                                              ; preds = %104
  store i8* null, i8** %18, align 8
  store i8* null, i8** %17, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8* %116, i8** %16, align 8
  %117 = load i64, i64* %9, align 8
  %118 = sub i64 %117, 1
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %142, %114
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %12, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %120
  %125 = load i8*, i8** %16, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %16, align 8
  %127 = load i8, i8* %125, align 1
  %128 = sext i8 %127 to i32
  switch i32 %128, label %136 [
    i32 46, label %129
    i32 32, label %135
  ]

129:                                              ; preds = %124
  %130 = load i8*, i8** %18, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = load i8*, i8** %16, align 8
  store i8* %133, i8** %18, align 8
  br label %134

134:                                              ; preds = %132, %129
  br label %142

135:                                              ; preds = %124
  br label %142

136:                                              ; preds = %124
  %137 = load i8*, i8** %18, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i8*, i8** %18, align 8
  store i8* %140, i8** %17, align 8
  br label %141

141:                                              ; preds = %139, %136
  store i8* null, i8** %18, align 8
  br label %142

142:                                              ; preds = %141, %135, %134
  br label %120

143:                                              ; preds = %120
  %144 = load i8*, i8** %17, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %281

146:                                              ; preds = %143
  %147 = load i8*, i8** %18, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i8*, i8** %18, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %14, align 4
  br label %165

156:                                              ; preds = %146
  %157 = load i64, i64* %9, align 8
  %158 = load i8*, i8** %17, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sub i64 %157, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %156, %149
  %166 = load i8*, i8** %17, align 8
  store i8* %166, i8** %16, align 8
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %12, align 4
  store i32 8, i32* %13, align 4
  br label %168

168:                                              ; preds = %271, %165
  %169 = load i32, i32* %12, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %13, align 4
  %173 = icmp slt i32 %172, 11
  br label %174

174:                                              ; preds = %171, %168
  %175 = phi i1 [ false, %168 ], [ %173, %171 ]
  br i1 %175, label %176, label %274

176:                                              ; preds = %174
  %177 = bitcast i32* %12 to i64*
  %178 = load %struct.msdosfsmount*, %struct.msdosfsmount** %11, align 8
  %179 = call i32 (i8**, ...) @unix2doschr(i8** %16, i64* %177, %struct.msdosfsmount* %178)
  store i32 %179, i32* %21, align 4
  %180 = load i32, i32* %21, align 4
  %181 = and i32 %180, 65280
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %211

183:                                              ; preds = %176
  %184 = load i32, i32* %21, align 4
  %185 = ashr i32 %184, 8
  %186 = trunc i32 %185 to i8
  %187 = load i8*, i8** %8, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 %186, i8* %190, align 1
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %13, align 4
  %193 = icmp slt i32 %192, 11
  br i1 %193, label %194, label %205

194:                                              ; preds = %183
  %195 = load i32, i32* %21, align 4
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** %8, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  store i8 %196, i8* %200, align 1
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 3
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  store i32 2, i32* %15, align 4
  br label %204

204:                                              ; preds = %203, %194
  br label %271

205:                                              ; preds = %183
  store i32 3, i32* %15, align 4
  %206 = load i8*, i8** %8, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  store i8 32, i8* %210, align 1
  br label %274

211:                                              ; preds = %176
  %212 = load i32, i32* %21, align 4
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %8, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8 %213, i8* %217, align 1
  br label %218

218:                                              ; preds = %211
  %219 = load i8*, i8** %8, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = and i32 %224, 128
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %239, label %227

227:                                              ; preds = %218
  %228 = load i8*, i8** %16, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 -1
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = load i8*, i8** %8, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %231, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %227, %218
  %240 = load i32, i32* %15, align 4
  %241 = icmp ne i32 %240, 3
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 2, i32* %15, align 4
  br label %243

243:                                              ; preds = %242, %239, %227
  %244 = load i8*, i8** %8, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %256

251:                                              ; preds = %243
  store i32 3, i32* %15, align 4
  %252 = load i8*, i8** %8, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  store i8 95, i8* %255, align 1
  br label %256

256:                                              ; preds = %251, %243
  %257 = load i8*, i8** %8, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 2
  br i1 %263, label %264, label %270

264:                                              ; preds = %256
  store i32 3, i32* %15, align 4
  %265 = load i8*, i8** %8, align 8
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %13, align 4
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i8, i8* %265, i64 %268
  store i8 32, i8* %269, align 1
  br label %270

270:                                              ; preds = %264, %256
  br label %271

271:                                              ; preds = %270, %204
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %168

274:                                              ; preds = %205, %174
  %275 = load i32, i32* %12, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  store i32 3, i32* %15, align 4
  br label %278

278:                                              ; preds = %277, %274
  %279 = load i8*, i8** %17, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 -1
  store i8* %280, i8** %17, align 8
  br label %300

281:                                              ; preds = %143
  %282 = load i8*, i8** %16, align 8
  store i8* %282, i8** %17, align 8
  br label %283

283:                                              ; preds = %296, %281
  %284 = load i8*, i8** %17, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 -1
  store i8* %285, i8** %17, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 32
  br i1 %288, label %294, label %289

289:                                              ; preds = %283
  %290 = load i8*, i8** %17, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 46
  br label %294

294:                                              ; preds = %289, %283
  %295 = phi i1 [ true, %283 ], [ %293, %289 ]
  br i1 %295, label %296, label %297

296:                                              ; preds = %294
  br label %283

297:                                              ; preds = %294
  %298 = load i8*, i8** %17, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %17, align 8
  br label %300

300:                                              ; preds = %297, %278
  %301 = load i8*, i8** %17, align 8
  %302 = load i8*, i8** %7, align 8
  %303 = ptrtoint i8* %301 to i64
  %304 = ptrtoint i8* %302 to i64
  %305 = sub i64 %303, %304
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %307

307:                                              ; preds = %410, %300
  %308 = load i8*, i8** %7, align 8
  %309 = load i8*, i8** %17, align 8
  %310 = icmp ult i8* %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load i32, i32* %13, align 4
  %313 = icmp slt i32 %312, 8
  br label %314

314:                                              ; preds = %311, %307
  %315 = phi i1 [ false, %307 ], [ %313, %311 ]
  br i1 %315, label %316, label %413

316:                                              ; preds = %314
  %317 = load %struct.msdosfsmount*, %struct.msdosfsmount** %11, align 8
  %318 = call i32 (i8**, ...) @unix2doschr(i8** %7, i32* %12, %struct.msdosfsmount* %317)
  store i32 %318, i32* %21, align 4
  %319 = load i32, i32* %21, align 4
  %320 = and i32 %319, 65280
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %350

322:                                              ; preds = %316
  %323 = load i32, i32* %21, align 4
  %324 = ashr i32 %323, 8
  %325 = trunc i32 %324 to i8
  %326 = load i8*, i8** %8, align 8
  %327 = load i32, i32* %13, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %326, i64 %328
  store i8 %325, i8* %329, align 1
  %330 = load i32, i32* %13, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %13, align 4
  %332 = icmp slt i32 %331, 8
  br i1 %332, label %333, label %344

333:                                              ; preds = %322
  %334 = load i32, i32* %21, align 4
  %335 = trunc i32 %334 to i8
  %336 = load i8*, i8** %8, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  store i8 %335, i8* %339, align 1
  %340 = load i32, i32* %15, align 4
  %341 = icmp ne i32 %340, 3
  br i1 %341, label %342, label %343

342:                                              ; preds = %333
  store i32 2, i32* %15, align 4
  br label %343

343:                                              ; preds = %342, %333
  br label %410

344:                                              ; preds = %322
  store i32 3, i32* %15, align 4
  %345 = load i8*, i8** %8, align 8
  %346 = load i32, i32* %13, align 4
  %347 = sub nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %345, i64 %348
  store i8 32, i8* %349, align 1
  br label %413

350:                                              ; preds = %316
  %351 = load i32, i32* %21, align 4
  %352 = trunc i32 %351 to i8
  %353 = load i8*, i8** %8, align 8
  %354 = load i32, i32* %13, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8, i8* %353, i64 %355
  store i8 %352, i8* %356, align 1
  br label %357

357:                                              ; preds = %350
  %358 = load i8*, i8** %8, align 8
  %359 = load i32, i32* %13, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %358, i64 %360
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = and i32 %363, 128
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %378, label %366

366:                                              ; preds = %357
  %367 = load i8*, i8** %7, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 -1
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = load i8*, i8** %8, align 8
  %372 = load i32, i32* %13, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = icmp ne i32 %370, %376
  br i1 %377, label %378, label %382

378:                                              ; preds = %366, %357
  %379 = load i32, i32* %15, align 4
  %380 = icmp ne i32 %379, 3
  br i1 %380, label %381, label %382

381:                                              ; preds = %378
  store i32 2, i32* %15, align 4
  br label %382

382:                                              ; preds = %381, %378, %366
  %383 = load i8*, i8** %8, align 8
  %384 = load i32, i32* %13, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %383, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %390, label %395

390:                                              ; preds = %382
  store i32 3, i32* %15, align 4
  %391 = load i8*, i8** %8, align 8
  %392 = load i32, i32* %13, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %391, i64 %393
  store i8 95, i8* %394, align 1
  br label %395

395:                                              ; preds = %390, %382
  %396 = load i8*, i8** %8, align 8
  %397 = load i32, i32* %13, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %396, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = sext i8 %400 to i32
  %402 = icmp eq i32 %401, 2
  br i1 %402, label %403, label %409

403:                                              ; preds = %395
  store i32 3, i32* %15, align 4
  %404 = load i8*, i8** %8, align 8
  %405 = load i32, i32* %13, align 4
  %406 = add nsw i32 %405, -1
  store i32 %406, i32* %13, align 4
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i8, i8* %404, i64 %407
  store i8 32, i8* %408, align 1
  br label %409

409:                                              ; preds = %403, %395
  br label %410

410:                                              ; preds = %409, %343
  %411 = load i32, i32* %13, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %13, align 4
  br label %307

413:                                              ; preds = %344, %314
  %414 = load i8*, i8** %7, align 8
  %415 = load i8*, i8** %17, align 8
  %416 = icmp ult i8* %414, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %413
  store i32 3, i32* %15, align 4
  br label %418

418:                                              ; preds = %417, %413
  %419 = load i32, i32* %13, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %418
  %422 = load i8*, i8** %8, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 0
  store i8 95, i8* %423, align 1
  br label %424

424:                                              ; preds = %421, %418
  %425 = load i32, i32* %15, align 4
  %426 = icmp ne i32 %425, 3
  br i1 %426, label %427, label %432

427:                                              ; preds = %424
  %428 = load i32, i32* %10, align 4
  %429 = icmp sgt i32 %428, 1
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  store i32 0, i32* %15, align 4
  br label %431

431:                                              ; preds = %430, %427
  br label %542

432:                                              ; preds = %424
  %433 = load i32, i32* %10, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %432
  br label %542

436:                                              ; preds = %432
  %437 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %438 = getelementptr inbounds i8, i8* %437, i64 6
  store i8* %438, i8** %20, align 8
  br label %439

439:                                              ; preds = %455, %436
  %440 = load i8*, i8** %20, align 8
  %441 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %442 = icmp ugt i8* %440, %441
  br i1 %442, label %443, label %446

443:                                              ; preds = %439
  %444 = load i32, i32* %10, align 4
  %445 = icmp ne i32 %444, 0
  br label %446

446:                                              ; preds = %443, %439
  %447 = phi i1 [ false, %439 ], [ %445, %443 ]
  br i1 %447, label %448, label %458

448:                                              ; preds = %446
  %449 = load i32, i32* %10, align 4
  %450 = srem i32 %449, 10
  %451 = add nsw i32 %450, 48
  %452 = trunc i32 %451 to i8
  %453 = load i8*, i8** %20, align 8
  %454 = getelementptr inbounds i8, i8* %453, i32 -1
  store i8* %454, i8** %20, align 8
  store i8 %452, i8* %454, align 1
  br label %455

455:                                              ; preds = %448
  %456 = load i32, i32* %10, align 4
  %457 = sdiv i32 %456, 10
  store i32 %457, i32* %10, align 4
  br label %439

458:                                              ; preds = %446
  %459 = load i32, i32* %10, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  store i32 0, i32* %15, align 4
  br label %542

462:                                              ; preds = %458
  store i32 8, i32* %12, align 4
  br label %463

463:                                              ; preds = %472, %462
  %464 = load i8*, i8** %8, align 8
  %465 = load i32, i32* %12, align 4
  %466 = add nsw i32 %465, -1
  store i32 %466, i32* %12, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, i8* %464, i64 %467
  %469 = load i8, i8* %468, align 1
  %470 = sext i8 %469 to i32
  %471 = icmp eq i32 %470, 32
  br i1 %471, label %472, label %473

472:                                              ; preds = %463
  br label %463

473:                                              ; preds = %463
  %474 = load i32, i32* %12, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %12, align 4
  %476 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %477 = getelementptr inbounds i8, i8* %476, i64 6
  %478 = load i8*, i8** %20, align 8
  %479 = ptrtoint i8* %477 to i64
  %480 = ptrtoint i8* %478 to i64
  %481 = sub i64 %479, %480
  %482 = add nsw i64 %481, 1
  %483 = load i32, i32* %12, align 4
  %484 = sub nsw i32 8, %483
  %485 = sext i32 %484 to i64
  %486 = icmp sgt i64 %482, %485
  br i1 %486, label %487, label %497

487:                                              ; preds = %473
  %488 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %489 = getelementptr inbounds i8, i8* %488, i64 6
  %490 = load i8*, i8** %20, align 8
  %491 = ptrtoint i8* %489 to i64
  %492 = ptrtoint i8* %490 to i64
  %493 = sub i64 %491, %492
  %494 = add nsw i64 %493, 1
  %495 = sub nsw i64 8, %494
  %496 = trunc i64 %495 to i32
  store i32 %496, i32* %12, align 4
  br label %497

497:                                              ; preds = %487, %473
  %498 = load i8*, i8** %8, align 8
  store i8* %498, i8** %16, align 8
  %499 = load i32, i32* %12, align 4
  %500 = load i64, i64* %9, align 8
  %501 = load %struct.msdosfsmount*, %struct.msdosfsmount** %11, align 8
  %502 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.msdosfsmount*, %struct.msdosfsmount** %11, align 8
  %505 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = call i64 @mbsadjpos(i8** %16, i32 %499, i64 %500, i32 1, i32 %503, i32 %506)
  %508 = load i32, i32* %12, align 4
  %509 = sext i32 %508 to i64
  %510 = sub nsw i64 %509, %507
  %511 = trunc i64 %510 to i32
  store i32 %511, i32* %12, align 4
  %512 = load i8*, i8** %8, align 8
  %513 = load i32, i32* %12, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %12, align 4
  %515 = sext i32 %513 to i64
  %516 = getelementptr inbounds i8, i8* %512, i64 %515
  store i8 126, i8* %516, align 1
  br label %517

517:                                              ; preds = %522, %497
  %518 = load i8*, i8** %20, align 8
  %519 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %520 = getelementptr inbounds i8, i8* %519, i64 6
  %521 = icmp ult i8* %518, %520
  br i1 %521, label %522, label %531

522:                                              ; preds = %517
  %523 = load i8*, i8** %20, align 8
  %524 = getelementptr inbounds i8, i8* %523, i32 1
  store i8* %524, i8** %20, align 8
  %525 = load i8, i8* %523, align 1
  %526 = load i8*, i8** %8, align 8
  %527 = load i32, i32* %12, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %12, align 4
  %529 = sext i32 %527 to i64
  %530 = getelementptr inbounds i8, i8* %526, i64 %529
  store i8 %525, i8* %530, align 1
  br label %517

531:                                              ; preds = %517
  br label %532

532:                                              ; preds = %535, %531
  %533 = load i32, i32* %12, align 4
  %534 = icmp slt i32 %533, 8
  br i1 %534, label %535, label %541

535:                                              ; preds = %532
  %536 = load i8*, i8** %8, align 8
  %537 = load i32, i32* %12, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %12, align 4
  %539 = sext i32 %537 to i64
  %540 = getelementptr inbounds i8, i8* %536, i64 %539
  store i8 32, i8* %540, align 1
  br label %532

541:                                              ; preds = %532
  store i32 3, i32* %15, align 4
  br label %542

542:                                              ; preds = %541, %461, %435, %431
  %543 = load i8*, i8** %8, align 8
  %544 = getelementptr inbounds i8, i8* %543, i64 0
  %545 = load i8, i8* %544, align 1
  %546 = sext i8 %545 to i32
  %547 = icmp eq i32 %546, 229
  br i1 %547, label %548, label %552

548:                                              ; preds = %542
  %549 = load i8, i8* @SLOT_E5, align 1
  %550 = load i8*, i8** %8, align 8
  %551 = getelementptr inbounds i8, i8* %550, i64 0
  store i8 %549, i8* %551, align 1
  br label %552

552:                                              ; preds = %548, %542
  %553 = load i32, i32* %15, align 4
  store i32 %553, i32* %6, align 4
  br label %554

554:                                              ; preds = %552, %112, %99, %65, %44
  %555 = load i32, i32* %6, align 4
  ret i32 %555
}

declare dso_local i32 @unix2doschr(i8**, ...) #1

declare dso_local i64 @mbsadjpos(i8**, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
