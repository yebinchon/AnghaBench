; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_prepfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rs/extr_rs.c_prepfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nelem = common dso_local global i32 0, align 4
@maxlen = common dso_local global double 0.000000e+00, align 8
@propgutter = common dso_local global double 0.000000e+00, align 8
@gutter = common dso_local global double 0.000000e+00, align 8
@flags = common dso_local global i32 0, align 4
@MTRANSPOSE = common dso_local global i32 0, align 4
@icols = common dso_local global i32 0, align 4
@orows = common dso_local global i32 0, align 4
@irows = common dso_local global i32 0, align 4
@ocols = common dso_local global i32 0, align 4
@owidth = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"display width %d is less than column width %d\00", align 1
@elem = common dso_local global i8** null, align 8
@endelem = common dso_local global i8** null, align 8
@RECYCLE = common dso_local global i32 0, align 4
@colwidths = common dso_local global double* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@SQUEEZE = common dso_local global i32 0, align 4
@TRANSPOSE = common dso_local global i32 0, align 4
@NOTRIMENDCOL = common dso_local global i32 0, align 4
@RIGHTADJUST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prepfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepfile() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @nelem, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @exit(i32 0) #3
  unreachable

12:                                               ; preds = %0
  %13 = load double, double* @maxlen, align 8
  %14 = load double, double* @propgutter, align 8
  %15 = fmul double %13, %14
  %16 = fdiv double %15, 1.000000e+02
  %17 = load double, double* @gutter, align 8
  %18 = fadd double %17, %16
  store double %18, double* @gutter, align 8
  %19 = load double, double* @maxlen, align 8
  %20 = load double, double* @gutter, align 8
  %21 = fadd double %19, %20
  %22 = fptosi double %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @flags, align 4
  %24 = load i32, i32* @MTRANSPOSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load i32, i32* @icols, align 4
  store i32 %28, i32* @orows, align 4
  %29 = load i32, i32* @irows, align 4
  store i32 %29, i32* @ocols, align 4
  br label %94

30:                                               ; preds = %12
  %31 = load i32, i32* @orows, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %30
  %34 = load i32, i32* @ocols, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load i32, i32* @owidth, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* @ocols, align 4
  %40 = load i32, i32* @ocols, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @owidth, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  store i32 1, i32* @ocols, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i32, i32* @ocols, align 4
  %48 = load i32, i32* @nelem, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @nelem, align 4
  store i32 %51, i32* @ocols, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* @nelem, align 4
  %54 = load i32, i32* @ocols, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32, i32* @nelem, align 4
  %57 = load i32, i32* @ocols, align 4
  %58 = srem i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = add nsw i32 %55, %61
  store i32 %62, i32* @orows, align 4
  br label %93

63:                                               ; preds = %33, %30
  %64 = load i32, i32* @orows, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* @nelem, align 4
  %68 = load i32, i32* @ocols, align 4
  %69 = sdiv i32 %67, %68
  %70 = load i32, i32* @nelem, align 4
  %71 = load i32, i32* @ocols, align 4
  %72 = srem i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = add nsw i32 %69, %75
  store i32 %76, i32* @orows, align 4
  br label %92

77:                                               ; preds = %63
  %78 = load i32, i32* @ocols, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, i32* @nelem, align 4
  %82 = load i32, i32* @orows, align 4
  %83 = sdiv i32 %81, %82
  %84 = load i32, i32* @nelem, align 4
  %85 = load i32, i32* @orows, align 4
  %86 = srem i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = add nsw i32 %83, %89
  store i32 %90, i32* @ocols, align 4
  br label %91

91:                                               ; preds = %80, %77
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %52
  br label %94

94:                                               ; preds = %93, %27
  %95 = load i8**, i8*** @elem, align 8
  %96 = load i32, i32* @orows, align 4
  %97 = load i32, i32* @ocols, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %95, i64 %99
  store i8** %100, i8*** %4, align 8
  br label %101

101:                                              ; preds = %105, %94
  %102 = load i8**, i8*** %4, align 8
  %103 = load i8**, i8*** @endelem, align 8
  %104 = icmp ugt i8** %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i8**, i8*** @elem, align 8
  %107 = load i32, i32* @nelem, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = call i32 @getptrs(i8** %109)
  %111 = load i8**, i8*** @elem, align 8
  %112 = load i32, i32* @orows, align 4
  %113 = load i32, i32* @ocols, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %111, i64 %115
  store i8** %116, i8*** %4, align 8
  br label %101

117:                                              ; preds = %101
  %118 = load i32, i32* @flags, align 4
  %119 = load i32, i32* @RECYCLE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %117
  %123 = load i8**, i8*** @elem, align 8
  %124 = load i32, i32* @nelem, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8** %126, i8*** %1, align 8
  br label %127

127:                                              ; preds = %139, %122
  %128 = load i8**, i8*** %1, align 8
  %129 = load i8**, i8*** %4, align 8
  %130 = icmp ult i8** %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load i8**, i8*** %1, align 8
  %133 = load i32, i32* @nelem, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 0, %134
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %1, align 8
  store i8* %137, i8** %138, align 8
  br label %139

139:                                              ; preds = %131
  %140 = load i8**, i8*** %1, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %141, i8*** %1, align 8
  br label %127

142:                                              ; preds = %127
  %143 = load i8**, i8*** %4, align 8
  %144 = load i8**, i8*** @elem, align 8
  %145 = ptrtoint i8** %143 to i64
  %146 = ptrtoint i8** %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* @nelem, align 4
  br label %150

