; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_unicode.h_utf16_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_unicode.h_utf16_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf16_to_utf8(i8* %0, i64 %1, i64* %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %301, %6
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %304

21:                                               ; preds = %17
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %25, 128
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %29, 1
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8* null, i8** %7, align 8
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %32
  %35 = phi i8* [ null, %32 ], [ null, %33 ]
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i8
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 %43, i8* %46, align 1
  %47 = sext i8 %43 to i32
  br label %49

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %38
  %50 = phi i32 [ %47, %38 ], [ 0, %48 ]
  %51 = load i64, i64* %14, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %14, align 8
  br label %300

53:                                               ; preds = %21
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %57, 2048
  br i1 %58, label %59, label %106

59:                                               ; preds = %53
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, 2
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i8* null, i8** %7, align 8
  br label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %64
  %67 = phi i8* [ null, %64 ], [ null, %65 ]
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = lshr i64 %74, 6
  %76 = or i64 192, %75
  %77 = trunc i64 %76 to i8
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 %77, i8* %80, align 1
  %81 = sext i8 %77 to i32
  br label %83

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %70
  %84 = phi i32 [ %81, %70 ], [ 0, %82 ]
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %14, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = and i64 %93, 63
  %95 = or i64 128, %94
  %96 = trunc i64 %95 to i8
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 %96, i8* %99, align 1
  %100 = sext i8 %96 to i32
  br label %102

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101, %89
  %103 = phi i32 [ %100, %89 ], [ 0, %101 ]
  %104 = load i64, i64* %14, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %14, align 8
  br label %299

106:                                              ; preds = %53
  %107 = load i64*, i64** %9, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = and i64 %110, 56320
  %112 = icmp eq i64 %111, 55296
  br i1 %112, label %113, label %220

113:                                              ; preds = %106
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub i64 %115, 1
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = load i64*, i64** %9, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = and i64 %122, 56320
  %124 = icmp ne i64 %123, 56320
  br i1 %124, label %125, label %128

125:                                              ; preds = %118, %113
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %301

128:                                              ; preds = %118
  %129 = load i64, i64* %13, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %8, align 8
  %133 = sub i64 %132, 4
  %134 = icmp ugt i64 %131, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i8* null, i8** %7, align 8
  br label %137

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %135
  %138 = phi i8* [ null, %135 ], [ null, %136 ]
  %139 = load i64*, i64** %9, align 8
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = and i64 %142, 1023
  %144 = shl i64 %143, 10
  %145 = load i64*, i64** %9, align 8
  %146 = load i64, i64* %13, align 8
  %147 = add i64 %146, 1
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = and i64 %149, 1023
  %151 = or i64 %144, %150
  %152 = add i64 %151, 65536
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %16, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %137
  %157 = load i32, i32* %16, align 4
  %158 = ashr i32 %157, 18
  %159 = or i32 240, %158
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %7, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8 %160, i8* %163, align 1
  %164 = sext i8 %160 to i32
  br label %166

165:                                              ; preds = %137
  br label %166

166:                                              ; preds = %165, %156
  %167 = phi i32 [ %164, %156 ], [ 0, %165 ]
  %168 = load i64, i64* %14, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %14, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load i32, i32* %16, align 4
  %174 = ashr i32 %173, 12
  %175 = and i32 %174, 63
  %176 = or i32 128, %175
  %177 = trunc i32 %176 to i8
  %178 = load i8*, i8** %7, align 8
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8 %177, i8* %180, align 1
  %181 = sext i8 %177 to i32
  br label %183

182:                                              ; preds = %166
  br label %183

183:                                              ; preds = %182, %172
  %184 = phi i32 [ %181, %172 ], [ 0, %182 ]
  %185 = load i64, i64* %14, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %14, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = load i32, i32* %16, align 4
  %191 = ashr i32 %190, 6
  %192 = and i32 %191, 63
  %193 = or i32 128, %192
  %194 = trunc i32 %193 to i8
  %195 = load i8*, i8** %7, align 8
  %196 = load i64, i64* %14, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8 %194, i8* %197, align 1
  %198 = sext i8 %194 to i32
  br label %200

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %199, %189
  %201 = phi i32 [ %198, %189 ], [ 0, %199 ]
  %202 = load i64, i64* %14, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %14, align 8
  %204 = load i8*, i8** %7, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %200
  %207 = load i32, i32* %16, align 4
  %208 = and i32 %207, 63
  %209 = or i32 128, %208
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %7, align 8
  %212 = load i64, i64* %14, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8 %210, i8* %213, align 1
  %214 = sext i8 %210 to i32
  br label %216

215:                                              ; preds = %200
  br label %216

216:                                              ; preds = %215, %206
  %217 = phi i32 [ %214, %206 ], [ 0, %215 ]
  %218 = load i64, i64* %14, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %14, align 8
  br label %298

220:                                              ; preds = %106
  %221 = load i64*, i64** %9, align 8
  %222 = load i64, i64* %13, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = and i64 %224, 56320
  %226 = icmp eq i64 %225, 56320
  br i1 %226, label %227, label %230

227:                                              ; preds = %220
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %15, align 4
  br label %297

230:                                              ; preds = %220
  %231 = load i64, i64* %14, align 8
  %232 = load i64, i64* %8, align 8
  %233 = sub i64 %232, 3
  %234 = icmp ugt i64 %231, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  store i8* null, i8** %7, align 8
  br label %237

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236, %235
  %238 = phi i8* [ null, %235 ], [ null, %236 ]
  %239 = load i8*, i8** %7, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %253

241:                                              ; preds = %237
  %242 = load i64*, i64** %9, align 8
  %243 = load i64, i64* %13, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = lshr i64 %245, 12
  %247 = or i64 224, %246
  %248 = trunc i64 %247 to i8
  %249 = load i8*, i8** %7, align 8
  %250 = load i64, i64* %14, align 8
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8 %248, i8* %251, align 1
  %252 = sext i8 %248 to i32
  br label %254

253:                                              ; preds = %237
  br label %254

254:                                              ; preds = %253, %241
  %255 = phi i32 [ %252, %241 ], [ 0, %253 ]
  %256 = load i64, i64* %14, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %14, align 8
  %258 = load i8*, i8** %7, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %273

260:                                              ; preds = %254
  %261 = load i64*, i64** %9, align 8
  %262 = load i64, i64* %13, align 8
  %263 = getelementptr inbounds i64, i64* %261, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = lshr i64 %264, 6
  %266 = and i64 %265, 63
  %267 = or i64 128, %266
  %268 = trunc i64 %267 to i8
  %269 = load i8*, i8** %7, align 8
  %270 = load i64, i64* %14, align 8
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8 %268, i8* %271, align 1
  %272 = sext i8 %268 to i32
  br label %274

273:                                              ; preds = %254
  br label %274

274:                                              ; preds = %273, %260
  %275 = phi i32 [ %272, %260 ], [ 0, %273 ]
  %276 = load i64, i64* %14, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %14, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %292

280:                                              ; preds = %274
  %281 = load i64*, i64** %9, align 8
  %282 = load i64, i64* %13, align 8
  %283 = getelementptr inbounds i64, i64* %281, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = and i64 %284, 63
  %286 = or i64 128, %285
  %287 = trunc i64 %286 to i8
  %288 = load i8*, i8** %7, align 8
  %289 = load i64, i64* %14, align 8
  %290 = getelementptr inbounds i8, i8* %288, i64 %289
  store i8 %287, i8* %290, align 1
  %291 = sext i8 %287 to i32
  br label %293

292:                                              ; preds = %274
  br label %293

293:                                              ; preds = %292, %280
  %294 = phi i32 [ %291, %280 ], [ 0, %292 ]
  %295 = load i64, i64* %14, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %14, align 8
  br label %297

297:                                              ; preds = %293, %227
  br label %298

298:                                              ; preds = %297, %216
  br label %299

299:                                              ; preds = %298, %102
  br label %300

300:                                              ; preds = %299, %49
  br label %301

301:                                              ; preds = %300, %125
  %302 = load i64, i64* %13, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %13, align 8
  br label %17

304:                                              ; preds = %17
  %305 = load i32*, i32** %12, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i32, i32* %15, align 4
  %309 = load i32*, i32** %12, align 8
  store i32 %308, i32* %309, align 4
  br label %310

310:                                              ; preds = %307, %304
  %311 = load i64, i64* %14, align 8
  ret i64 %311
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
