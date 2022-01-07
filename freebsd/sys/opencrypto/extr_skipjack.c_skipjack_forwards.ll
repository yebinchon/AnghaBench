; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_skipjack.c_skipjack_forwards.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_skipjack.c_skipjack_forwards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skipjack_forwards(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32**, i32*** %6, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %15, align 8
  %52 = load i32**, i32*** %6, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %16, align 8
  %55 = load i32**, i32*** %6, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 2
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %17, align 8
  %58 = load i32**, i32*** %6, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 3
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %18, align 8
  %61 = load i32**, i32*** %6, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 4
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %19, align 8
  %64 = load i32**, i32*** %6, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 5
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %20, align 8
  %67 = load i32**, i32*** %6, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 6
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %21, align 8
  %70 = load i32**, i32*** %6, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 7
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %22, align 8
  %73 = load i32**, i32*** %6, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 8
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %23, align 8
  %76 = load i32**, i32*** %6, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 9
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %24, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @g0(i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = xor i32 %84, 1
  %86 = load i32, i32* %14, align 4
  %87 = xor i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %13, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @g4(i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %14, align 4
  %97 = xor i32 %96, 2
  %98 = load i32, i32* %12, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %11, align 4
  %102 = xor i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @g8(i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = xor i32 %108, 3
  %110 = load i32, i32* %10, align 4
  %111 = xor i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %9, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @g2(i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = xor i32 %120, 4
  %122 = load i32, i32* %8, align 4
  %123 = xor i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %7, align 4
  %126 = xor i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @g6(i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = xor i32 %132, 5
  %134 = load i32, i32* %14, align 4
  %135 = xor i32 %134, %133
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %13, align 4
  %138 = xor i32 %137, %136
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @g0(i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %14, align 4
  %145 = xor i32 %144, 6
  %146 = load i32, i32* %12, align 4
  %147 = xor i32 %146, %145
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %11, align 4
  %150 = xor i32 %149, %148
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @g4(i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %12, align 4
  %157 = xor i32 %156, 7
  %158 = load i32, i32* %10, align 4
  %159 = xor i32 %158, %157
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %9, align 4
  %162 = xor i32 %161, %160
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @g8(i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = xor i32 %168, 8
  %170 = load i32, i32* %8, align 4
  %171 = xor i32 %170, %169
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %7, align 4
  %174 = xor i32 %173, %172
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %9, align 4
  %177 = xor i32 %176, %175
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %8, align 4
  %179 = xor i32 %178, 9
  %180 = load i32, i32* %10, align 4
  %181 = xor i32 %180, %179
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @g2(i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %7, align 4
  %189 = xor i32 %188, %187
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %14, align 4
  %191 = xor i32 %190, 10
  %192 = load i32, i32* %8, align 4
  %193 = xor i32 %192, %191
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @g6(i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %13, align 4
  %201 = xor i32 %200, %199
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %12, align 4
  %203 = xor i32 %202, 11
  %204 = load i32, i32* %14, align 4
  %205 = xor i32 %204, %203
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @g0(i32 %206, i32 %207, i32 %208, i32 %209)
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %11, align 4
  %213 = xor i32 %212, %211
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %10, align 4
  %215 = xor i32 %214, 12
  %216 = load i32, i32* %12, align 4
  %217 = xor i32 %216, %215
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @g4(i32 %218, i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %9, align 4
  %225 = xor i32 %224, %223
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %8, align 4
  %227 = xor i32 %226, 13
  %228 = load i32, i32* %10, align 4
  %229 = xor i32 %228, %227
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @g8(i32 %230, i32 %231, i32 %232, i32 %233)
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %7, align 4
  %237 = xor i32 %236, %235
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %14, align 4
  %239 = xor i32 %238, 14
  %240 = load i32, i32* %8, align 4
  %241 = xor i32 %240, %239
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %14, align 4
  %246 = call i32 @g2(i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %13, align 4
  %249 = xor i32 %248, %247
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %12, align 4
  %251 = xor i32 %250, 15
  %252 = load i32, i32* %14, align 4
  %253 = xor i32 %252, %251
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @g6(i32 %254, i32 %255, i32 %256, i32 %257)
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %11, align 4
  %261 = xor i32 %260, %259
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %10, align 4
  %263 = xor i32 %262, 16
  %264 = load i32, i32* %12, align 4
  %265 = xor i32 %264, %263
  store i32 %265, i32* %12, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @g0(i32 %266, i32 %267, i32 %268, i32 %269)
  %271 = load i32, i32* %7, align 4
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @g4(i32 %271, i32 %272, i32 %273, i32 %274)
  %276 = load i32, i32* %8, align 4
  %277 = xor i32 %276, 17
  %278 = load i32, i32* %14, align 4
  %279 = xor i32 %278, %277
  store i32 %279, i32* %14, align 4
  %280 = load i32, i32* %7, align 4
  %281 = load i32, i32* %13, align 4
  %282 = xor i32 %281, %280
  store i32 %282, i32* %13, align 4
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* %14, align 4
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* %14, align 4
  %287 = call i32 @g8(i32 %283, i32 %284, i32 %285, i32 %286)
  %288 = load i32, i32* %14, align 4
  %289 = xor i32 %288, 18
  %290 = load i32, i32* %12, align 4
  %291 = xor i32 %290, %289
  store i32 %291, i32* %12, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %11, align 4
  %294 = xor i32 %293, %292
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %12, align 4
  %299 = call i32 @g2(i32 %295, i32 %296, i32 %297, i32 %298)
  %300 = load i32, i32* %12, align 4
  %301 = xor i32 %300, 19
  %302 = load i32, i32* %10, align 4
  %303 = xor i32 %302, %301
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* %9, align 4
  %306 = xor i32 %305, %304
  store i32 %306, i32* %9, align 4
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* %10, align 4
  %311 = call i32 @g6(i32 %307, i32 %308, i32 %309, i32 %310)
  %312 = load i32, i32* %10, align 4
  %313 = xor i32 %312, 20
  %314 = load i32, i32* %8, align 4
  %315 = xor i32 %314, %313
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %9, align 4
  %317 = load i32, i32* %7, align 4
  %318 = xor i32 %317, %316
  store i32 %318, i32* %7, align 4
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @g0(i32 %319, i32 %320, i32 %321, i32 %322)
  %324 = load i32, i32* %8, align 4
  %325 = xor i32 %324, 21
  %326 = load i32, i32* %14, align 4
  %327 = xor i32 %326, %325
  store i32 %327, i32* %14, align 4
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* %13, align 4
  %330 = xor i32 %329, %328
  store i32 %330, i32* %13, align 4
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* %14, align 4
  %333 = load i32, i32* %13, align 4
  %334 = load i32, i32* %14, align 4
  %335 = call i32 @g4(i32 %331, i32 %332, i32 %333, i32 %334)
  %336 = load i32, i32* %14, align 4
  %337 = xor i32 %336, 22
  %338 = load i32, i32* %12, align 4
  %339 = xor i32 %338, %337
  store i32 %339, i32* %12, align 4
  %340 = load i32, i32* %13, align 4
  %341 = load i32, i32* %11, align 4
  %342 = xor i32 %341, %340
  store i32 %342, i32* %11, align 4
  %343 = load i32, i32* %11, align 4
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* %11, align 4
  %346 = load i32, i32* %12, align 4
  %347 = call i32 @g8(i32 %343, i32 %344, i32 %345, i32 %346)
  %348 = load i32, i32* %12, align 4
  %349 = xor i32 %348, 23
  %350 = load i32, i32* %10, align 4
  %351 = xor i32 %350, %349
  store i32 %351, i32* %10, align 4
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* %9, align 4
  %354 = xor i32 %353, %352
  store i32 %354, i32* %9, align 4
  %355 = load i32, i32* %9, align 4
  %356 = load i32, i32* %10, align 4
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* %10, align 4
  %359 = call i32 @g2(i32 %355, i32 %356, i32 %357, i32 %358)
  %360 = load i32, i32* %10, align 4
  %361 = xor i32 %360, 24
  %362 = load i32, i32* %8, align 4
  %363 = xor i32 %362, %361
  store i32 %363, i32* %8, align 4
  %364 = load i32, i32* %9, align 4
  %365 = load i32, i32* %7, align 4
  %366 = xor i32 %365, %364
  store i32 %366, i32* %7, align 4
  %367 = load i32, i32* %7, align 4
  %368 = load i32, i32* %9, align 4
  %369 = xor i32 %368, %367
  store i32 %369, i32* %9, align 4
  %370 = load i32, i32* %8, align 4
  %371 = xor i32 %370, 25
  %372 = load i32, i32* %10, align 4
  %373 = xor i32 %372, %371
  store i32 %373, i32* %10, align 4
  %374 = load i32, i32* %7, align 4
  %375 = load i32, i32* %8, align 4
  %376 = load i32, i32* %7, align 4
  %377 = load i32, i32* %8, align 4
  %378 = call i32 @g6(i32 %374, i32 %375, i32 %376, i32 %377)
  %379 = load i32, i32* %13, align 4
  %380 = load i32, i32* %7, align 4
  %381 = xor i32 %380, %379
  store i32 %381, i32* %7, align 4
  %382 = load i32, i32* %14, align 4
  %383 = xor i32 %382, 26
  %384 = load i32, i32* %8, align 4
  %385 = xor i32 %384, %383
  store i32 %385, i32* %8, align 4
  %386 = load i32, i32* %13, align 4
  %387 = load i32, i32* %14, align 4
  %388 = load i32, i32* %13, align 4
  %389 = load i32, i32* %14, align 4
  %390 = call i32 @g0(i32 %386, i32 %387, i32 %388, i32 %389)
  %391 = load i32, i32* %11, align 4
  %392 = load i32, i32* %13, align 4
  %393 = xor i32 %392, %391
  store i32 %393, i32* %13, align 4
  %394 = load i32, i32* %12, align 4
  %395 = xor i32 %394, 27
  %396 = load i32, i32* %14, align 4
  %397 = xor i32 %396, %395
  store i32 %397, i32* %14, align 4
  %398 = load i32, i32* %11, align 4
  %399 = load i32, i32* %12, align 4
  %400 = load i32, i32* %11, align 4
  %401 = load i32, i32* %12, align 4
  %402 = call i32 @g4(i32 %398, i32 %399, i32 %400, i32 %401)
  %403 = load i32, i32* %9, align 4
  %404 = load i32, i32* %11, align 4
  %405 = xor i32 %404, %403
  store i32 %405, i32* %11, align 4
  %406 = load i32, i32* %10, align 4
  %407 = xor i32 %406, 28
  %408 = load i32, i32* %12, align 4
  %409 = xor i32 %408, %407
  store i32 %409, i32* %12, align 4
  %410 = load i32, i32* %9, align 4
  %411 = load i32, i32* %10, align 4
  %412 = load i32, i32* %9, align 4
  %413 = load i32, i32* %10, align 4
  %414 = call i32 @g8(i32 %410, i32 %411, i32 %412, i32 %413)
  %415 = load i32, i32* %7, align 4
  %416 = load i32, i32* %9, align 4
  %417 = xor i32 %416, %415
  store i32 %417, i32* %9, align 4
  %418 = load i32, i32* %8, align 4
  %419 = xor i32 %418, 29
  %420 = load i32, i32* %10, align 4
  %421 = xor i32 %420, %419
  store i32 %421, i32* %10, align 4
  %422 = load i32, i32* %7, align 4
  %423 = load i32, i32* %8, align 4
  %424 = load i32, i32* %7, align 4
  %425 = load i32, i32* %8, align 4
  %426 = call i32 @g2(i32 %422, i32 %423, i32 %424, i32 %425)
  %427 = load i32, i32* %13, align 4
  %428 = load i32, i32* %7, align 4
  %429 = xor i32 %428, %427
  store i32 %429, i32* %7, align 4
  %430 = load i32, i32* %14, align 4
  %431 = xor i32 %430, 30
  %432 = load i32, i32* %8, align 4
  %433 = xor i32 %432, %431
  store i32 %433, i32* %8, align 4
  %434 = load i32, i32* %13, align 4
  %435 = load i32, i32* %14, align 4
  %436 = load i32, i32* %13, align 4
  %437 = load i32, i32* %14, align 4
  %438 = call i32 @g6(i32 %434, i32 %435, i32 %436, i32 %437)
  %439 = load i32, i32* %11, align 4
  %440 = load i32, i32* %13, align 4
  %441 = xor i32 %440, %439
  store i32 %441, i32* %13, align 4
  %442 = load i32, i32* %12, align 4
  %443 = xor i32 %442, 31
  %444 = load i32, i32* %14, align 4
  %445 = xor i32 %444, %443
  store i32 %445, i32* %14, align 4
  %446 = load i32, i32* %11, align 4
  %447 = load i32, i32* %12, align 4
  %448 = load i32, i32* %11, align 4
  %449 = load i32, i32* %12, align 4
  %450 = call i32 @g0(i32 %446, i32 %447, i32 %448, i32 %449)
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %11, align 4
  %453 = xor i32 %452, %451
  store i32 %453, i32* %11, align 4
  %454 = load i32, i32* %10, align 4
  %455 = xor i32 %454, 32
  %456 = load i32, i32* %12, align 4
  %457 = xor i32 %456, %455
  store i32 %457, i32* %12, align 4
  %458 = load i32, i32* %9, align 4
  %459 = load i32, i32* %10, align 4
  %460 = load i32, i32* %9, align 4
  %461 = load i32, i32* %10, align 4
  %462 = call i32 @g4(i32 %458, i32 %459, i32 %460, i32 %461)
  %463 = load i32, i32* %7, align 4
  %464 = load i32*, i32** %5, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  store i32 %463, i32* %465, align 4
  %466 = load i32, i32* %8, align 4
  %467 = load i32*, i32** %5, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 1
  store i32 %466, i32* %468, align 4
  %469 = load i32, i32* %9, align 4
  %470 = load i32*, i32** %5, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 2
  store i32 %469, i32* %471, align 4
  %472 = load i32, i32* %10, align 4
  %473 = load i32*, i32** %5, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 3
  store i32 %472, i32* %474, align 4
  %475 = load i32, i32* %11, align 4
  %476 = load i32*, i32** %5, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 4
  store i32 %475, i32* %477, align 4
  %478 = load i32, i32* %12, align 4
  %479 = load i32*, i32** %5, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 5
  store i32 %478, i32* %480, align 4
  %481 = load i32, i32* %13, align 4
  %482 = load i32*, i32** %5, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 6
  store i32 %481, i32* %483, align 4
  %484 = load i32, i32* %14, align 4
  %485 = load i32*, i32** %5, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 7
  store i32 %484, i32* %486, align 4
  ret void
}

declare dso_local i32 @g0(i32, i32, i32, i32) #1

declare dso_local i32 @g4(i32, i32, i32, i32) #1

declare dso_local i32 @g8(i32, i32, i32, i32) #1

declare dso_local i32 @g2(i32, i32, i32, i32) #1

declare dso_local i32 @g6(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
