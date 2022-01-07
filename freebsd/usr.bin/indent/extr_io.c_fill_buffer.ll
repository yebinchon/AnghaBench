; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input = common dso_local global i32* null, align 8
@bp_save = common dso_local global i8* null, align 8
@buf_ptr = common dso_local global i8* null, align 8
@be_save = common dso_local global i8* null, align 8
@buf_end = common dso_local global i8* null, align 8
@in_buffer = common dso_local global i8* null, align 8
@in_buffer_limit = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"input line too long\00", align 1
@EOF = common dso_local global i32 0, align 4
@had_eof = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"/**INDENT**\00", align 1
@s_com = common dso_local global i64 0, align 8
@e_com = common dso_local global i64 0, align 8
@s_lab = common dso_local global i64 0, align 8
@e_lab = common dso_local global i64 0, align 8
@s_code = common dso_local global i64 0, align 8
@e_code = common dso_local global i64 0, align 8
@inhibit_formatting = common dso_local global i32 0, align 4
@n_real_blanklines = common dso_local global i64 0, align 8
@postfix_blankline_requested = common dso_local global i64 0, align 8
@prefix_blankline_requested = common dso_local global i64 0, align 8
@suppress_blanklines = common dso_local global i32 0, align 4
@output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_buffer() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32*, i32** @input, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i8*, i8** @bp_save, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %0
  %11 = load i8*, i8** @bp_save, align 8
  store i8* %11, i8** @buf_ptr, align 8
  %12 = load i8*, i8** @be_save, align 8
  store i8* %12, i8** @buf_end, align 8
  store i8* null, i8** @be_save, align 8
  store i8* null, i8** @bp_save, align 8
  %13 = load i8*, i8** @buf_ptr, align 8
  %14 = load i8*, i8** @buf_end, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %326

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %0
  %19 = load i8*, i8** @in_buffer, align 8
  store i8* %19, i8** %1, align 8
  br label %20

20:                                               ; preds = %78, %18
  %21 = load i8*, i8** %1, align 8
  %22 = load i8*, i8** @in_buffer_limit, align 8
  %23 = icmp uge i8* %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load i8*, i8** @in_buffer_limit, align 8
  %26 = load i8*, i8** @in_buffer, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = mul nsw i64 %29, 2
  %31 = add nsw i64 %30, 10
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i8*, i8** %1, align 8
  %34 = load i8*, i8** @in_buffer, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i8*, i8** @in_buffer, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i8* @realloc(i8* %39, i32 %40)
  store i8* %41, i8** @in_buffer, align 8
  %42 = load i8*, i8** @in_buffer, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %24
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %24
  %47 = load i8*, i8** @in_buffer, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %1, align 8
  %51 = load i8*, i8** @in_buffer, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 -2
  store i8* %55, i8** @in_buffer_limit, align 8
  br label %56

56:                                               ; preds = %46, %20
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @getc(i32* %57)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* @EOF, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %1, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %1, align 8
  store i8 32, i8* %62, align 1
  %64 = load i8*, i8** %1, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %1, align 8
  store i8 10, i8* %64, align 1
  store i32 1, i32* @had_eof, align 4
  br label %79

66:                                               ; preds = %56
  %67 = load i32, i32* %2, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %2, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %1, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %1, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %79

78:                                               ; preds = %74
  br label %20

79:                                               ; preds = %77, %61
  %80 = load i8*, i8** @in_buffer, align 8
  store i8* %80, i8** @buf_ptr, align 8
  %81 = load i8*, i8** %1, align 8
  store i8* %81, i8** @buf_end, align 8
  %82 = load i8*, i8** %1, align 8
  %83 = load i8*, i8** @in_buffer, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = icmp sgt i64 %86, 2
  br i1 %87, label %88, label %309

88:                                               ; preds = %79
  %89 = load i8*, i8** %1, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -2
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 47
  br i1 %93, label %94, label %309

94:                                               ; preds = %88
  %95 = load i8*, i8** %1, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 -3
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 42
  br i1 %99, label %100, label %309