150:                                              ; preds = %142, %117
  %151 = load i32, i32* @ocols, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 2
  %154 = trunc i64 %153 to i32
  %155 = call i64 @malloc(i32 %154)
  %156 = inttoptr i64 %155 to i16*
  %157 = bitcast i16* %156 to double*
  store double* %157, double** @colwidths, align 8
  %158 = icmp ne double* %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %150
  %160 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %150
  %162 = load i32, i32* @flags, align 4
  %163 = load i32, i32* @SQUEEZE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %255

166:                                              ; preds = %161
  %167 = load i8**, i8*** @elem, align 8
  store i8** %167, i8*** %1, align 8
  %168 = load i32, i32* @flags, align 4
  %169 = load i32, i32* @TRANSPOSE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %214

172:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %210, %172
  %174 = load i32, i32* %2, align 4
  %175 = load i32, i32* @ocols, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %213

177:                                              ; preds = %173
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %198, %177
  %179 = load i8**, i8*** %1, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* @orows, align 4
  %185 = icmp slt i32 %183, %184
  br label %186

186:                                              ; preds = %182, %178
  %187 = phi i1 [ false, %178 ], [ %185, %182 ]
  br i1 %187, label %188, label %201

188:                                              ; preds = %186
  %189 = load i8**, i8*** %1, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i32 1
  store i8** %190, i8*** %1, align 8
  %191 = load i8*, i8** %189, align 8
  %192 = call i32 @strlen(i8* %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %6, align 4
  br label %197

197:                                              ; preds = %195, %188
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %3, align 4
  br label %178

201:                                              ; preds = %186
  %202 = load i32, i32* %6, align 4
  %203 = sitofp i32 %202 to double
  %204 = load double, double* @gutter, align 8
  %205 = fadd double %203, %204
  %206 = load double*, double** @colwidths, align 8
  %207 = load i32, i32* %2, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %206, i64 %208
  store double %205, double* %209, align 8
  br label %210

210:                                              ; preds = %201
  %211 = load i32, i32* %2, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %2, align 4
  br label %173

213:                                              ; preds = %173
  br label %254

214:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %215

215:                                              ; preds = %250, %214
  %216 = load i32, i32* %2, align 4
  %217 = load i32, i32* @ocols, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %253

219:                                              ; preds = %215
  store i32 0, i32* %6, align 4
  %220 = load i32, i32* %2, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %237, %219
  %222 = load i32, i32* %3, align 4
  %223 = load i32, i32* @nelem, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %241

225:                                              ; preds = %221
  %226 = load i8**, i8*** %1, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @strlen(i8* %230)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %225
  %235 = load i32, i32* %7, align 4
  store i32 %235, i32* %6, align 4
  br label %236

236:                                              ; preds = %234, %225
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* @ocols, align 4
  %239 = load i32, i32* %3, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %3, align 4
  br label %221

241:                                              ; preds = %221
  %242 = load i32, i32* %6, align 4
  %243 = sitofp i32 %242 to double
  %244 = load double, double* @gutter, align 8
  %245 = fadd double %243, %244
  %246 = load double*, double** @colwidths, align 8
  %247 = load i32, i32* %2, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds double, double* %246, i64 %248
  store double %245, double* %249, align 8
  br label %250

250:                                              ; preds = %241
  %251 = load i32, i32* %2, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %2, align 4
  br label %215

253:                                              ; preds = %215
  br label %254

254:                                              ; preds = %253, %213
  br label %271

255:                                              ; preds = %161
  store i32 0, i32* %2, align 4
  br label %256

256:                                              ; preds = %267, %255
  %257 = load i32, i32* %2, align 4
  %258 = load i32, i32* @ocols, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = load i32, i32* %5, align 4
  %262 = sitofp i32 %261 to double
  %263 = load double*, double** @colwidths, align 8
  %264 = load i32, i32* %2, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds double, double* %263, i64 %265
  store double %262, double* %266, align 8
  br label %267

267:                                              ; preds = %260
  %268 = load i32, i32* %2, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %2, align 4
  br label %256

270:                                              ; preds = %256
  br label %271

271:                                              ; preds = %270, %254
  %272 = load i32, i32* @flags, align 4
  %273 = load i32, i32* @NOTRIMENDCOL, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %294, label %276

276:                                              ; preds = %271
  %277 = load i32, i32* @flags, align 4
  %278 = load i32, i32* @RIGHTADJUST, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load double, double* @gutter, align 8
  %283 = load double*, double** @colwidths, align 8
  %284 = getelementptr inbounds double, double* %283, i64 0
  %285 = load double, double* %284, align 8
  %286 = fsub double %285, %282
  store double %286, double* %284, align 8
  br label %293

287:                                              ; preds = %276
  %288 = load double*, double** @colwidths, align 8
  %289 = load i32, i32* @ocols, align 4
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds double, double* %288, i64 %291
  store double 0.000000e+00, double* %292, align 8
  br label %293

293:                                              ; preds = %287, %281
  br label %294

294:                                              ; preds = %293, %271
  %295 = load i32, i32* @orows, align 4
  %296 = load i32, i32* @ocols, align 4
  %297 = mul nsw i32 %295, %296
  store i32 %297, i32* %7, align 4
  %298 = load i32, i32* %7, align 4
  %299 = load i32, i32* @nelem, align 4
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %308

301:                                              ; preds = %294
  %302 = load i32, i32* @flags, align 4
  %303 = load i32, i32* @RECYCLE, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i32, i32* %7, align 4
  store i32 %307, i32* @nelem, align 4
  br label %308

308:                                              ; preds = %306, %301, %294
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @warnx(i8*, i32, i32) #2

declare dso_local i32 @getptrs(i8**) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
