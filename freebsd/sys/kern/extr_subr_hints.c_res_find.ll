; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_hints.c_res_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_hints.c_res_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hintenv_merged = common dso_local global i64 0, align 8
@kenv_lock = common dso_local global i32 0, align 4
@kenvp = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"hint.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@md_envp = common dso_local global i8* null, align 8
@stenv_skip = common dso_local global i32 0, align 4
@kern_envp = common dso_local global i8* null, align 8
@sthints_skip = common dso_local global i32 0, align 4
@static_hints = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"hint.%32[^.].%d.%32[^=]=%127s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"CONFIG: invalid hint '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32*, i8*, i32*, i8*, i8*, i8**, i32*, i32*, i8**, i32*, i8**)* @res_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_find(i8** %0, i32* %1, i32* %2, i8* %3, i32* %4, i8* %5, i8* %6, i8** %7, i32* %8, i32* %9, i8** %10, i32* %11, i8** %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca [32 x i8], align 16
  %32 = alloca i32, align 4
  %33 = alloca [32 x i8], align 16
  %34 = alloca [128 x i8], align 16
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  store i8** %0, i8*** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i8* %3, i8** %18, align 8
  store i32* %4, i32** %19, align 8
  store i8* %5, i8** %20, align 8
  store i8* %6, i8** %21, align 8
  store i8** %7, i8*** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i8** %10, i8*** %25, align 8
  store i32* %11, i32** %26, align 8
  store i8** %12, i8*** %27, align 8
  store i32 130, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %39, align 4
  %40 = load i8**, i8*** %15, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %129

43:                                               ; preds = %13
  store i8* null, i8** %37, align 8
  %44 = load i64, i64* @hintenv_merged, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = call i32 @mtx_lock(i32* @kenv_lock)
  %48 = load i8**, i8*** @kenvp, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %36, align 8
  store i32 0, i32* %29, align 4
  br label %51

51:                                               ; preds = %63, %46
  %52 = load i8*, i8** %36, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i8*, i8** %36, align 8
  %56 = call i64 @strncmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8**, i8*** @kenvp, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %37, align 8
  br label %70

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i8**, i8*** @kenvp, align 8
  %65 = load i32, i32* %29, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %29, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %36, align 8
  br label %51

70:                                               ; preds = %58, %51
  %71 = call i32 @mtx_unlock(i32* @kenv_lock)
  store i32 1, i32* %39, align 4
  br label %121

72:                                               ; preds = %43
  br label %73

73:                                               ; preds = %267, %141, %72
  %74 = load i32, i32* %39, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %28, align 4
  %78 = icmp sge i32 %77, 129
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @ENOENT, align 4
  store i32 %80, i32* %14, align 4
  br label %346

81:                                               ; preds = %76
  %82 = load i32, i32* %28, align 4
  switch i32 %82, label %118 [
    i32 130, label %83
    i32 128, label %92
    i32 129, label %105
  ]

