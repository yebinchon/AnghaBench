; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/env/extr_envopts.c_split_spaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/env/extr_envopts.c_split_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@split_spaces.nullarg = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Sequence '\\%c' is not allowed in quoted strings\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid sequence '\\%c' in -S\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"No terminating quote for string: %.*s%s\00", align 1
@env_verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"#env  split -S:\09'%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"#env      into:\09'%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"#env          &\09'%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @split_spaces(i8* %0, i32* %1, i32* %2, i8*** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8*** %3, i8**** %8, align 8
  br label %24

24:                                               ; preds = %29, %4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isspacech(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %24

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %374

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %40, 1
  %42 = call i8* @malloc(i32 %41)
  store i8* %42, i8** %14, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %44, %47
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i8* @malloc(i32 %52)
  %54 = bitcast i8* %53 to i8**
  store i8** %54, i8*** %13, align 8
  %55 = load i8**, i8*** %13, align 8
  store i8** %55, i8*** %15, align 8
  %56 = load i8***, i8**** %8, align 8
  %57 = load i8**, i8*** %56, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** %15, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %15, align 8
  store i8* %58, i8** %59, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %18, align 4
  store i8* null, i8** %9, align 8
  %61 = load i8*, i8** %5, align 8
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %14, align 8
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %294, %38
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %297

68:                                               ; preds = %63
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i8* null, i8** %10, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  switch i32 %71, label %200 [
    i32 34, label %72
    i32 36, label %96
    i32 39, label %109
    i32 92, label %133
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %11, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  store i32 %78, i32* %19, align 4
  br label %95

79:                                               ; preds = %72
  %80 = load i32, i32* %22, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %22, align 4
  br label %94

83:                                               ; preds = %79
  %84 = load i8*, i8** @split_spaces.nullarg, align 8
  store i8* %84, i8** %10, align 8
  store i32 1, i32* %22, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = load i8**, i8*** %15, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 -1
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %85 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %18, align 4
  %93 = load i8*, i8** %11, align 8
  store i8* %93, i8** %9, align 8
  br label %94

94:                                               ; preds = %83, %82
  br label %95

95:                                               ; preds = %94, %75
  br label %234

96:                                               ; preds = %68
  %97 = load i32, i32* %23, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i8*, i8** %11, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  store i32 %102, i32* %19, align 4
  br label %108

103:                                              ; preds = %96
  %104 = load i32, i32* %21, align 4
  %105 = load i8**, i8*** %15, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 -1
  %107 = call i8* @expand_vars(i32 %104, i8** %106, i8** %12, i8** %11)
  store i8* %107, i8** %10, align 8
  br label %108

108:                                              ; preds = %103, %99
  br label %234

109:                                              ; preds = %68
  %110 = load i32, i32* %22, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i8*, i8** %11, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  store i32 %115, i32* %19, align 4
  br label %132

116:                                              ; preds = %109
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, i32* %23, align 4
  br label %131

120:                                              ; preds = %116
  %121 = load i8*, i8** @split_spaces.nullarg, align 8
  store i8* %121, i8** %10, align 8
  store i32 1, i32* %23, align 4
  %122 = load i8*, i8** %12, align 8
  %123 = load i8**, i8*** %15, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 -1
  %125 = load i8*, i8** %124, align 8
  %126 = ptrtoint i8* %122 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %18, align 4
  %130 = load i8*, i8** %11, align 8
  store i8* %130, i8** %9, align 8
  br label %131

131:                                              ; preds = %120, %119
  br label %132

132:                                              ; preds = %131, %112
  br label %234

133:                                              ; preds = %68
  %134 = load i32, i32* %23, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %133
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = icmp eq i32 %141, 39
  br i1 %142, label %146, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %19, align 4
  %145 = icmp eq i32 %144, 92
  br i1 %145, label %146, label %149

146:                                              ; preds = %143, %136
  %147 = load i8*, i8** %11, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %11, align 8
  br label %153

149:                                              ; preds = %143
  %150 = load i8*, i8** %11, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %149, %146
  br label %234

154:                                              ; preds = %133
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %11, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  switch i32 %159, label %185 [
    i32 34, label %160
    i32 35, label %160
    i32 36, label %160
    i32 39, label %160
    i32 92, label %160
    i32 95, label %164
    i32 99, label %172
    i32 102, label %180
    i32 110, label %181
    i32 114, label %182
    i32 116, label %183
    i32 118, label %184
  ]

160:                                              ; preds = %154, %154, %154, %154, %154
  %161 = load i8*, i8** %11, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  store i32 %163, i32* %19, align 4
  br label %199

164:                                              ; preds = %154
  %165 = load i32, i32* %22, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 32, i32* %19, align 4
  br label %171

168:                                              ; preds = %164
  store i32 1, i32* %20, align 4
  %169 = load i8*, i8** %11, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %11, align 8
  br label %171

171:                                              ; preds = %168, %167
  br label %199

172:                                              ; preds = %154
  %173 = load i32, i32* %22, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i8*, i8** %11, align 8
  %177 = load i8, i8* %176, align 1
  %178 = call i32 (i32, i8*, i8, ...) @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8 signext %177)
  br label %179

179:                                              ; preds = %175, %172
  br label %298

180:                                              ; preds = %154
  store i32 12, i32* %19, align 4
  br label %199

181:                                              ; preds = %154
  store i32 10, i32* %19, align 4
  br label %199

182:                                              ; preds = %154
  store i32 13, i32* %19, align 4
  br label %199

183:                                              ; preds = %154
  store i32 9, i32* %19, align 4
  br label %199

184:                                              ; preds = %154
  store i32 11, i32* %19, align 4
  br label %199

185:                                              ; preds = %154
  %186 = load i8*, i8** %11, align 8
  %187 = load i8, i8* %186, align 1
  %188 = call i64 @isspacech(i8 signext %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i8*, i8** %11, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  store i32 %193, i32* %19, align 4
  br label %198

194:                                              ; preds = %185
  %195 = load i8*, i8** %11, align 8
  %196 = load i8, i8* %195, align 1
  %197 = call i32 (i32, i8*, i8, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8 signext %196)
  br label %198

198:                                              ; preds = %194, %190
  br label %199

199:                                              ; preds = %198, %184, %183, %182, %181, %180, %171, %160
  br label %234

200:                                              ; preds = %68
  %201 = load i32, i32* %22, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %23, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %203, %200
  %207 = load i32, i32* %21, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load i8*, i8** %11, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  store i32 %212, i32* %19, align 4
  br label %233

213:                                              ; preds = %206, %203
  %214 = load i8*, i8** %11, align 8
  %215 = load i8, i8* %214, align 1
  %216 = call i64 @isspacech(i8 signext %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store i32 1, i32* %20, align 4
  br label %232

219:                                              ; preds = %213
  %220 = load i32, i32* %21, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = load i8*, i8** %11, align 8
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 35
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %298

228:                                              ; preds = %222, %219
  %229 = load i8*, i8** %11, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  store i32 %231, i32* %19, align 4
  br label %232

232:                                              ; preds = %228, %218
  br label %233

233:                                              ; preds = %232, %209
  br label %234

234:                                              ; preds = %233, %199, %153, %132, %108, %95
  %235 = load i32, i32* %19, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = load i8*, i8** %10, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %275

240:                                              ; preds = %237, %234
  %241 = load i32, i32* %21, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %240
  %244 = load i8*, i8** %12, align 8
  %245 = load i8**, i8*** %15, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i32 1
  store i8** %246, i8*** %15, align 8
  store i8* %244, i8** %245, align 8
  %247 = load i32, i32* %17, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %17, align 4
  store i32 1, i32* %21, align 4
  br label %249

249:                                              ; preds = %243, %240
  %250 = load i32, i32* %19, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load i32, i32* %19, align 4
  %254 = trunc i32 %253 to i8
  %255 = load i8*, i8** %12, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %12, align 8
  store i8 %254, i8* %255, align 1
  br label %274

257:                                              ; preds = %249
  %258 = load i8*, i8** %10, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %273

260:                                              ; preds = %257
  br label %261

261:                                              ; preds = %266, %260
  %262 = load i8*, i8** %10, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = load i8*, i8** %10, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %10, align 8
  %269 = load i8, i8* %267, align 1
  %270 = load i8*, i8** %12, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %12, align 8
  store i8 %269, i8* %270, align 1
  br label %261

272:                                              ; preds = %261
  br label %273

273:                                              ; preds = %272, %257
  br label %274

274:                                              ; preds = %273, %252
  br label %293

275:                                              ; preds = %237
  %276 = load i32, i32* %20, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %292

278:                                              ; preds = %275
  %279 = load i8*, i8** %12, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %12, align 8
  store i8 0, i8* %279, align 1
  br label %281

281:                                              ; preds = %286, %278
  %282 = load i8*, i8** %11, align 8
  %283 = load i8, i8* %282, align 1
  %284 = call i64 @isspacech(i8 signext %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load i8*, i8** %11, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %11, align 8
  br label %281

289:                                              ; preds = %281
  %290 = load i8*, i8** %11, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 -1
  store i8* %291, i8** %11, align 8
  store i32 0, i32* %21, align 4
  br label %292

292:                                              ; preds = %289, %275
  br label %293

293:                                              ; preds = %292, %274
  br label %294

294:                                              ; preds = %293
  %295 = load i8*, i8** %11, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %11, align 8
  br label %63

297:                                              ; preds = %63
  br label %298

298:                                              ; preds = %297, %227, %179
  %299 = load i8*, i8** %12, align 8
  store i8 0, i8* %299, align 1
  %300 = load i8**, i8*** %15, align 8
  store i8* null, i8** %300, align 8
  %301 = load i32, i32* %22, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %298
  %304 = load i32, i32* %23, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %303, %298
  %307 = load i32, i32* %18, align 4
  %308 = trunc i32 %307 to i8
  %309 = load i8**, i8*** %15, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i64 -1
  %311 = load i8*, i8** %310, align 8
  %312 = load i8*, i8** %9, align 8
  %313 = call i32 (i32, i8*, i8, ...) @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8 signext %308, i8* %311, i8* %312)
  br label %314

314:                                              ; preds = %306, %303
  %315 = load i32, i32* @env_verbosity, align 4
  %316 = icmp sgt i32 %315, 1
  br i1 %316, label %317, label %342

317:                                              ; preds = %314
  %318 = load i32, i32* @stderr, align 4
  %319 = load i8*, i8** %5, align 8
  %320 = call i32 @fprintf(i32 %318, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %319)
  %321 = load i8**, i8*** %13, align 8
  %322 = getelementptr inbounds i8*, i8** %321, i64 1
  store i8** %322, i8*** %16, align 8
  %323 = load i32, i32* @stderr, align 4
  %324 = load i8**, i8*** %16, align 8
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @fprintf(i32 %323, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %325)
  %327 = load i8**, i8*** %16, align 8
  %328 = getelementptr inbounds i8*, i8** %327, i32 1
  store i8** %328, i8*** %16, align 8
  br label %329

329:                                              ; preds = %338, %317
  %330 = load i8**, i8*** %16, align 8
  %331 = load i8*, i8** %330, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %341

333:                                              ; preds = %329
  %334 = load i32, i32* @stderr, align 4
  %335 = load i8**, i8*** %16, align 8
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @fprintf(i32 %334, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %336)
  br label %338

338:                                              ; preds = %333
  %339 = load i8**, i8*** %16, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i32 1
  store i8** %340, i8*** %16, align 8
  br label %329

341:                                              ; preds = %329
  br label %342

342:                                              ; preds = %341, %314
  %343 = load i8***, i8**** %8, align 8
  %344 = load i8**, i8*** %343, align 8
  %345 = load i32*, i32** %6, align 8
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8*, i8** %344, i64 %347
  store i8** %348, i8*** %16, align 8
  br label %349

349:                                              ; preds = %358, %342
  %350 = load i8**, i8*** %16, align 8
  %351 = load i8*, i8** %350, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %361

353:                                              ; preds = %349
  %354 = load i8**, i8*** %16, align 8
  %355 = load i8*, i8** %354, align 8
  %356 = load i8**, i8*** %15, align 8
  %357 = getelementptr inbounds i8*, i8** %356, i32 1
  store i8** %357, i8*** %15, align 8
  store i8* %355, i8** %356, align 8
  br label %358

358:                                              ; preds = %353
  %359 = load i8**, i8*** %16, align 8
  %360 = getelementptr inbounds i8*, i8** %359, i32 1
  store i8** %360, i8*** %16, align 8
  br label %349

361:                                              ; preds = %349
  %362 = load i8**, i8*** %15, align 8
  store i8* null, i8** %362, align 8
  %363 = load i32, i32* %17, align 4
  %364 = load i32*, i32** %6, align 8
  %365 = load i32, i32* %364, align 4
  %366 = sub nsw i32 %363, %365
  %367 = add nsw i32 %366, 1
  %368 = load i32*, i32** %7, align 8
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %369, %367
  store i32 %370, i32* %368, align 4
  %371 = load i8**, i8*** %13, align 8
  %372 = load i8***, i8**** %8, align 8
  store i8** %371, i8*** %372, align 8
  %373 = load i32*, i32** %6, align 8
  store i32 1, i32* %373, align 4
  br label %374

374:                                              ; preds = %361, %37
  ret void
}

declare dso_local i64 @isspacech(i8 signext) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @expand_vars(i32, i8**, i8**, i8**) #1

declare dso_local i32 @errx(i32, i8*, i8 signext, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
