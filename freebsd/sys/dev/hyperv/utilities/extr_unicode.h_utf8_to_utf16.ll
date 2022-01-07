; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_unicode.h_utf8_to_utf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_unicode.h_utf8_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNICODE_UTF8_LATIN1_FALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_to_utf16(i32* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %16, align 4
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %13, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %20

20:                                               ; preds = %326, %285, %242, %206, %168, %134, %109, %84, %6
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %329

24:                                               ; preds = %20
  %25 = load i8*, i8** %13, align 8
  %26 = load i64, i64* %14, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %29, 128
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i8*, i8** %13, align 8
  %33 = load i64, i64* %14, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %14, align 8
  %35 = getelementptr inbounds i8, i8* %32, i64 %33
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %17, align 4
  br label %314

38:                                               ; preds = %24
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @UNICODE_UTF8_LATIN1_FALLBACK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 192
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %70, label %56

56:                                               ; preds = %47, %43
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sge i32 %61, 160
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load i8*, i8** %13, align 8
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %14, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %17, align 4
  br label %313

70:                                               ; preds = %56, %47, %38
  %71 = load i8*, i8** %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp slt i32 %75, 192
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load i8*, i8** %13, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp sge i32 %82, 245
  br i1 %83, label %84, label %89

84:                                               ; preds = %77, %70
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  %87 = load i64, i64* %14, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %14, align 8
  br label %20

89:                                               ; preds = %77
  %90 = load i8*, i8** %13, align 8
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp slt i32 %94, 224
  br i1 %95, label %96, label %138

96:                                               ; preds = %89
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 1
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 192
  %108 = icmp eq i32 %107, 128
  br i1 %108, label %114, label %109

109:                                              ; preds = %100, %96
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %14, align 8
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %20

114:                                              ; preds = %100
  %115 = load i8*, i8** %13, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 63
  %121 = shl i32 %120, 6
  %122 = load i8*, i8** %13, align 8
  %123 = load i64, i64* %14, align 8
  %124 = add i64 %123, 1
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 63
  %129 = or i32 %121, %128
  store i32 %129, i32* %17, align 4
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %130, 2
  store i64 %131, i64* %14, align 8
  %132 = load i32, i32* %17, align 4
  %133 = icmp slt i32 %132, 128
  br i1 %133, label %134, label %137

134:                                              ; preds = %114
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %16, align 4
  br label %20

137:                                              ; preds = %114
  br label %311

138:                                              ; preds = %89
  %139 = load i8*, i8** %13, align 8
  %140 = load i64, i64* %14, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp slt i32 %143, 240
  br i1 %144, label %145, label %210

145:                                              ; preds = %138
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %10, align 8
  %148 = sub i64 %147, 2
  %149 = icmp uge i64 %146, %148
  br i1 %149, label %168, label %150

150:                                              ; preds = %145
  %151 = load i8*, i8** %13, align 8
  %152 = load i64, i64* %14, align 8
  %153 = add i64 %152, 1
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, 192
  %158 = icmp eq i32 %157, 128
  br i1 %158, label %159, label %168

159:                                              ; preds = %150
  %160 = load i8*, i8** %13, align 8
  %161 = load i64, i64* %14, align 8
  %162 = add i64 %161, 2
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = and i32 %165, 192
  %167 = icmp eq i32 %166, 128
  br i1 %167, label %173, label %168

168:                                              ; preds = %159, %150, %145
  %169 = load i64, i64* %14, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %14, align 8
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %20

173:                                              ; preds = %159
  %174 = load i8*, i8** %13, align 8
  %175 = load i64, i64* %14, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %178, 15
  %180 = shl i32 %179, 12
  %181 = load i8*, i8** %13, align 8
  %182 = load i64, i64* %14, align 8
  %183 = add i64 %182, 1
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = and i32 %186, 63
  %188 = shl i32 %187, 6
  %189 = or i32 %180, %188
  %190 = load i8*, i8** %13, align 8
  %191 = load i64, i64* %14, align 8
  %192 = add i64 %191, 2
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 63
  %197 = or i32 %189, %196
  store i32 %197, i32* %17, align 4
  %198 = load i64, i64* %14, align 8
  %199 = add i64 %198, 3
  store i64 %199, i64* %14, align 8
  %200 = load i32, i32* %17, align 4
  %201 = icmp slt i32 %200, 2048
  br i1 %201, label %206, label %202

202:                                              ; preds = %173
  %203 = load i32, i32* %17, align 4
  %204 = and i32 %203, 57088
  %205 = icmp eq i32 %204, 55296
  br i1 %205, label %206, label %209

206:                                              ; preds = %202, %173
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  br label %20

209:                                              ; preds = %202
  br label %310

210:                                              ; preds = %138
  %211 = load i64, i64* %14, align 8
  %212 = load i64, i64* %10, align 8
  %213 = sub i64 %212, 3
  %214 = icmp uge i64 %211, %213
  br i1 %214, label %242, label %215

215:                                              ; preds = %210
  %216 = load i8*, i8** %13, align 8
  %217 = load i64, i64* %14, align 8
  %218 = add i64 %217, 1
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = and i32 %221, 192
  %223 = icmp eq i32 %222, 128
  br i1 %223, label %224, label %242

224:                                              ; preds = %215
  %225 = load i8*, i8** %13, align 8
  %226 = load i64, i64* %14, align 8
  %227 = add i64 %226, 2
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = and i32 %230, 192
  %232 = icmp eq i32 %231, 128
  br i1 %232, label %233, label %242

233:                                              ; preds = %224
  %234 = load i8*, i8** %13, align 8
  %235 = load i64, i64* %14, align 8
  %236 = add i64 %235, 3
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = and i32 %239, 192
  %241 = icmp eq i32 %240, 128
  br i1 %241, label %247, label %242

242:                                              ; preds = %233, %224, %215, %210
  %243 = load i64, i64* %14, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %14, align 8
  %245 = load i32, i32* %16, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %16, align 4
  br label %20

247:                                              ; preds = %233
  %248 = load i8*, i8** %13, align 8
  %249 = load i64, i64* %14, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = and i32 %252, 3
  %254 = shl i32 %253, 18
  %255 = load i8*, i8** %13, align 8
  %256 = load i64, i64* %14, align 8
  %257 = add i64 %256, 1
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = and i32 %260, 63
  %262 = shl i32 %261, 12
  %263 = or i32 %254, %262
  %264 = load i8*, i8** %13, align 8
  %265 = load i64, i64* %14, align 8
  %266 = add i64 %265, 2
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = and i32 %269, 63
  %271 = shl i32 %270, 6
  %272 = or i32 %263, %271
  %273 = load i8*, i8** %13, align 8
  %274 = load i64, i64* %14, align 8
  %275 = add i64 %274, 3
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = and i32 %278, 63
  %280 = or i32 %272, %279
  store i32 %280, i32* %18, align 4
  %281 = load i64, i64* %14, align 8
  %282 = add i64 %281, 4
  store i64 %282, i64* %14, align 8
  %283 = load i32, i32* %18, align 4
  %284 = icmp slt i32 %283, 65536
  br i1 %284, label %285, label %288

285:                                              ; preds = %247
  %286 = load i32, i32* %16, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %16, align 4
  br label %20

288:                                              ; preds = %247
  %289 = load i32*, i32** %7, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %303

291:                                              ; preds = %288
  %292 = load i64, i64* %15, align 8
  %293 = load i64, i64* %8, align 8
  %294 = icmp ult i64 %292, %293
  br i1 %294, label %295, label %303

295:                                              ; preds = %291
  %296 = load i32, i32* %18, align 4
  %297 = sub nsw i32 %296, 65536
  %298 = ashr i32 %297, 10
  %299 = or i32 55296, %298
  %300 = load i32*, i32** %7, align 8
  %301 = load i64, i64* %15, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  store i32 %299, i32* %302, align 4
  br label %303

303:                                              ; preds = %295, %291, %288
  %304 = load i64, i64* %15, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %15, align 8
  %306 = load i32, i32* %18, align 4
  %307 = sub nsw i32 %306, 65536
  %308 = and i32 %307, 262143
  %309 = or i32 56320, %308
  store i32 %309, i32* %17, align 4
  br label %310

310:                                              ; preds = %303, %209
  br label %311

311:                                              ; preds = %310, %137
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312, %63
  br label %314

314:                                              ; preds = %313, %31
  %315 = load i32*, i32** %7, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = load i64, i64* %15, align 8
  %319 = load i64, i64* %8, align 8
  %320 = icmp ult i64 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load i32, i32* %17, align 4
  %323 = load i32*, i32** %7, align 8
  %324 = load i64, i64* %15, align 8
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  store i32 %322, i32* %325, align 4
  br label %326

326:                                              ; preds = %321, %317, %314
  %327 = load i64, i64* %15, align 8
  %328 = add i64 %327, 1
  store i64 %328, i64* %15, align 8
  br label %20

329:                                              ; preds = %20
  %330 = load i32*, i32** %12, align 8
  %331 = icmp ne i32* %330, null
  br i1 %331, label %332, label %335

332:                                              ; preds = %329
  %333 = load i32, i32* %16, align 4
  %334 = load i32*, i32** %12, align 8
  store i32 %333, i32* %334, align 4
  br label %335

335:                                              ; preds = %332, %329
  %336 = load i64, i64* %15, align 8
  ret i64 %336
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
