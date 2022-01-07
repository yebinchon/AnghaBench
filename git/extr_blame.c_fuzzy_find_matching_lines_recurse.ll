; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_fuzzy_find_matching_lines_recurse.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_fuzzy_find_matching_lines_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fingerprint = type { i32 }
%struct.line_number_mapping = type { i32 }

@CERTAINTY_NOT_CALCULATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.fingerprint*, %struct.fingerprint*, i32*, i32*, i32*, i32*, i32, i32, %struct.line_number_mapping*)* @fuzzy_find_matching_lines_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuzzy_find_matching_lines_recurse(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fingerprint* %4, %struct.fingerprint* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32 %10, i32 %11, %struct.line_number_mapping* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fingerprint*, align 8
  %19 = alloca %struct.fingerprint*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.line_number_mapping*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store %struct.fingerprint* %4, %struct.fingerprint** %18, align 8
  store %struct.fingerprint* %5, %struct.fingerprint** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store %struct.line_number_mapping* %12, %struct.line_number_mapping** %26, align 8
  store i32 -1, i32* %36, align 4
  store i32 -1, i32* %37, align 4
  store i32 0, i32* %27, align 4
  br label %39

39:                                               ; preds = %72, %13
  %40 = load i32, i32* %27, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %39
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %27, align 4
  %48 = load %struct.fingerprint*, %struct.fingerprint** %18, align 8
  %49 = load %struct.fingerprint*, %struct.fingerprint** %19, align 8
  %50 = load i32*, i32** %20, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = load i32*, i32** %22, align 8
  %53 = load i32*, i32** %23, align 8
  %54 = load i32, i32* %24, align 4
  %55 = load %struct.line_number_mapping*, %struct.line_number_mapping** %26, align 8
  %56 = call i32 @find_best_line_matches(i32 %44, i32 %45, i32 %46, i32 %47, %struct.fingerprint* %48, %struct.fingerprint* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32 %54, %struct.line_number_mapping* %55)
  %57 = load i32*, i32** %21, align 8
  %58 = load i32, i32* %27, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %37, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %43
  %65 = load i32*, i32** %21, align 8
  %66 = load i32, i32* %27, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %37, align 4
  %70 = load i32, i32* %27, align 4
  store i32 %70, i32* %36, align 4
  br label %71

71:                                               ; preds = %64, %43
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %27, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %27, align 4
  br label %39

75:                                               ; preds = %39
  %76 = load i32, i32* %36, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %310

79:                                               ; preds = %75
  %80 = load i32*, i32** %23, align 8
  %81 = load i32, i32* %36, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %35, align 4
  %85 = load %struct.fingerprint*, %struct.fingerprint** %18, align 8
  %86 = load i32, i32* %35, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %85, i64 %87
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %88, i64 %91
  %93 = load %struct.fingerprint*, %struct.fingerprint** %19, align 8
  %94 = load i32, i32* %36, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %93, i64 %95
  %97 = call i32 @fingerprint_subtract(%struct.fingerprint* %92, %struct.fingerprint* %96)
  %98 = load i32, i32* %36, align 4
  %99 = load i32, i32* %25, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %28, align 4
  %101 = load i32, i32* %36, align 4
  %102 = load i32, i32* %25, align 4
  %103 = add nsw i32 %101, %102
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %29, align 4
  %105 = load i32, i32* %28, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %79
  store i32 0, i32* %28, align 4
  br label %108

108:                                              ; preds = %107, %79
  %109 = load i32, i32* %29, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* %17, align 4
  store i32 %113, i32* %29, align 4
  br label %114

114:                                              ; preds = %112, %108
  %115 = load i32, i32* %28, align 4
  store i32 %115, i32* %27, align 4
  br label %116

116:                                              ; preds = %146, %114
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %29, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %116
  %121 = load i32, i32* %27, align 4
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %121, %122
  %124 = load %struct.line_number_mapping*, %struct.line_number_mapping** %26, align 8
  %125 = call i32 @map_line_number(i32 %123, %struct.line_number_mapping* %124)
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %38, align 4
  %128 = load i32, i32* %35, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* %38, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @abs(i32 %132) #3
  %134 = load i32, i32* %24, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %120
  br label %146

137:                                              ; preds = %120
  %138 = load i32*, i32** %20, align 8
  %139 = load i32, i32* %35, align 4
  %140 = load i32, i32* %14, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* %27, align 4
  %143 = load i32, i32* %38, align 4
  %144 = load i32, i32* %24, align 4
  %145 = call i32* @get_similarity(i32* %138, i32 %141, i32 %142, i32 %143, i32 %144)
  store i32 -1, i32* %145, align 4
  br label %146

146:                                              ; preds = %137, %136
  %147 = load i32, i32* %27, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %27, align 4
  br label %116

149:                                              ; preds = %116
  %150 = load i32, i32* %36, align 4
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %27, align 4
  br label %152

152:                                              ; preds = %186, %149
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %28, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %189

156:                                              ; preds = %152
  %157 = load i32*, i32** %21, align 8
  %158 = load i32, i32* %27, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %156
  %164 = load i32*, i32** %23, align 8
  %165 = load i32, i32* %27, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %35, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %179, label %171

171:                                              ; preds = %163
  %172 = load i32*, i32** %22, align 8
  %173 = load i32, i32* %27, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %35, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %171, %163
  %180 = load i32, i32* @CERTAINTY_NOT_CALCULATED, align 4
  %181 = load i32*, i32** %21, align 8
  %182 = load i32, i32* %27, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %180, i32* %184, align 4
  br label %185

185:                                              ; preds = %179, %171, %156
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %27, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %27, align 4
  br label %152

189:                                              ; preds = %152
  %190 = load i32, i32* %36, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %27, align 4
  br label %192

192:                                              ; preds = %226, %189
  %193 = load i32, i32* %27, align 4
  %194 = load i32, i32* %29, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %229

196:                                              ; preds = %192
  %197 = load i32*, i32** %21, align 8
  %198 = load i32, i32* %27, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %225

203:                                              ; preds = %196
  %204 = load i32*, i32** %23, align 8
  %205 = load i32, i32* %27, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %35, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %219, label %211

211:                                              ; preds = %203
  %212 = load i32*, i32** %22, align 8
  %213 = load i32, i32* %27, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %35, align 4
  %218 = icmp sle i32 %216, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %211, %203
  %220 = load i32, i32* @CERTAINTY_NOT_CALCULATED, align 4
  %221 = load i32*, i32** %21, align 8
  %222 = load i32, i32* %27, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  br label %225

225:                                              ; preds = %219, %211, %196
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %27, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %27, align 4
  br label %192

229:                                              ; preds = %192
  %230 = load i32, i32* %36, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %249

232:                                              ; preds = %229
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* %35, align 4
  %236 = add nsw i32 %235, 1
  %237 = load i32, i32* %14, align 4
  %238 = sub nsw i32 %236, %237
  %239 = load i32, i32* %36, align 4
  %240 = load %struct.fingerprint*, %struct.fingerprint** %18, align 8
  %241 = load %struct.fingerprint*, %struct.fingerprint** %19, align 8
  %242 = load i32*, i32** %20, align 8
  %243 = load i32*, i32** %21, align 8
  %244 = load i32*, i32** %22, align 8
  %245 = load i32*, i32** %23, align 8
  %246 = load i32, i32* %24, align 4
  %247 = load i32, i32* %25, align 4
  %248 = load %struct.line_number_mapping*, %struct.line_number_mapping** %26, align 8
  call void @fuzzy_find_matching_lines_recurse(i32 %233, i32 %234, i32 %238, i32 %239, %struct.fingerprint* %240, %struct.fingerprint* %241, i32* %242, i32* %243, i32* %244, i32* %245, i32 %246, i32 %247, %struct.line_number_mapping* %248)
  br label %249

249:                                              ; preds = %232, %229
  %250 = load i32, i32* %36, align 4
  %251 = add nsw i32 %250, 1
  %252 = load i32, i32* %17, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %310

254:                                              ; preds = %249
  %255 = load i32, i32* %35, align 4
  store i32 %255, i32* %31, align 4
  %256 = load i32, i32* %36, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %30, align 4
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %30, align 4
  %260 = add nsw i32 %258, %259
  store i32 %260, i32* %32, align 4
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %261, %262
  %264 = load i32, i32* %31, align 4
  %265 = sub nsw i32 %263, %264
  store i32 %265, i32* %33, align 4
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %266, %267
  %269 = load i32, i32* %32, align 4
  %270 = sub nsw i32 %268, %269
  store i32 %270, i32* %34, align 4
  %271 = load i32, i32* %31, align 4
  %272 = load i32, i32* %32, align 4
  %273 = load i32, i32* %33, align 4
  %274 = load i32, i32* %34, align 4
  %275 = load %struct.fingerprint*, %struct.fingerprint** %18, align 8
  %276 = load i32, i32* %31, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %275, i64 %277
  %279 = load i32, i32* %14, align 4
  %280 = sext i32 %279 to i64
  %281 = sub i64 0, %280
  %282 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %278, i64 %281
  %283 = load %struct.fingerprint*, %struct.fingerprint** %19, align 8
  %284 = load i32, i32* %30, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %283, i64 %285
  %287 = load i32*, i32** %20, align 8
  %288 = load i32, i32* %30, align 4
  %289 = load i32, i32* %24, align 4
  %290 = mul nsw i32 %289, 2
  %291 = add nsw i32 %290, 1
  %292 = mul nsw i32 %288, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %287, i64 %293
  %295 = load i32*, i32** %21, align 8
  %296 = load i32, i32* %30, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32*, i32** %22, align 8
  %300 = load i32, i32* %30, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32*, i32** %23, align 8
  %304 = load i32, i32* %30, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %24, align 4
  %308 = load i32, i32* %25, align 4
  %309 = load %struct.line_number_mapping*, %struct.line_number_mapping** %26, align 8
  call void @fuzzy_find_matching_lines_recurse(i32 %271, i32 %272, i32 %273, i32 %274, %struct.fingerprint* %282, %struct.fingerprint* %286, i32* %294, i32* %298, i32* %302, i32* %306, i32 %307, i32 %308, %struct.line_number_mapping* %309)
  br label %310

310:                                              ; preds = %78, %254, %249
  ret void
}

declare dso_local i32 @find_best_line_matches(i32, i32, i32, i32, %struct.fingerprint*, %struct.fingerprint*, i32*, i32*, i32*, i32*, i32, %struct.line_number_mapping*) #1

declare dso_local i32 @fingerprint_subtract(%struct.fingerprint*, %struct.fingerprint*) #1

declare dso_local i32 @map_line_number(i32, %struct.line_number_mapping*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32* @get_similarity(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