83:                                               ; preds = %81
  %84 = load i32, i32* %28, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %28, align 4
  %86 = load i8*, i8** @md_envp, align 8
  %87 = call i32 @_res_checkenv(i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i8*, i8** @md_envp, align 8
  store i8* %90, i8** %37, align 8
  br label %120

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %81, %91
  %93 = load i32, i32* %28, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %28, align 4
  %95 = load i32, i32* @stenv_skip, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** @kern_envp, align 8
  %99 = call i32 @_res_checkenv(i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i8*, i8** @kern_envp, align 8
  store i8* %102, i8** %37, align 8
  br label %120

103:                                              ; preds = %97, %92
  store i32 1, i32* @stenv_skip, align 4
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %81, %104
  %106 = load i32, i32* %28, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %28, align 4
  %108 = load i32, i32* @sthints_skip, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load i8*, i8** @static_hints, align 8
  %112 = call i32 @_res_checkenv(i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i8*, i8** @static_hints, align 8
  store i8* %115, i8** %37, align 8
  br label %117

116:                                              ; preds = %110, %105
  store i32 1, i32* @sthints_skip, align 4
  br label %117

117:                                              ; preds = %116, %114
  br label %120

118:                                              ; preds = %81
  %119 = load i32, i32* @ENOENT, align 4
  store i32 %119, i32* %14, align 4
  br label %346

120:                                              ; preds = %117, %101, %89
  br label %121

121:                                              ; preds = %120, %70
  %122 = load i8*, i8** %37, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @ENOENT, align 4
  store i32 %125, i32* %14, align 4
  br label %346

126:                                              ; preds = %121
  %127 = load i8*, i8** %37, align 8
  %128 = load i8**, i8*** %15, align 8
  store i8* %127, i8** %128, align 8
  br label %143

129:                                              ; preds = %13
  %130 = load i8**, i8*** %15, align 8
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %37, align 8
  %132 = load i64, i64* @hintenv_merged, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i8*, i8** %37, align 8
  %136 = load i8**, i8*** @kenvp, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp eq i8* %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 1, i32* %39, align 4
  br label %142

141:                                              ; preds = %134, %129
  br label %73

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142, %126
  %144 = load i32, i32* %39, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 @mtx_lock(i32* @kenv_lock)
  store i32 0, i32* %29, align 4
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i8*, i8** %37, align 8
  store i8* %149, i8** %36, align 8
  br label %150

150:                                              ; preds = %258, %148
  %151 = load i8*, i8** %36, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %259

153:                                              ; preds = %150
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load i8*, i8** %36, align 8
  %158 = call i64 @strncmp(i8* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %226

161:                                              ; preds = %153
  %162 = load i8*, i8** %36, align 8
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %31, i64 0, i64 0
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %33, i64 0, i64 0
  %165 = getelementptr inbounds [128 x i8], [128 x i8]* %34, i64 0, i64 0
  %166 = call i32 @sscanf(i8* %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %163, i32* %32, i8* %164, i8* %165)
  store i32 %166, i32* %30, align 4
  %167 = load i32, i32* %30, align 4
  %168 = icmp ne i32 %167, 4
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = load i8*, i8** %36, align 8
  %171 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %170)
  %172 = load i8*, i8** %36, align 8
  %173 = call i8* @strchr(i8* %172, i8 signext 104)
  store i8* %173, i8** %38, align 8
  %174 = load i8*, i8** %38, align 8
  store i8 72, i8* %174, align 1
  br label %226

175:                                              ; preds = %161
  %176 = load i32*, i32** %17, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* %179, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %17, align 8
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %226

189:                                              ; preds = %182, %178, %175
  %190 = load i8*, i8** %18, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i8*, i8** %18, align 8
  %194 = getelementptr inbounds [32 x i8], [32 x i8]* %31, i64 0, i64 0
  %195 = call i64 @strcmp(i8* %193, i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %226

198:                                              ; preds = %192, %189
  %199 = load i32*, i32** %19, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load i32*, i32** %19, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %32, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %226

207:                                              ; preds = %201, %198
  %208 = load i8*, i8** %20, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i8*, i8** %20, align 8
  %212 = getelementptr inbounds [32 x i8], [32 x i8]* %33, i64 0, i64 0
  %213 = call i64 @strcmp(i8* %211, i8* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %226

216:                                              ; preds = %210, %207
  %217 = load i8*, i8** %21, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load i8*, i8** %21, align 8
  %221 = getelementptr inbounds [128 x i8], [128 x i8]* %34, i64 0, i64 0
  %222 = call i64 @strcmp(i8* %220, i8* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %226

225:                                              ; preds = %219, %216
  br label %259

226:                                              ; preds = %224, %215, %206, %197, %188, %169, %160
  %227 = load i32, i32* %39, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %226
  %230 = load i8**, i8*** @kenvp, align 8
  %231 = load i32, i32* %29, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %29, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %230, i64 %233
  %235 = load i8*, i8** %234, align 8
  store i8* %235, i8** %36, align 8
  %236 = load i8*, i8** %36, align 8
  %237 = icmp eq i8* %236, null
  br i1 %237, label %238, label %239

238:                                              ; preds = %229
  br label %259

239:                                              ; preds = %229
  br label %258

240:                                              ; preds = %226
  br label %241

241:                                              ; preds = %246, %240
  %242 = load i8*, i8** %36, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i8*, i8** %36, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %36, align 8
  br label %241

249:                                              ; preds = %241
  %250 = load i8*, i8** %36, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %36, align 8
  %252 = load i8*, i8** %36, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  store i8* null, i8** %36, align 8
  br label %259

257:                                              ; preds = %249
  br label %258

258:                                              ; preds = %257, %239
  br label %150

259:                                              ; preds = %256, %238, %225, %150
  %260 = load i32, i32* %39, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = call i32 @mtx_unlock(i32* @kenv_lock)
  br label %264

264:                                              ; preds = %262, %259
  %265 = load i8*, i8** %36, align 8
  %266 = icmp eq i8* %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  br label %73

268:                                              ; preds = %264
  %269 = load i8*, i8** %36, align 8
  store i8* %269, i8** %35, align 8
  %270 = load i8*, i8** %35, align 8
  %271 = call i8* @strchr(i8* %270, i8 signext 46)
  %272 = getelementptr i8, i8* %271, i64 1
  store i8* %272, i8** %35, align 8
  %273 = load i8**, i8*** %22, align 8
  %274 = icmp ne i8** %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = load i8*, i8** %35, align 8
  %277 = load i8**, i8*** %22, align 8
  store i8* %276, i8** %277, align 8
  br label %278

278:                                              ; preds = %275, %268
  %279 = load i8*, i8** %35, align 8
  %280 = call i8* @strchr(i8* %279, i8 signext 46)
  %281 = getelementptr i8, i8* %280, i64 1
  store i8* %281, i8** %35, align 8
  %282 = load i32*, i32** %23, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %297

284:                                              ; preds = %278
  %285 = load i8**, i8*** %22, align 8
  %286 = icmp ne i8** %285, null
  br i1 %286, label %287, label %297

287:                                              ; preds = %284
  %288 = load i8*, i8** %35, align 8
  %289 = load i8**, i8*** %22, align 8
  %290 = load i8*, i8** %289, align 8
  %291 = ptrtoint i8* %288 to i64
  %292 = ptrtoint i8* %290 to i64
  %293 = sub i64 %291, %292
  %294 = sub nsw i64 %293, 1
  %295 = trunc i64 %294 to i32
  %296 = load i32*, i32** %23, align 8
  store i32 %295, i32* %296, align 4
  br label %297

297:                                              ; preds = %287, %284, %278
  %298 = load i32*, i32** %24, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i32, i32* %32, align 4
  %302 = load i32*, i32** %24, align 8
  store i32 %301, i32* %302, align 4
  br label %303

303:                                              ; preds = %300, %297
  %304 = load i8*, i8** %35, align 8
  %305 = call i8* @strchr(i8* %304, i8 signext 46)
  %306 = getelementptr i8, i8* %305, i64 1
  store i8* %306, i8** %35, align 8
  %307 = load i8**, i8*** %25, align 8
  %308 = icmp ne i8** %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %303
  %310 = load i8*, i8** %35, align 8
  %311 = load i8**, i8*** %25, align 8
  store i8* %310, i8** %311, align 8
  br label %312

312:                                              ; preds = %309, %303
  %313 = load i8*, i8** %35, align 8
  %314 = call i8* @strchr(i8* %313, i8 signext 61)
  %315 = getelementptr i8, i8* %314, i64 1
  store i8* %315, i8** %35, align 8
  %316 = load i32*, i32** %26, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %318, label %331

318:                                              ; preds = %312
  %319 = load i8**, i8*** %25, align 8
  %320 = icmp ne i8** %319, null
  br i1 %320, label %321, label %331

321:                                              ; preds = %318
  %322 = load i8*, i8** %35, align 8
  %323 = load i8**, i8*** %25, align 8
  %324 = load i8*, i8** %323, align 8
  %325 = ptrtoint i8* %322 to i64
  %326 = ptrtoint i8* %324 to i64
  %327 = sub i64 %325, %326
  %328 = sub nsw i64 %327, 1
  %329 = trunc i64 %328 to i32
  %330 = load i32*, i32** %26, align 8
  store i32 %329, i32* %330, align 4
  br label %331

331:                                              ; preds = %321, %318, %312
  %332 = load i8**, i8*** %27, align 8
  %333 = icmp ne i8** %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load i8*, i8** %35, align 8
  %336 = load i8**, i8*** %27, align 8
  store i8* %335, i8** %336, align 8
  br label %337

337:                                              ; preds = %334, %331
  %338 = load i32*, i32** %17, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %340, label %345

340:                                              ; preds = %337
  %341 = load i32*, i32** %16, align 8
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %342, 1
  %344 = load i32*, i32** %17, align 8
  store i32 %343, i32* %344, align 4
  br label %345

345:                                              ; preds = %340, %337
  store i32 0, i32* %14, align 4
  br label %346

346:                                              ; preds = %345, %124, %118, %79
  %347 = load i32, i32* %14, align 4
  ret i32 %347
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @_res_checkenv(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
