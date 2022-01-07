; ModuleID = '/home/carl/AnghaBench/git/extr_color.c_color_parse_mem.c'
source_filename = "/home/carl/AnghaBench/git/extr_color.c_color_parse_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color = type { i64, i64 }

@COLOR_MAXLEN = common dso_local global i32 0, align 4
@COLOR_UNSPECIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GIT_COLOR_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"color parsing ran out of space\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid color value: %.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @color_parse_mem(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.color, align 8
  %13 = alloca %struct.color, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.color, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @COLOR_MAXLEN, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %27 = getelementptr inbounds %struct.color, %struct.color* %12, i32 0, i32 0
  %28 = load i64, i64* @COLOR_UNSPECIFIED, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.color, %struct.color* %12, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.color, %struct.color* %13, i32 0, i32 0
  %31 = load i64, i64* @COLOR_UNSPECIFIED, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.color, %struct.color* %13, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %43, %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isspace(i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %9, align 4
  br label %33

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  store i32 0, i32* %4, align 4
  br label %311

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @strncasecmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* @GIT_COLOR_RESET, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (i8*, i32, i8*, ...) @xsnprintf(i8* %60, i32 %66, i8* %69)
  store i32 0, i32* %4, align 4
  br label %311

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %153, %137, %129, %71
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %154

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  store i8* %76, i8** %14, align 8
  %77 = getelementptr inbounds %struct.color, %struct.color* %15, i32 0, i32 0
  %78 = load i64, i64* @COLOR_UNSPECIFIED, align 8
  store i64 %78, i64* %77, align 8
  %79 = getelementptr inbounds %struct.color, %struct.color* %15, i32 0, i32 1
  store i64 0, i64* %79, align 8
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %94, %75
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i8*, i8** %14, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @isspace(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %83, %80
  %93 = phi i1 [ false, %80 ], [ %91, %83 ]
  br i1 %93, label %94, label %99

94:                                               ; preds = %92
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %9, align 4
  br label %80

99:                                               ; preds = %92
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8* %103, i8** %8, align 8
  br label %104

104:                                              ; preds = %114, %99
  %105 = load i32, i32* %9, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = call i64 @isspace(i8 signext %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %107, %104
  %113 = phi i1 [ false, %104 ], [ %111, %107 ]
  br i1 %113, label %114, label %119

114:                                              ; preds = %112
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %9, align 4
  br label %104

119:                                              ; preds = %112
  %120 = load i8*, i8** %14, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @parse_color(%struct.color* %15, i8* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.color, %struct.color* %12, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @COLOR_UNSPECIFIED, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = bitcast %struct.color* %12 to i8*
  %131 = bitcast %struct.color* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 16, i1 false)
  br label %72

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.color, %struct.color* %13, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @COLOR_UNSPECIFIED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = bitcast %struct.color* %13 to i8*
  %139 = bitcast %struct.color* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 16, i1 false)
  br label %72

140:                                              ; preds = %132
  br label %306

141:                                              ; preds = %119
  %142 = load i8*, i8** %14, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @parse_attr(i8* %142, i32 %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp sle i32 0, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i32, i32* %16, align 4
  %149 = shl i32 1, %148
  %150 = load i32, i32* %11, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %153

152:                                              ; preds = %141
  br label %306

153:                                              ; preds = %147
  br label %72

154:                                              ; preds = %72
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = call i32 @color_empty(%struct.color* %12)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = call i32 @color_empty(%struct.color* %13)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %295, label %163

163:                                              ; preds = %160, %157, %154
  store i32 0, i32* %18, align 4
  br label %164

164:                                              ; preds = %163
  %165 = load i8*, i8** %7, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = icmp eq i8* %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = call i32 (i8*, ...) bitcast (i32 (...)* @BUG to i32 (i8*, ...)*)(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %164
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %7, align 8
  store i8 27, i8* %171, align 1
  br label %173

173:                                              ; preds = %170
  br label %174

174:                                              ; preds = %173
  %175 = load i8*, i8** %7, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = icmp eq i8* %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call i32 (i8*, ...) bitcast (i32 (...)* @BUG to i32 (i8*, ...)*)(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %174
  %181 = load i8*, i8** %7, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %7, align 8
  store i8 91, i8* %181, align 1
  br label %183

183:                                              ; preds = %180
  store i32 0, i32* %19, align 4
  br label %184

184:                                              ; preds = %227, %183
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %230

187:                                              ; preds = %184
  %188 = load i32, i32* %19, align 4
  %189 = shl i32 1, %188
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %20, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %187
  br label %227

195:                                              ; preds = %187
  %196 = load i32, i32* %20, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %11, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %18, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %18, align 4
  %202 = icmp ne i32 %200, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203
  %205 = load i8*, i8** %7, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = icmp eq i8* %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = call i32 (i8*, ...) bitcast (i32 (...)* @BUG to i32 (i8*, ...)*)(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %204
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %7, align 8
  store i8 59, i8* %211, align 1
  br label %213

213:                                              ; preds = %210
  br label %214

214:                                              ; preds = %213, %195
  %215 = load i8*, i8** %7, align 8
  %216 = load i8*, i8** %10, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = ptrtoint i8* %216 to i64
  %219 = ptrtoint i8* %217 to i64
  %220 = sub i64 %218, %219
  %221 = trunc i64 %220 to i32
  %222 = load i32, i32* %19, align 4
  %223 = call i32 (i8*, i32, i8*, ...) @xsnprintf(i8* %215, i32 %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %222)
  %224 = load i8*, i8** %7, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %7, align 8
  br label %227

227:                                              ; preds = %214, %194
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %184

230:                                              ; preds = %184
  %231 = call i32 @color_empty(%struct.color* %12)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %257, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %18, align 4
  %236 = icmp ne i32 %234, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %233
  br label %238

238:                                              ; preds = %237
  %239 = load i8*, i8** %7, align 8
  %240 = load i8*, i8** %10, align 8
  %241 = icmp eq i8* %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = call i32 (i8*, ...) bitcast (i32 (...)* @BUG to i32 (i8*, ...)*)(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %238
  %245 = load i8*, i8** %7, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %7, align 8
  store i8 59, i8* %245, align 1
  br label %247

247:                                              ; preds = %244
  br label %248

248:                                              ; preds = %247, %233
  %249 = load i8*, i8** %7, align 8
  %250 = load i8*, i8** %10, align 8
  %251 = load i8*, i8** %7, align 8
  %252 = ptrtoint i8* %250 to i64
  %253 = ptrtoint i8* %251 to i64
  %254 = sub i64 %252, %253
  %255 = trunc i64 %254 to i32
  %256 = call i8* @color_output(i8* %249, i32 %255, %struct.color* %12, i8 signext 51)
  store i8* %256, i8** %7, align 8
  br label %257

257:                                              ; preds = %248, %230
  %258 = call i32 @color_empty(%struct.color* %13)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %284, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* %18, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %18, align 4
  %263 = icmp ne i32 %261, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %260
  br label %265

265:                                              ; preds = %264
  %266 = load i8*, i8** %7, align 8
  %267 = load i8*, i8** %10, align 8
  %268 = icmp eq i8* %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = call i32 (i8*, ...) bitcast (i32 (...)* @BUG to i32 (i8*, ...)*)(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %271

271:                                              ; preds = %269, %265
  %272 = load i8*, i8** %7, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %7, align 8
  store i8 59, i8* %272, align 1
  br label %274

274:                                              ; preds = %271
  br label %275

275:                                              ; preds = %274, %260
  %276 = load i8*, i8** %7, align 8
  %277 = load i8*, i8** %10, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = ptrtoint i8* %277 to i64
  %280 = ptrtoint i8* %278 to i64
  %281 = sub i64 %279, %280
  %282 = trunc i64 %281 to i32
  %283 = call i8* @color_output(i8* %276, i32 %282, %struct.color* %13, i8 signext 52)
  store i8* %283, i8** %7, align 8
  br label %284

284:                                              ; preds = %275, %257
  br label %285

285:                                              ; preds = %284
  %286 = load i8*, i8** %7, align 8
  %287 = load i8*, i8** %10, align 8
  %288 = icmp eq i8* %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = call i32 (i8*, ...) bitcast (i32 (...)* @BUG to i32 (i8*, ...)*)(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %285
  %292 = load i8*, i8** %7, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %7, align 8
  store i8 109, i8* %292, align 1
  br label %294

294:                                              ; preds = %291
  br label %295

295:                                              ; preds = %294, %160
  br label %296

296:                                              ; preds = %295
  %297 = load i8*, i8** %7, align 8
  %298 = load i8*, i8** %10, align 8
  %299 = icmp eq i8* %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  %301 = call i32 (i8*, ...) bitcast (i32 (...)* @BUG to i32 (i8*, ...)*)(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %302

302:                                              ; preds = %300, %296
  %303 = load i8*, i8** %7, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %7, align 8
  store i8 0, i8* %303, align 1
  br label %305

305:                                              ; preds = %302
  store i32 0, i32* %4, align 4
  br label %311

306:                                              ; preds = %152, %140
  %307 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %308 = load i32, i32* %6, align 4
  %309 = load i8*, i8** %5, align 8
  %310 = call i32 @error(i32 %307, i32 %308, i8* %309)
  store i32 %310, i32* %4, align 4
  br label %311

311:                                              ; preds = %306, %305, %59, %51
  %312 = load i32, i32* %4, align 4
  ret i32 %312
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @parse_color(%struct.color*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_attr(i8*, i32) #1

declare dso_local i32 @color_empty(%struct.color*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i8* @color_output(i8*, i32, %struct.color*, i8 signext) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
