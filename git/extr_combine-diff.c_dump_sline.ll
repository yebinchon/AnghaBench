; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_dump_sline.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_dump_sline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sline = type { i64, i8*, i32, %struct.lline* }
%struct.lline = type { i64, i8*, %struct.lline* }

@DIFF_FRAGINFO = common dso_local global i32 0, align 4
@DIFF_FUNCINFO = common dso_local global i32 0, align 4
@DIFF_FILE_NEW = common dso_local global i32 0, align 4
@DIFF_FILE_OLD = common dso_local global i32 0, align 4
@DIFF_CONTEXT = common dso_local global i32 0, align 4
@DIFF_RESET = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@combine_marker = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" +%lu,%lu \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s%s %s%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sline*, i8*, i64, i32, i32, i32)* @dump_sline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_sline(%struct.sline* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sline*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.lline*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca %struct.sline*, align 8
  store %struct.sline* %0, %struct.sline** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  store i64 %36, i64* %13, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 2, %38
  store i64 %39, i64* %14, align 8
  store i64 0, i64* %16, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @DIFF_FRAGINFO, align 4
  %42 = call i8* @diff_get_color(i32 %40, i32 %41)
  store i8* %42, i8** %17, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @DIFF_FUNCINFO, align 4
  %45 = call i8* @diff_get_color(i32 %43, i32 %44)
  store i8* %45, i8** %18, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @DIFF_FILE_NEW, align 4
  %48 = call i8* @diff_get_color(i32 %46, i32 %47)
  store i8* %48, i8** %19, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @DIFF_FILE_OLD, align 4
  %51 = call i8* @diff_get_color(i32 %49, i32 %50)
  store i8* %51, i8** %20, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @DIFF_CONTEXT, align 4
  %54 = call i8* @diff_get_color(i32 %52, i32 %53)
  store i8* %54, i8** %21, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @DIFF_RESET, align 4
  %57 = call i8* @diff_get_color(i32 %55, i32 %56)
  store i8* %57, i8** %22, align 8
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %6
  br label %385

61:                                               ; preds = %6
  br label %62

62:                                               ; preds = %61, %384
  store i8* null, i8** %25, align 8
  store i64 0, i64* %26, align 8
  br label %63

63:                                               ; preds = %93, %62
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ule i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.sline*, %struct.sline** %7, align 8
  %69 = load i64, i64* %16, align 8
  %70 = getelementptr inbounds %struct.sline, %struct.sline* %68, i64 %69
  %71 = getelementptr inbounds %struct.sline, %struct.sline* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %67, %63
  %78 = phi i1 [ false, %63 ], [ %76, %67 ]
  br i1 %78, label %79, label %96

79:                                               ; preds = %77
  %80 = load %struct.sline*, %struct.sline** %7, align 8
  %81 = load i64, i64* %16, align 8
  %82 = getelementptr inbounds %struct.sline, %struct.sline* %80, i64 %81
  %83 = getelementptr inbounds %struct.sline, %struct.sline* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @hunk_comment_line(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.sline*, %struct.sline** %7, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds %struct.sline, %struct.sline* %88, i64 %89
  %91 = getelementptr inbounds %struct.sline, %struct.sline* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %25, align 8
  br label %93

93:                                               ; preds = %87, %79
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %16, align 8
  br label %63

96:                                               ; preds = %77
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %16, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %385

101:                                              ; preds = %96
  %102 = load i64, i64* %16, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %23, align 8
  br label %104

104:                                              ; preds = %119, %101
  %105 = load i64, i64* %23, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp ule i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load %struct.sline*, %struct.sline** %7, align 8
  %110 = load i64, i64* %23, align 8
  %111 = getelementptr inbounds %struct.sline, %struct.sline* %109, i64 %110
  %112 = getelementptr inbounds %struct.sline, %struct.sline* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %13, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %108
  br label %122

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %23, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %23, align 8
  br label %104

122:                                              ; preds = %117, %104
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %23, align 8
  %125 = load i64, i64* %16, align 8
  %126 = sub i64 %124, %125
  store i64 %126, i64* %24, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %23, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i64, i64* %24, align 8
  %132 = add i64 %131, -1
  store i64 %132, i64* %24, align 8
  br label %133

133:                                              ; preds = %130, %123
  %134 = load i32, i32* @context, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %163, label %136

136:                                              ; preds = %133
  %137 = load i64, i64* %16, align 8
  store i64 %137, i64* %27, align 8
  br label %138

138:                                              ; preds = %156, %136
  %139 = load i64, i64* %27, align 8
  %140 = load i64, i64* %23, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load %struct.sline*, %struct.sline** %7, align 8
  %144 = load i64, i64* %27, align 8
  %145 = getelementptr inbounds %struct.sline, %struct.sline* %143, i64 %144
  %146 = getelementptr inbounds %struct.sline, %struct.sline* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %13, align 8
  %149 = sub i64 %148, 1
  %150 = and i64 %147, %149
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %142
  %153 = load i64, i64* %26, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %26, align 8
  br label %155

155:                                              ; preds = %152, %142
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %27, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %27, align 8
  br label %138

159:                                              ; preds = %138
  %160 = load i64, i64* %26, align 8
  %161 = load i64, i64* %24, align 8
  %162 = sub i64 %161, %160
  store i64 %162, i64* %24, align 8
  br label %163

163:                                              ; preds = %159, %133
  %164 = load i8*, i8** %8, align 8
  %165 = load i8*, i8** %17, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %164, i8* %165)
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %174, %163
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load i8, i8* @combine_marker, align 1
  %173 = call i32 @putchar(i8 signext %172)
  br label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %167

