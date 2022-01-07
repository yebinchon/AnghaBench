; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_sendmessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_sendmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ignoretab = type { i32 }
%struct.message = type { i64 }

@LINESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@ignoreall = common dso_local global %struct.ignoretab* null, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendmessage(%struct.message* %0, i32* %1, %struct.ignoretab* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ignoretab*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.message* %0, %struct.message** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ignoretab* %2, %struct.ignoretab** %8, align 8
  store i8* %3, i8** %9, align 8
  %25 = load i32, i32* @LINESIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  store i32 0, i32* %21, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %68

31:                                               ; preds = %4
  store i8* null, i8** %13, align 8
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %12, align 8
  br label %33

33:                                               ; preds = %51, %31
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 32
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 9
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  store i8* %49, i8** %13, align 8
  br label %50

50:                                               ; preds = %48, %43, %38
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %12, align 8
  br label %33

54:                                               ; preds = %33
  %55 = load i8*, i8** %13, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %65

58:                                               ; preds = %54
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = add nsw i64 %63, 1
  br label %65

65:                                               ; preds = %58, %57
  %66 = phi i64 [ 0, %57 ], [ %64, %58 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %23, align 4
  br label %68

68:                                               ; preds = %65, %4
  %69 = load %struct.message*, %struct.message** %6, align 8
  %70 = call i32* @setinput(%struct.message* %69)
  store i32* %70, i32** %11, align 8
  %71 = load %struct.message*, %struct.message** %6, align 8
  %72 = getelementptr inbounds %struct.message, %struct.message* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  store i32 1, i32* %16, align 4
  %74 = load %struct.ignoretab*, %struct.ignoretab** %8, align 8
  %75 = icmp eq %struct.ignoretab* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %68
  %77 = load %struct.ignoretab*, %struct.ignoretab** %8, align 8
  %78 = call i64 @isign(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.ignoretab* %77)
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %76, %68
  %82 = phi i1 [ true, %68 ], [ %80, %76 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %19, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %20, align 4
  br label %84

84:                                               ; preds = %261, %81
  %85 = load i64, i64* %10, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi i1 [ false, %84 ], [ %89, %87 ]
  br i1 %91, label %92, label %262

92:                                               ; preds = %90
  %93 = trunc i64 %26 to i32
  %94 = load i32*, i32** %11, align 8
  %95 = call i32* @fgets(i8* %28, i32 %93, i32* %94)
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %262

98:                                               ; preds = %92
  %99 = call i32 @strlen(i8* %28)
  store i32 %99, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %10, align 8
  %102 = sub nsw i64 %101, %100
  store i64 %102, i64* %10, align 8
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  store i32 0, i32* %20, align 4
  %106 = load %struct.ignoretab*, %struct.ignoretab** %8, align 8
  %107 = load %struct.ignoretab*, %struct.ignoretab** @ignoreall, align 8
  %108 = icmp eq %struct.ignoretab* %106, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %18, align 4
  br label %233

110:                                              ; preds = %98
  %111 = getelementptr inbounds i8, i8* %28, i64 0
  %112 = load i8, i8* %111, align 16
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 10
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.message*, %struct.message** %6, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @statusput(%struct.message* %119, i32* %120, i8* %121)
  store i32 0, i32* %19, align 4
  br label %123

123:                                              ; preds = %118, %115
  store i32 0, i32* %16, align 4
  %124 = load %struct.ignoretab*, %struct.ignoretab** %8, align 8
  %125 = load %struct.ignoretab*, %struct.ignoretab** @ignoreall, align 8
  %126 = icmp eq %struct.ignoretab* %124, %125
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %18, align 4
  br label %232

128:                                              ; preds = %110
  %129 = load i32, i32* %17, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = getelementptr inbounds i8, i8* %28, i64 0
  %133 = load i8, i8* %132, align 16
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 32
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds i8, i8* %28, i64 0
  %138 = load i8, i8* %137, align 16
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 9
  br i1 %140, label %141, label %142

141:                                              ; preds = %136, %131
  br label %231

142:                                              ; preds = %136, %128
  store i8* %28, i8** %12, align 8
  br label %143

143:                                              ; preds = %160, %142
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %12, align 8
  %146 = load i8, i8* %144, align 1
  %147 = sext i8 %146 to i32
  store i32 %147, i32* %21, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load i32, i32* %21, align 4
  %151 = icmp ne i32 %150, 58
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* %21, align 4
  %154 = trunc i32 %153 to i8
  %155 = call i64 @isspace(i8 zeroext %154)
  %156 = icmp ne i64 %155, 0
  %157 = xor i1 %156, true
  br label %158

158:                                              ; preds = %152, %149, %143
  %159 = phi i1 [ false, %149 ], [ false, %143 ], [ %157, %152 ]
  br i1 %159, label %160, label %161

160:                                              ; preds = %158
  br label %143

161:                                              ; preds = %158
  %162 = load i8*, i8** %12, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 -1
  store i8* %163, i8** %12, align 8
  store i8* %163, i8** %13, align 8
  br label %164

164:                                              ; preds = %170, %161
  %165 = load i8*, i8** %12, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %12, align 8
  %167 = load i8, i8* %165, align 1
  %168 = call i64 @isspace(i8 zeroext %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %164

171:                                              ; preds = %164
  %172 = load i8*, i8** %12, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 -1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 58
  br i1 %176, label %177, label %193

177:                                              ; preds = %171
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load %struct.message*, %struct.message** %6, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = call i32 @statusput(%struct.message* %181, i32* %182, i8* %183)
  store i32 0, i32* %19, align 4
  br label %185

185:                                              ; preds = %180, %177
  %186 = load %struct.ignoretab*, %struct.ignoretab** %8, align 8
  %187 = load %struct.ignoretab*, %struct.ignoretab** @ignoreall, align 8
  %188 = icmp ne %struct.ignoretab* %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @putc(i32 10, i32* %190)
  br label %192

192:                                              ; preds = %189, %185
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %230

193:                                              ; preds = %171
  %194 = load i8*, i8** %13, align 8
  store i8 0, i8* %194, align 1
  %195 = load %struct.ignoretab*, %struct.ignoretab** %8, align 8
  %196 = icmp ne %struct.ignoretab* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load %struct.ignoretab*, %struct.ignoretab** %8, align 8
  %199 = call i64 @isign(i8* %28, %struct.ignoretab* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i32 1, i32* %18, align 4
  br label %229

202:                                              ; preds = %197, %193
  %203 = getelementptr inbounds i8, i8* %28, i64 0
  %204 = load i8, i8* %203, align 16
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 115
  br i1 %206, label %212, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds i8, i8* %28, i64 0
  %209 = load i8, i8* %208, align 16
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 83
  br i1 %211, label %212, label %224

212:                                              ; preds = %207, %202
  %213 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load %struct.message*, %struct.message** %6, align 8
  %220 = load i32*, i32** %7, align 8
  %221 = load i8*, i8** %9, align 8
  %222 = call i32 @statusput(%struct.message* %219, i32* %220, i8* %221)
  store i32 0, i32* %19, align 4
  br label %223

223:                                              ; preds = %218, %215
  store i32 1, i32* %18, align 4
  br label %228

224:                                              ; preds = %212, %207
  store i32 0, i32* %18, align 4
  %225 = load i32, i32* %21, align 4
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %13, align 8
  store i8 %226, i8* %227, align 1
  br label %228

228:                                              ; preds = %224, %223
  br label %229

229:                                              ; preds = %228, %201
  store i32 1, i32* %17, align 4
  br label %230

230:                                              ; preds = %229, %192
  br label %231

231:                                              ; preds = %230, %141
  br label %232

232:                                              ; preds = %231, %123
  br label %233

233:                                              ; preds = %232, %105
  %234 = load i32, i32* %18, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %261, label %236

236:                                              ; preds = %233
  %237 = load i8*, i8** %9, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %252

239:                                              ; preds = %236
  %240 = load i32, i32* %22, align 4
  %241 = icmp sgt i32 %240, 1
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i8*, i8** %9, align 8
  %244 = load i32*, i32** %7, align 8
  %245 = call i32 @fputs(i8* %243, i32* %244)
  br label %251

246:                                              ; preds = %239
  %247 = load i8*, i8** %9, align 8
  %248 = load i32, i32* %23, align 4
  %249 = load i32*, i32** %7, align 8
  %250 = call i32 @fwrite(i8* %247, i32 1, i32 %248, i32* %249)
  br label %251

251:                                              ; preds = %246, %242
  br label %252

252:                                              ; preds = %251, %236
  %253 = load i32, i32* %22, align 4
  %254 = load i32*, i32** %7, align 8
  %255 = call i32 @fwrite(i8* %28, i32 1, i32 %253, i32* %254)
  %256 = load i32*, i32** %7, align 8
  %257 = call i64 @ferror(i32* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %372

260:                                              ; preds = %252
  br label %261

261:                                              ; preds = %260, %233
  br label %84

262:                                              ; preds = %97, %90
  %263 = load %struct.ignoretab*, %struct.ignoretab** %8, align 8
  %264 = load %struct.ignoretab*, %struct.ignoretab** @ignoreall, align 8
  %265 = icmp eq %struct.ignoretab* %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = load i64, i64* %10, align 8
  %268 = add nsw i64 %267, -1
  store i64 %268, i64* %10, align 8
  br label %269

269:                                              ; preds = %266, %262
  %270 = load i8*, i8** %9, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %308

272:                                              ; preds = %269
  br label %273

273:                                              ; preds = %306, %272
  %274 = load i64, i64* %10, align 8
  %275 = icmp sgt i64 %274, 0
  br i1 %275, label %276, label %307

276:                                              ; preds = %273
  %277 = trunc i64 %26 to i32
  %278 = load i32*, i32** %11, align 8
  %279 = call i32* @fgets(i8* %28, i32 %277, i32* %278)
  %280 = icmp eq i32* %279, null
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  store i32 0, i32* %21, align 4
  br label %307

282:                                              ; preds = %276
  %283 = call i32 @strlen(i8* %28)
  store i32 %283, i32* %21, align 4
  %284 = sext i32 %283 to i64
  %285 = load i64, i64* %10, align 8
  %286 = sub nsw i64 %285, %284
  store i64 %286, i64* %10, align 8
  %287 = load i32, i32* %21, align 4
  %288 = icmp sgt i32 %287, 1
  br i1 %288, label %289, label %293

289:                                              ; preds = %282
  %290 = load i8*, i8** %9, align 8
  %291 = load i32*, i32** %7, align 8
  %292 = call i32 @fputs(i8* %290, i32* %291)
  br label %298

293:                                              ; preds = %282
  %294 = load i8*, i8** %9, align 8
  %295 = load i32, i32* %23, align 4
  %296 = load i32*, i32** %7, align 8
  %297 = call i32 @fwrite(i8* %294, i32 1, i32 %295, i32* %296)
  br label %298

298:                                              ; preds = %293, %289
  %299 = load i32, i32* %21, align 4
  %300 = load i32*, i32** %7, align 8
  %301 = call i32 @fwrite(i8* %28, i32 1, i32 %299, i32* %300)
  %302 = load i32*, i32** %7, align 8
  %303 = call i64 @ferror(i32* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %298
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %372

306:                                              ; preds = %298
  br label %273

307:                                              ; preds = %281, %273
  br label %343

308:                                              ; preds = %269
  br label %309

309:                                              ; preds = %341, %308
  %310 = load i64, i64* %10, align 8
  %311 = icmp sgt i64 %310, 0
  br i1 %311, label %312, label %342

312:                                              ; preds = %309
  %313 = load i64, i64* %10, align 8
  %314 = load i32, i32* @LINESIZE, align 4
  %315 = sext i32 %314 to i64
  %316 = icmp slt i64 %313, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load i64, i64* %10, align 8
  br label %322

319:                                              ; preds = %312
  %320 = load i32, i32* @LINESIZE, align 4
  %321 = sext i32 %320 to i64
  br label %322

322:                                              ; preds = %319, %317
  %323 = phi i64 [ %318, %317 ], [ %321, %319 ]
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %21, align 4
  %325 = load i32, i32* %21, align 4
  %326 = load i32*, i32** %11, align 8
  %327 = call i32 @fread(i8* %28, i32 1, i32 %325, i32* %326)
  store i32 %327, i32* %21, align 4
  %328 = icmp sle i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %322
  br label %342

330:                                              ; preds = %322
  %331 = load i32, i32* %21, align 4
  %332 = sext i32 %331 to i64
  %333 = load i64, i64* %10, align 8
  %334 = sub nsw i64 %333, %332
  store i64 %334, i64* %10, align 8
  %335 = load i32, i32* %21, align 4
  %336 = load i32*, i32** %7, align 8
  %337 = call i32 @fwrite(i8* %28, i32 1, i32 %335, i32* %336)
  %338 = load i32, i32* %21, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %330
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %372

341:                                              ; preds = %330
  br label %309

342:                                              ; preds = %329, %309
  br label %343

343:                                              ; preds = %342, %307
  %344 = load %struct.ignoretab*, %struct.ignoretab** %8, align 8
  %345 = load %struct.ignoretab*, %struct.ignoretab** @ignoreall, align 8
  %346 = icmp eq %struct.ignoretab* %344, %345
  br i1 %346, label %347, label %371

347:                                              ; preds = %343
  %348 = load i32, i32* %21, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %371

350:                                              ; preds = %347
  %351 = load i32, i32* %21, align 4
  %352 = sub nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %28, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp ne i32 %356, 10
  br i1 %357, label %358, label %371

358:                                              ; preds = %350
  %359 = load i32*, i32** %11, align 8
  %360 = call i32 @getc(i32* %359)
  store i32 %360, i32* %21, align 4
  %361 = load i32, i32* @EOF, align 4
  %362 = icmp ne i32 %360, %361
  br i1 %362, label %363, label %370

363:                                              ; preds = %358
  %364 = load i32, i32* %21, align 4
  %365 = load i32*, i32** %7, align 8
  %366 = call i32 @putc(i32 %364, i32* %365)
  %367 = load i32, i32* @EOF, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %363
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %372

370:                                              ; preds = %363, %358
  br label %371

371:                                              ; preds = %370, %350, %347, %343
  store i32 0, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %372

372:                                              ; preds = %371, %369, %340, %305, %259
  %373 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %373)
  %374 = load i32, i32* %5, align 4
  ret i32 %374
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @setinput(%struct.message*) #2

declare dso_local i64 @isign(i8*, %struct.ignoretab*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @statusput(%struct.message*, i32*, i8*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @putc(i32, i32*) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @getc(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