100:                                              ; preds = %94
  %101 = load i8*, i8** @in_buffer, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 73
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i8*, i8** @in_buffer, align 8
  %108 = call i64 @strncmp(i8* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  call void @fill_buffer()
  br label %308

111:                                              ; preds = %106, %100
  store i32 0, i32* %6, align 4
  %112 = load i8*, i8** @in_buffer, align 8
  store i8* %112, i8** %1, align 8
  br label %113

113:                                              ; preds = %125, %111
  %114 = load i8*, i8** %1, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 32
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %1, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 9
  br label %123

123:                                              ; preds = %118, %113
  %124 = phi i1 [ true, %113 ], [ %122, %118 ]
  br i1 %124, label %125, label %128

125:                                              ; preds = %123
  %126 = load i8*, i8** %1, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %1, align 8
  br label %113

128:                                              ; preds = %123
  %129 = load i8*, i8** %1, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 47
  br i1 %132, label %133, label %307

133:                                              ; preds = %128
  %134 = load i8*, i8** %1, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 42
  br i1 %138, label %139, label %307

139:                                              ; preds = %133
  %140 = load i8*, i8** %1, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  store i8* %141, i8** %1, align 8
  br label %142

142:                                              ; preds = %154, %139
  %143 = load i8*, i8** %1, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 32
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load i8*, i8** %1, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 9
  br label %152

152:                                              ; preds = %147, %142
  %153 = phi i1 [ true, %142 ], [ %151, %147 ]
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i8*, i8** %1, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %1, align 8
  br label %142

157:                                              ; preds = %152
  %158 = load i8*, i8** %1, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 73
  br i1 %162, label %163, label %306

163:                                              ; preds = %157
  %164 = load i8*, i8** %1, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 78
  br i1 %168, label %169, label %306

169:                                              ; preds = %163
  %170 = load i8*, i8** %1, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 68
  br i1 %174, label %175, label %306

175:                                              ; preds = %169
  %176 = load i8*, i8** %1, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 3
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 69
  br i1 %180, label %181, label %306

181:                                              ; preds = %175
  %182 = load i8*, i8** %1, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 4
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 78
  br i1 %186, label %187, label %306

187:                                              ; preds = %181
  %188 = load i8*, i8** %1, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 5
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 84
  br i1 %192, label %193, label %306

193:                                              ; preds = %187
  %194 = load i8*, i8** %1, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 6
  store i8* %195, i8** %1, align 8
  br label %196

196:                                              ; preds = %208, %193
  %197 = load i8*, i8** %1, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 32
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load i8*, i8** %1, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 9
  br label %206

206:                                              ; preds = %201, %196
  %207 = phi i1 [ true, %196 ], [ %205, %201 ]
  br i1 %207, label %208, label %211

208:                                              ; preds = %206
  %209 = load i8*, i8** %1, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %1, align 8
  br label %196

211:                                              ; preds = %206
  %212 = load i8*, i8** %1, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 42
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 1, i32* %6, align 4
  br label %248

217:                                              ; preds = %211
  %218 = load i8*, i8** %1, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 79
  br i1 %221, label %222, label %247

222:                                              ; preds = %217
  %223 = load i8*, i8** %1, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %1, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 78
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load i8*, i8** %1, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %1, align 8
  store i32 1, i32* %6, align 4
  br label %246

231:                                              ; preds = %222
  %232 = load i8*, i8** %1, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 70
  br i1 %235, label %236, label %245

236:                                              ; preds = %231
  %237 = load i8*, i8** %1, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %1, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 70
  br i1 %241, label %242, label %245

242:                                              ; preds = %236
  %243 = load i8*, i8** %1, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %1, align 8
  store i32 2, i32* %6, align 4
  br label %245

245:                                              ; preds = %242, %236, %231
  br label %246

246:                                              ; preds = %245, %228
  br label %247

247:                                              ; preds = %246, %217
  br label %248

248:                                              ; preds = %247, %216
  br label %249

249:                                              ; preds = %261, %248
  %250 = load i8*, i8** %1, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 32
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load i8*, i8** %1, align 8
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 9
  br label %259

259:                                              ; preds = %254, %249
  %260 = phi i1 [ true, %249 ], [ %258, %254 ]
  br i1 %260, label %261, label %264

261:                                              ; preds = %259
  %262 = load i8*, i8** %1, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %1, align 8
  br label %249

264:                                              ; preds = %259
  %265 = load i8*, i8** %1, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 42
  br i1 %269, label %270, label %305

270:                                              ; preds = %264
  %271 = load i8*, i8** %1, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 1
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %274, 47
  br i1 %275, label %276, label %305

276:                                              ; preds = %270
  %277 = load i8*, i8** %1, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 2
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 10
  br i1 %281, label %282, label %305

282:                                              ; preds = %276
  %283 = load i32, i32* %6, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %305

285:                                              ; preds = %282
  %286 = load i64, i64* @s_com, align 8
  %287 = load i64, i64* @e_com, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %297, label %289

289:                                              ; preds = %285
  %290 = load i64, i64* @s_lab, align 8
  %291 = load i64, i64* @e_lab, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %297, label %293

293:                                              ; preds = %289
  %294 = load i64, i64* @s_code, align 8
  %295 = load i64, i64* @e_code, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %293, %289, %285
  %298 = call i32 (...) @dump_line()
  br label %299

299:                                              ; preds = %297, %293
  %300 = load i32, i32* %6, align 4
  %301 = sub nsw i32 %300, 1
  store i32 %301, i32* @inhibit_formatting, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %299
  store i64 0, i64* @n_real_blanklines, align 8
  store i64 0, i64* @postfix_blankline_requested, align 8
  store i64 0, i64* @prefix_blankline_requested, align 8
  store i32 1, i32* @suppress_blanklines, align 4
  br label %304

304:                                              ; preds = %303, %299
  br label %305

305:                                              ; preds = %304, %282, %276, %270, %264
  br label %306

306:                                              ; preds = %305, %187, %181, %175, %169, %163, %157
  br label %307

307:                                              ; preds = %306, %133, %128
  br label %308

308:                                              ; preds = %307, %110
  br label %309

309:                                              ; preds = %308, %94, %88, %79
  %310 = load i32, i32* @inhibit_formatting, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %326

312:                                              ; preds = %309
  %313 = load i8*, i8** @in_buffer, align 8
  store i8* %313, i8** %1, align 8
  br label %314

314:                                              ; preds = %319, %312
  %315 = load i8*, i8** %1, align 8
  %316 = load i8, i8* %315, align 1
  %317 = load i32, i32* @output, align 4
  %318 = call i32 @putc(i8 signext %316, i32 %317)
  br label %319

319:                                              ; preds = %314
  %320 = load i8*, i8** %1, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %1, align 8
  %322 = load i8, i8* %320, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp ne i32 %323, 10
  br i1 %324, label %314, label %325

325:                                              ; preds = %319
  br label %326

326:                                              ; preds = %16, %325, %309
  ret void
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @dump_line(...) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