177:                                              ; preds = %167
  store i32 0, i32* %15, align 4
  br label %178

178:                                              ; preds = %189, %177
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = load %struct.sline*, %struct.sline** %7, align 8
  %184 = load i64, i64* %16, align 8
  %185 = load i64, i64* %23, align 8
  %186 = load i32, i32* %15, align 4
  %187 = load i64, i64* %26, align 8
  %188 = call i32 @show_parent_lno(%struct.sline* %183, i64 %184, i64 %185, i32 %186, i64 %187)
  br label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  br label %178

192:                                              ; preds = %178
  %193 = load i64, i64* %16, align 8
  %194 = add i64 %193, 1
  %195 = load i64, i64* %24, align 8
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %194, i64 %195)
  store i32 0, i32* %15, align 4
  br label %197

197:                                              ; preds = %204, %192
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp sle i32 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i8, i8* @combine_marker, align 1
  %203 = call i32 @putchar(i8 signext %202)
  br label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %15, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %15, align 4
  br label %197

207:                                              ; preds = %197
  %208 = load i8*, i8** %25, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %263

210:                                              ; preds = %207
  store i32 0, i32* %28, align 4
  store i32 0, i32* %15, align 4
  br label %211

211:                                              ; preds = %235, %210
  %212 = load i32, i32* %15, align 4
  %213 = icmp slt i32 %212, 40
  br i1 %213, label %214, label %238

214:                                              ; preds = %211
  %215 = load i8*, i8** %25, align 8
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = and i32 %220, 255
  store i32 %221, i32* %29, align 4
  %222 = load i32, i32* %29, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %214
  %225 = load i32, i32* %29, align 4
  %226 = icmp eq i32 %225, 10
  br i1 %226, label %227, label %228

227:                                              ; preds = %224, %214
  br label %238

228:                                              ; preds = %224
  %229 = load i32, i32* %29, align 4
  %230 = call i32 @isspace(i32 %229) #3
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %228
  %233 = load i32, i32* %15, align 4
  store i32 %233, i32* %28, align 4
  br label %234

234:                                              ; preds = %232, %228
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %15, align 4
  br label %211

238:                                              ; preds = %227, %211
  %239 = load i32, i32* %28, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load i8*, i8** %22, align 8
  %243 = load i8*, i8** %21, align 8
  %244 = load i8*, i8** %22, align 8
  %245 = load i8*, i8** %18, align 8
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %242, i8* %243, i8* %244, i8* %245)
  br label %247

247:                                              ; preds = %241, %238
  store i32 0, i32* %15, align 4
  br label %248

248:                                              ; preds = %259, %247
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %28, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = load i8*, i8** %25, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = call i32 @putchar(i8 signext %257)
  br label %259

259:                                              ; preds = %252
  %260 = load i32, i32* %15, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %15, align 4
  br label %248

262:                                              ; preds = %248
  br label %263

263:                                              ; preds = %262, %207
  %264 = load i8*, i8** %22, align 8
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %264)
  br label %266

266:                                              ; preds = %375, %344, %263
  %267 = load i64, i64* %16, align 8
  %268 = load i64, i64* %23, align 8
  %269 = icmp ult i64 %267, %268
  br i1 %269, label %270, label %384

270:                                              ; preds = %266
  %271 = load %struct.sline*, %struct.sline** %7, align 8
  %272 = load i64, i64* %16, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %16, align 8
  %274 = getelementptr inbounds %struct.sline, %struct.sline* %271, i64 %272
  store %struct.sline* %274, %struct.sline** %33, align 8
  %275 = load %struct.sline*, %struct.sline** %33, align 8
  %276 = getelementptr inbounds %struct.sline, %struct.sline* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %14, align 8
  %279 = and i64 %277, %278
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %270
  br label %286

282:                                              ; preds = %270
  %283 = load %struct.sline*, %struct.sline** %33, align 8
  %284 = getelementptr inbounds %struct.sline, %struct.sline* %283, i32 0, i32 3
  %285 = load %struct.lline*, %struct.lline** %284, align 8
  br label %286

286:                                              ; preds = %282, %281
  %287 = phi %struct.lline* [ null, %281 ], [ %285, %282 ]
  store %struct.lline* %287, %struct.lline** %30, align 8
  br label %288

288:                                              ; preds = %316, %286
  %289 = load %struct.lline*, %struct.lline** %30, align 8
  %290 = icmp ne %struct.lline* %289, null
  br i1 %290, label %291, label %325

291:                                              ; preds = %288
  %292 = load i8*, i8** %8, align 8
  %293 = load i8*, i8** %20, align 8
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %292, i8* %293)
  store i32 0, i32* %31, align 4
  br label %295

295:                                              ; preds = %313, %291
  %296 = load i32, i32* %31, align 4
  %297 = load i32, i32* %10, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %316

299:                                              ; preds = %295
  %300 = load %struct.lline*, %struct.lline** %30, align 8
  %301 = getelementptr inbounds %struct.lline, %struct.lline* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i32, i32* %31, align 4
  %304 = zext i32 %303 to i64
  %305 = shl i64 1, %304
  %306 = and i64 %302, %305
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %299
  %309 = call i32 @putchar(i8 signext 45)
  br label %312

310:                                              ; preds = %299
  %311 = call i32 @putchar(i8 signext 32)
  br label %312

312:                                              ; preds = %310, %308
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %31, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %31, align 4
  br label %295

316:                                              ; preds = %295
  %317 = load %struct.lline*, %struct.lline** %30, align 8
  %318 = getelementptr inbounds %struct.lline, %struct.lline* %317, i32 0, i32 1
  %319 = load i8*, i8** %318, align 8
  %320 = load i8*, i8** %22, align 8
  %321 = call i32 @show_line_to_eol(i8* %319, i32 -1, i8* %320)
  %322 = load %struct.lline*, %struct.lline** %30, align 8
  %323 = getelementptr inbounds %struct.lline, %struct.lline* %322, i32 0, i32 2
  %324 = load %struct.lline*, %struct.lline** %323, align 8
  store %struct.lline* %324, %struct.lline** %30, align 8
  br label %288

325:                                              ; preds = %288
  %326 = load i64, i64* %9, align 8
  %327 = load i64, i64* %16, align 8
  %328 = icmp ult i64 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %325
  br label %384

330:                                              ; preds = %325
  store i64 1, i64* %32, align 8
  %331 = load i8*, i8** %8, align 8
  %332 = load i32, i32* @stdout, align 4
  %333 = call i32 @fputs(i8* %331, i32 %332)
  %334 = load %struct.sline*, %struct.sline** %33, align 8
  %335 = getelementptr inbounds %struct.sline, %struct.sline* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* %13, align 8
  %338 = sub i64 %337, 1
  %339 = and i64 %336, %338
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %349, label %341

341:                                              ; preds = %330
  %342 = load i32, i32* @context, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %341
  br label %266

345:                                              ; preds = %341
  %346 = load i8*, i8** %21, align 8
  %347 = load i32, i32* @stdout, align 4
  %348 = call i32 @fputs(i8* %346, i32 %347)
  br label %353

349:                                              ; preds = %330
  %350 = load i8*, i8** %19, align 8
  %351 = load i32, i32* @stdout, align 4
  %352 = call i32 @fputs(i8* %350, i32 %351)
  br label %353

353:                                              ; preds = %349, %345
  store i32 0, i32* %31, align 4
  br label %354

354:                                              ; preds = %372, %353
  %355 = load i32, i32* %31, align 4
  %356 = load i32, i32* %10, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %375

358:                                              ; preds = %354
  %359 = load i64, i64* %32, align 8
  %360 = load %struct.sline*, %struct.sline** %33, align 8
  %361 = getelementptr inbounds %struct.sline, %struct.sline* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = and i64 %359, %362
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %358
  %366 = call i32 @putchar(i8 signext 43)
  br label %369

367:                                              ; preds = %358
  %368 = call i32 @putchar(i8 signext 32)
  br label %369

369:                                              ; preds = %367, %365
  %370 = load i64, i64* %32, align 8
  %371 = shl i64 %370, 1
  store i64 %371, i64* %32, align 8
  br label %372

372:                                              ; preds = %369
  %373 = load i32, i32* %31, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %31, align 4
  br label %354

375:                                              ; preds = %354
  %376 = load %struct.sline*, %struct.sline** %33, align 8
  %377 = getelementptr inbounds %struct.sline, %struct.sline* %376, i32 0, i32 1
  %378 = load i8*, i8** %377, align 8
  %379 = load %struct.sline*, %struct.sline** %33, align 8
  %380 = getelementptr inbounds %struct.sline, %struct.sline* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load i8*, i8** %22, align 8
  %383 = call i32 @show_line_to_eol(i8* %378, i32 %381, i8* %382)
  br label %266

384:                                              ; preds = %329, %266
  br label %62

385:                                              ; preds = %60, %100
  ret void
}

declare dso_local i8* @diff_get_color(i32, i32) #1

declare dso_local i64 @hunk_comment_line(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @show_parent_lno(%struct.sline*, i64, i64, i32, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

declare dso_local i32 @show_line_to_eol(i8*, i32, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
