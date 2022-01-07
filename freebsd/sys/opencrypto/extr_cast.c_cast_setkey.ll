; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cast.c_cast_setkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cast.c_cast_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@cast_sbox5 = common dso_local global i32* null, align 8
@cast_sbox6 = common dso_local global i32* null, align 8
@cast_sbox7 = common dso_local global i32* null, align 8
@cast_sbox8 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cast_setkey(%struct.TYPE_3__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 16, i1 false)
  %12 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 10
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 12, i32 16
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %107, %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %110

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %24
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 %27, 0
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = load i64*, i64** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 %34, 0
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %32, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 24
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %31, %22
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i64*, i64** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %52, 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %51, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %50, %44
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %66, 4
  %68 = add nsw i32 %67, 2
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load i64*, i64** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %73, 4
  %75 = add nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 %79, 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %71, %65
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %87, 4
  %89 = add nsw i32 %88, 3
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 %94, 4
  %96 = add nsw i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %93, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %92, %86
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %19

110:                                              ; preds = %19
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %996, %110
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 32
  br i1 %113, label %114, label %999

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = and i32 %115, 4
  switch i32 %116, label %431 [
    i32 0, label %117
    i32 4, label %274
  ]

117:                                              ; preds = %114
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = load i32*, i32** @cast_sbox5, align 8
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @U_INT8_Tb(i32 %122)
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = xor i32 %119, %125
  %127 = load i32*, i32** @cast_sbox6, align 8
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @U_INT8_Td(i32 %129)
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %126, %132
  %134 = load i32*, i32** @cast_sbox7, align 8
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @U_INT8_Ta(i32 %136)
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %133, %139
  %141 = load i32*, i32** @cast_sbox8, align 8
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @U_INT8_Tc(i32 %143)
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %140, %146
  %148 = load i32*, i32** @cast_sbox7, align 8
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @U_INT8_Ta(i32 %150)
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = xor i32 %147, %153
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %154, i32* %155, align 16
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %154, i32* %156, align 16
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32*, i32** @cast_sbox5, align 8
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %161 = load i32, i32* %160, align 16
  %162 = call i64 @U_INT8_Ta(i32 %161)
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = xor i32 %158, %164
  %166 = load i32*, i32** @cast_sbox6, align 8
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = call i64 @U_INT8_Tc(i32 %168)
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = xor i32 %165, %171
  %173 = load i32*, i32** @cast_sbox7, align 8
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %175 = load i32, i32* %174, align 16
  %176 = call i64 @U_INT8_Tb(i32 %175)
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = xor i32 %172, %178
  %180 = load i32*, i32** @cast_sbox8, align 8
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %182 = load i32, i32* %181, align 16
  %183 = call i64 @U_INT8_Td(i32 %182)
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = xor i32 %179, %185
  %187 = load i32*, i32** @cast_sbox8, align 8
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @U_INT8_Tc(i32 %189)
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = xor i32 %186, %192
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %193, i32* %194, align 4
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %193, i32* %195, align 4
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** @cast_sbox5, align 8
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @U_INT8_Td(i32 %200)
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = xor i32 %197, %203
  %205 = load i32*, i32** @cast_sbox6, align 8
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @U_INT8_Tc(i32 %207)
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = xor i32 %204, %210
  %212 = load i32*, i32** @cast_sbox7, align 8
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @U_INT8_Tb(i32 %214)
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = xor i32 %211, %217
  %219 = load i32*, i32** @cast_sbox8, align 8
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @U_INT8_Ta(i32 %221)
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = xor i32 %218, %224
  %226 = load i32*, i32** @cast_sbox5, align 8
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %228 = load i32, i32* %227, align 8
  %229 = call i64 @U_INT8_Tb(i32 %228)
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = xor i32 %225, %231
  %233 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %232, i32* %233, align 8
  %234 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %232, i32* %234, align 8
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** @cast_sbox5, align 8
  %238 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %239 = load i32, i32* %238, align 8
  %240 = call i64 @U_INT8_Tc(i32 %239)
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = xor i32 %236, %242
  %244 = load i32*, i32** @cast_sbox6, align 8
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @U_INT8_Tb(i32 %246)
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = xor i32 %243, %249
  %251 = load i32*, i32** @cast_sbox7, align 8
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %253 = load i32, i32* %252, align 8
  %254 = call i64 @U_INT8_Td(i32 %253)
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = xor i32 %250, %256
  %258 = load i32*, i32** @cast_sbox8, align 8
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %260 = load i32, i32* %259, align 8
  %261 = call i64 @U_INT8_Ta(i32 %260)
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = xor i32 %257, %263
  %265 = load i32*, i32** @cast_sbox6, align 8
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @U_INT8_Td(i32 %267)
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = xor i32 %264, %270
  %272 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %271, i32* %272, align 4
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %271, i32* %273, align 4
  br label %431

274:                                              ; preds = %114
  %275 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32*, i32** @cast_sbox5, align 8
  %278 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @U_INT8_Tb(i32 %279)
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = xor i32 %276, %282
  %284 = load i32*, i32** @cast_sbox6, align 8
  %285 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = call i64 @U_INT8_Td(i32 %286)
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = xor i32 %283, %289
  %291 = load i32*, i32** @cast_sbox7, align 8
  %292 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %293 = load i32, i32* %292, align 4
  %294 = call i64 @U_INT8_Ta(i32 %293)
  %295 = getelementptr inbounds i32, i32* %291, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = xor i32 %290, %296
  %298 = load i32*, i32** @cast_sbox8, align 8
  %299 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = call i64 @U_INT8_Tc(i32 %300)
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = xor i32 %297, %303
  %305 = load i32*, i32** @cast_sbox7, align 8
  %306 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %307 = load i32, i32* %306, align 16
  %308 = call i64 @U_INT8_Ta(i32 %307)
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = xor i32 %304, %310
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %311, i32* %312, align 16
  %313 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %311, i32* %313, align 16
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %315 = load i32, i32* %314, align 16
  %316 = load i32*, i32** @cast_sbox5, align 8
  %317 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %318 = load i32, i32* %317, align 16
  %319 = call i64 @U_INT8_Ta(i32 %318)
  %320 = getelementptr inbounds i32, i32* %316, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = xor i32 %315, %321
  %323 = load i32*, i32** @cast_sbox6, align 8
  %324 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %325 = load i32, i32* %324, align 16
  %326 = call i64 @U_INT8_Tc(i32 %325)
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = xor i32 %322, %328
  %330 = load i32*, i32** @cast_sbox7, align 8
  %331 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %332 = load i32, i32* %331, align 16
  %333 = call i64 @U_INT8_Tb(i32 %332)
  %334 = getelementptr inbounds i32, i32* %330, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = xor i32 %329, %335
  %337 = load i32*, i32** @cast_sbox8, align 8
  %338 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %339 = load i32, i32* %338, align 16
  %340 = call i64 @U_INT8_Td(i32 %339)
  %341 = getelementptr inbounds i32, i32* %337, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = xor i32 %336, %342
  %344 = load i32*, i32** @cast_sbox8, align 8
  %345 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %346 = load i32, i32* %345, align 16
  %347 = call i64 @U_INT8_Tc(i32 %346)
  %348 = getelementptr inbounds i32, i32* %344, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = xor i32 %343, %349
  %351 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %350, i32* %351, align 4
  %352 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %350, i32* %352, align 4
  %353 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32*, i32** @cast_sbox5, align 8
  %356 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %357 = load i32, i32* %356, align 4
  %358 = call i64 @U_INT8_Td(i32 %357)
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = xor i32 %354, %360
  %362 = load i32*, i32** @cast_sbox6, align 8
  %363 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = call i64 @U_INT8_Tc(i32 %364)
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = xor i32 %361, %367
  %369 = load i32*, i32** @cast_sbox7, align 8
  %370 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = call i64 @U_INT8_Tb(i32 %371)
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = xor i32 %368, %374
  %376 = load i32*, i32** @cast_sbox8, align 8
  %377 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %378 = load i32, i32* %377, align 4
  %379 = call i64 @U_INT8_Ta(i32 %378)
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = xor i32 %375, %381
  %383 = load i32*, i32** @cast_sbox5, align 8
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %385 = load i32, i32* %384, align 16
  %386 = call i64 @U_INT8_Tb(i32 %385)
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = xor i32 %382, %388
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %389, i32* %390, align 8
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %389, i32* %391, align 8
  %392 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %393 = load i32, i32* %392, align 4
  %394 = load i32*, i32** @cast_sbox5, align 8
  %395 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %396 = load i32, i32* %395, align 8
  %397 = call i64 @U_INT8_Tc(i32 %396)
  %398 = getelementptr inbounds i32, i32* %394, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = xor i32 %393, %399
  %401 = load i32*, i32** @cast_sbox6, align 8
  %402 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %403 = load i32, i32* %402, align 8
  %404 = call i64 @U_INT8_Tb(i32 %403)
  %405 = getelementptr inbounds i32, i32* %401, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = xor i32 %400, %406
  %408 = load i32*, i32** @cast_sbox7, align 8
  %409 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %410 = load i32, i32* %409, align 8
  %411 = call i64 @U_INT8_Td(i32 %410)
  %412 = getelementptr inbounds i32, i32* %408, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = xor i32 %407, %413
  %415 = load i32*, i32** @cast_sbox8, align 8
  %416 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %417 = load i32, i32* %416, align 8
  %418 = call i64 @U_INT8_Ta(i32 %417)
  %419 = getelementptr inbounds i32, i32* %415, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = xor i32 %414, %420
  %422 = load i32*, i32** @cast_sbox6, align 8
  %423 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %424 = load i32, i32* %423, align 16
  %425 = call i64 @U_INT8_Td(i32 %424)
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = xor i32 %421, %427
  %429 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %428, i32* %429, align 4
  %430 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %428, i32* %430, align 4
  br label %431

431:                                              ; preds = %114, %274, %117
  %432 = load i32, i32* %10, align 4
  %433 = and i32 %432, 12
  switch i32 %433, label %708 [
    i32 0, label %434
    i32 12, label %434
    i32 4, label %571
    i32 8, label %571
  ]

434:                                              ; preds = %431, %431
  %435 = load i32*, i32** @cast_sbox5, align 8
  %436 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %437 = load i32, i32* %436, align 8
  %438 = call i64 @U_INT8_Ta(i32 %437)
  %439 = getelementptr inbounds i32, i32* %435, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = load i32*, i32** @cast_sbox6, align 8
  %442 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %443 = load i32, i32* %442, align 8
  %444 = call i64 @U_INT8_Tb(i32 %443)
  %445 = getelementptr inbounds i32, i32* %441, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = xor i32 %440, %446
  %448 = load i32*, i32** @cast_sbox7, align 8
  %449 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %450 = load i32, i32* %449, align 4
  %451 = call i64 @U_INT8_Td(i32 %450)
  %452 = getelementptr inbounds i32, i32* %448, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = xor i32 %447, %453
  %455 = load i32*, i32** @cast_sbox8, align 8
  %456 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %457 = load i32, i32* %456, align 4
  %458 = call i64 @U_INT8_Tc(i32 %457)
  %459 = getelementptr inbounds i32, i32* %455, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = xor i32 %454, %460
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 1
  %464 = load i32*, i32** %463, align 8
  %465 = load i32, i32* %10, align 4
  %466 = add nsw i32 %465, 0
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %464, i64 %467
  store i32 %461, i32* %468, align 4
  %469 = load i32*, i32** @cast_sbox5, align 8
  %470 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %471 = load i32, i32* %470, align 8
  %472 = call i64 @U_INT8_Tc(i32 %471)
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = load i32*, i32** @cast_sbox6, align 8
  %476 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %477 = load i32, i32* %476, align 8
  %478 = call i64 @U_INT8_Td(i32 %477)
  %479 = getelementptr inbounds i32, i32* %475, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = xor i32 %474, %480
  %482 = load i32*, i32** @cast_sbox7, align 8
  %483 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %484 = load i32, i32* %483, align 4
  %485 = call i64 @U_INT8_Tb(i32 %484)
  %486 = getelementptr inbounds i32, i32* %482, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = xor i32 %481, %487
  %489 = load i32*, i32** @cast_sbox8, align 8
  %490 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %491 = load i32, i32* %490, align 4
  %492 = call i64 @U_INT8_Ta(i32 %491)
  %493 = getelementptr inbounds i32, i32* %489, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = xor i32 %488, %494
  %496 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %496, i32 0, i32 1
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %10, align 4
  %500 = add nsw i32 %499, 1
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %498, i64 %501
  store i32 %495, i32* %502, align 4
  %503 = load i32*, i32** @cast_sbox5, align 8
  %504 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %505 = load i32, i32* %504, align 4
  %506 = call i64 @U_INT8_Ta(i32 %505)
  %507 = getelementptr inbounds i32, i32* %503, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load i32*, i32** @cast_sbox6, align 8
  %510 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %511 = load i32, i32* %510, align 4
  %512 = call i64 @U_INT8_Tb(i32 %511)
  %513 = getelementptr inbounds i32, i32* %509, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = xor i32 %508, %514
  %516 = load i32*, i32** @cast_sbox7, align 8
  %517 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %518 = load i32, i32* %517, align 16
  %519 = call i64 @U_INT8_Td(i32 %518)
  %520 = getelementptr inbounds i32, i32* %516, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = xor i32 %515, %521
  %523 = load i32*, i32** @cast_sbox8, align 8
  %524 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %525 = load i32, i32* %524, align 16
  %526 = call i64 @U_INT8_Tc(i32 %525)
  %527 = getelementptr inbounds i32, i32* %523, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = xor i32 %522, %528
  %530 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %531 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %530, i32 0, i32 1
  %532 = load i32*, i32** %531, align 8
  %533 = load i32, i32* %10, align 4
  %534 = add nsw i32 %533, 2
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i32, i32* %532, i64 %535
  store i32 %529, i32* %536, align 4
  %537 = load i32*, i32** @cast_sbox5, align 8
  %538 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %539 = load i32, i32* %538, align 4
  %540 = call i64 @U_INT8_Tc(i32 %539)
  %541 = getelementptr inbounds i32, i32* %537, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = load i32*, i32** @cast_sbox6, align 8
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %545 = load i32, i32* %544, align 4
  %546 = call i64 @U_INT8_Td(i32 %545)
  %547 = getelementptr inbounds i32, i32* %543, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = xor i32 %542, %548
  %550 = load i32*, i32** @cast_sbox7, align 8
  %551 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %552 = load i32, i32* %551, align 16
  %553 = call i64 @U_INT8_Tb(i32 %552)
  %554 = getelementptr inbounds i32, i32* %550, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = xor i32 %549, %555
  %557 = load i32*, i32** @cast_sbox8, align 8
  %558 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %559 = load i32, i32* %558, align 16
  %560 = call i64 @U_INT8_Ta(i32 %559)
  %561 = getelementptr inbounds i32, i32* %557, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = xor i32 %556, %562
  %564 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %565 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %564, i32 0, i32 1
  %566 = load i32*, i32** %565, align 8
  %567 = load i32, i32* %10, align 4
  %568 = add nsw i32 %567, 3
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %566, i64 %569
  store i32 %563, i32* %570, align 4
  br label %708

571:                                              ; preds = %431, %431
  %572 = load i32*, i32** @cast_sbox5, align 8
  %573 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %574 = load i32, i32* %573, align 16
  %575 = call i64 @U_INT8_Td(i32 %574)
  %576 = getelementptr inbounds i32, i32* %572, i64 %575
  %577 = load i32, i32* %576, align 4
  %578 = load i32*, i32** @cast_sbox6, align 8
  %579 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %580 = load i32, i32* %579, align 16
  %581 = call i64 @U_INT8_Tc(i32 %580)
  %582 = getelementptr inbounds i32, i32* %578, i64 %581
  %583 = load i32, i32* %582, align 4
  %584 = xor i32 %577, %583
  %585 = load i32*, i32** @cast_sbox7, align 8
  %586 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %587 = load i32, i32* %586, align 4
  %588 = call i64 @U_INT8_Ta(i32 %587)
  %589 = getelementptr inbounds i32, i32* %585, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = xor i32 %584, %590
  %592 = load i32*, i32** @cast_sbox8, align 8
  %593 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %594 = load i32, i32* %593, align 4
  %595 = call i64 @U_INT8_Tb(i32 %594)
  %596 = getelementptr inbounds i32, i32* %592, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = xor i32 %591, %597
  %599 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %600 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %599, i32 0, i32 1
  %601 = load i32*, i32** %600, align 8
  %602 = load i32, i32* %10, align 4
  %603 = add nsw i32 %602, 0
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %601, i64 %604
  store i32 %598, i32* %605, align 4
  %606 = load i32*, i32** @cast_sbox5, align 8
  %607 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %608 = load i32, i32* %607, align 16
  %609 = call i64 @U_INT8_Tb(i32 %608)
  %610 = getelementptr inbounds i32, i32* %606, i64 %609
  %611 = load i32, i32* %610, align 4
  %612 = load i32*, i32** @cast_sbox6, align 8
  %613 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %614 = load i32, i32* %613, align 16
  %615 = call i64 @U_INT8_Ta(i32 %614)
  %616 = getelementptr inbounds i32, i32* %612, i64 %615
  %617 = load i32, i32* %616, align 4
  %618 = xor i32 %611, %617
  %619 = load i32*, i32** @cast_sbox7, align 8
  %620 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %621 = load i32, i32* %620, align 4
  %622 = call i64 @U_INT8_Tc(i32 %621)
  %623 = getelementptr inbounds i32, i32* %619, i64 %622
  %624 = load i32, i32* %623, align 4
  %625 = xor i32 %618, %624
  %626 = load i32*, i32** @cast_sbox8, align 8
  %627 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %628 = load i32, i32* %627, align 4
  %629 = call i64 @U_INT8_Td(i32 %628)
  %630 = getelementptr inbounds i32, i32* %626, i64 %629
  %631 = load i32, i32* %630, align 4
  %632 = xor i32 %625, %631
  %633 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %634 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %633, i32 0, i32 1
  %635 = load i32*, i32** %634, align 8
  %636 = load i32, i32* %10, align 4
  %637 = add nsw i32 %636, 1
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i32, i32* %635, i64 %638
  store i32 %632, i32* %639, align 4
  %640 = load i32*, i32** @cast_sbox5, align 8
  %641 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %642 = load i32, i32* %641, align 4
  %643 = call i64 @U_INT8_Td(i32 %642)
  %644 = getelementptr inbounds i32, i32* %640, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = load i32*, i32** @cast_sbox6, align 8
  %647 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %648 = load i32, i32* %647, align 4
  %649 = call i64 @U_INT8_Tc(i32 %648)
  %650 = getelementptr inbounds i32, i32* %646, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = xor i32 %645, %651
  %653 = load i32*, i32** @cast_sbox7, align 8
  %654 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %655 = load i32, i32* %654, align 8
  %656 = call i64 @U_INT8_Ta(i32 %655)
  %657 = getelementptr inbounds i32, i32* %653, i64 %656
  %658 = load i32, i32* %657, align 4
  %659 = xor i32 %652, %658
  %660 = load i32*, i32** @cast_sbox8, align 8
  %661 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %662 = load i32, i32* %661, align 8
  %663 = call i64 @U_INT8_Tb(i32 %662)
  %664 = getelementptr inbounds i32, i32* %660, i64 %663
  %665 = load i32, i32* %664, align 4
  %666 = xor i32 %659, %665
  %667 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %668 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %667, i32 0, i32 1
  %669 = load i32*, i32** %668, align 8
  %670 = load i32, i32* %10, align 4
  %671 = add nsw i32 %670, 2
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i32, i32* %669, i64 %672
  store i32 %666, i32* %673, align 4
  %674 = load i32*, i32** @cast_sbox5, align 8
  %675 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %676 = load i32, i32* %675, align 4
  %677 = call i64 @U_INT8_Tb(i32 %676)
  %678 = getelementptr inbounds i32, i32* %674, i64 %677
  %679 = load i32, i32* %678, align 4
  %680 = load i32*, i32** @cast_sbox6, align 8
  %681 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %682 = load i32, i32* %681, align 4
  %683 = call i64 @U_INT8_Ta(i32 %682)
  %684 = getelementptr inbounds i32, i32* %680, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = xor i32 %679, %685
  %687 = load i32*, i32** @cast_sbox7, align 8
  %688 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %689 = load i32, i32* %688, align 8
  %690 = call i64 @U_INT8_Tc(i32 %689)
  %691 = getelementptr inbounds i32, i32* %687, i64 %690
  %692 = load i32, i32* %691, align 4
  %693 = xor i32 %686, %692
  %694 = load i32*, i32** @cast_sbox8, align 8
  %695 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %696 = load i32, i32* %695, align 8
  %697 = call i64 @U_INT8_Td(i32 %696)
  %698 = getelementptr inbounds i32, i32* %694, i64 %697
  %699 = load i32, i32* %698, align 4
  %700 = xor i32 %693, %699
  %701 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %702 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %701, i32 0, i32 1
  %703 = load i32*, i32** %702, align 8
  %704 = load i32, i32* %10, align 4
  %705 = add nsw i32 %704, 3
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32, i32* %703, i64 %706
  store i32 %700, i32* %707, align 4
  br label %708

708:                                              ; preds = %431, %571, %434
  %709 = load i32, i32* %10, align 4
  %710 = and i32 %709, 12
  switch i32 %710, label %955 [
    i32 0, label %711
    i32 4, label %772
    i32 8, label %833
    i32 12, label %894
  ]

711:                                              ; preds = %708
  %712 = load i32*, i32** @cast_sbox5, align 8
  %713 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %714 = load i32, i32* %713, align 16
  %715 = call i64 @U_INT8_Tc(i32 %714)
  %716 = getelementptr inbounds i32, i32* %712, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %719 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %718, i32 0, i32 1
  %720 = load i32*, i32** %719, align 8
  %721 = load i32, i32* %10, align 4
  %722 = add nsw i32 %721, 0
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i32, i32* %720, i64 %723
  %725 = load i32, i32* %724, align 4
  %726 = xor i32 %725, %717
  store i32 %726, i32* %724, align 4
  %727 = load i32*, i32** @cast_sbox6, align 8
  %728 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %729 = load i32, i32* %728, align 4
  %730 = call i64 @U_INT8_Tc(i32 %729)
  %731 = getelementptr inbounds i32, i32* %727, i64 %730
  %732 = load i32, i32* %731, align 4
  %733 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %734 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %733, i32 0, i32 1
  %735 = load i32*, i32** %734, align 8
  %736 = load i32, i32* %10, align 4
  %737 = add nsw i32 %736, 1
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds i32, i32* %735, i64 %738
  %740 = load i32, i32* %739, align 4
  %741 = xor i32 %740, %732
  store i32 %741, i32* %739, align 4
  %742 = load i32*, i32** @cast_sbox7, align 8
  %743 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %744 = load i32, i32* %743, align 8
  %745 = call i64 @U_INT8_Tb(i32 %744)
  %746 = getelementptr inbounds i32, i32* %742, i64 %745
  %747 = load i32, i32* %746, align 4
  %748 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %749 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %748, i32 0, i32 1
  %750 = load i32*, i32** %749, align 8
  %751 = load i32, i32* %10, align 4
  %752 = add nsw i32 %751, 2
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i32, i32* %750, i64 %753
  %755 = load i32, i32* %754, align 4
  %756 = xor i32 %755, %747
  store i32 %756, i32* %754, align 4
  %757 = load i32*, i32** @cast_sbox8, align 8
  %758 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %759 = load i32, i32* %758, align 4
  %760 = call i64 @U_INT8_Ta(i32 %759)
  %761 = getelementptr inbounds i32, i32* %757, i64 %760
  %762 = load i32, i32* %761, align 4
  %763 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %764 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %763, i32 0, i32 1
  %765 = load i32*, i32** %764, align 8
  %766 = load i32, i32* %10, align 4
  %767 = add nsw i32 %766, 3
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i32, i32* %765, i64 %768
  %770 = load i32, i32* %769, align 4
  %771 = xor i32 %770, %762
  store i32 %771, i32* %769, align 4
  br label %955

772:                                              ; preds = %708
  %773 = load i32*, i32** @cast_sbox5, align 8
  %774 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %775 = load i32, i32* %774, align 8
  %776 = call i64 @U_INT8_Ta(i32 %775)
  %777 = getelementptr inbounds i32, i32* %773, i64 %776
  %778 = load i32, i32* %777, align 4
  %779 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %780 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %779, i32 0, i32 1
  %781 = load i32*, i32** %780, align 8
  %782 = load i32, i32* %10, align 4
  %783 = add nsw i32 %782, 0
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i32, i32* %781, i64 %784
  %786 = load i32, i32* %785, align 4
  %787 = xor i32 %786, %778
  store i32 %787, i32* %785, align 4
  %788 = load i32*, i32** @cast_sbox6, align 8
  %789 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %790 = load i32, i32* %789, align 4
  %791 = call i64 @U_INT8_Tb(i32 %790)
  %792 = getelementptr inbounds i32, i32* %788, i64 %791
  %793 = load i32, i32* %792, align 4
  %794 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %795 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %794, i32 0, i32 1
  %796 = load i32*, i32** %795, align 8
  %797 = load i32, i32* %10, align 4
  %798 = add nsw i32 %797, 1
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds i32, i32* %796, i64 %799
  %801 = load i32, i32* %800, align 4
  %802 = xor i32 %801, %793
  store i32 %802, i32* %800, align 4
  %803 = load i32*, i32** @cast_sbox7, align 8
  %804 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %805 = load i32, i32* %804, align 16
  %806 = call i64 @U_INT8_Td(i32 %805)
  %807 = getelementptr inbounds i32, i32* %803, i64 %806
  %808 = load i32, i32* %807, align 4
  %809 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %810 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %809, i32 0, i32 1
  %811 = load i32*, i32** %810, align 8
  %812 = load i32, i32* %10, align 4
  %813 = add nsw i32 %812, 2
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds i32, i32* %811, i64 %814
  %816 = load i32, i32* %815, align 4
  %817 = xor i32 %816, %808
  store i32 %817, i32* %815, align 4
  %818 = load i32*, i32** @cast_sbox8, align 8
  %819 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %820 = load i32, i32* %819, align 4
  %821 = call i64 @U_INT8_Td(i32 %820)
  %822 = getelementptr inbounds i32, i32* %818, i64 %821
  %823 = load i32, i32* %822, align 4
  %824 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %825 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %824, i32 0, i32 1
  %826 = load i32*, i32** %825, align 8
  %827 = load i32, i32* %10, align 4
  %828 = add nsw i32 %827, 3
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds i32, i32* %826, i64 %829
  %831 = load i32, i32* %830, align 4
  %832 = xor i32 %831, %823
  store i32 %832, i32* %830, align 4
  br label %955

833:                                              ; preds = %708
  %834 = load i32*, i32** @cast_sbox5, align 8
  %835 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %836 = load i32, i32* %835, align 8
  %837 = call i64 @U_INT8_Tb(i32 %836)
  %838 = getelementptr inbounds i32, i32* %834, i64 %837
  %839 = load i32, i32* %838, align 4
  %840 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %841 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %840, i32 0, i32 1
  %842 = load i32*, i32** %841, align 8
  %843 = load i32, i32* %10, align 4
  %844 = add nsw i32 %843, 0
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds i32, i32* %842, i64 %845
  %847 = load i32, i32* %846, align 4
  %848 = xor i32 %847, %839
  store i32 %848, i32* %846, align 4
  %849 = load i32*, i32** @cast_sbox6, align 8
  %850 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %851 = load i32, i32* %850, align 4
  %852 = call i64 @U_INT8_Ta(i32 %851)
  %853 = getelementptr inbounds i32, i32* %849, i64 %852
  %854 = load i32, i32* %853, align 4
  %855 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %856 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %855, i32 0, i32 1
  %857 = load i32*, i32** %856, align 8
  %858 = load i32, i32* %10, align 4
  %859 = add nsw i32 %858, 1
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds i32, i32* %857, i64 %860
  %862 = load i32, i32* %861, align 4
  %863 = xor i32 %862, %854
  store i32 %863, i32* %861, align 4
  %864 = load i32*, i32** @cast_sbox7, align 8
  %865 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %866 = load i32, i32* %865, align 16
  %867 = call i64 @U_INT8_Tc(i32 %866)
  %868 = getelementptr inbounds i32, i32* %864, i64 %867
  %869 = load i32, i32* %868, align 4
  %870 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %871 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %870, i32 0, i32 1
  %872 = load i32*, i32** %871, align 8
  %873 = load i32, i32* %10, align 4
  %874 = add nsw i32 %873, 2
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds i32, i32* %872, i64 %875
  %877 = load i32, i32* %876, align 4
  %878 = xor i32 %877, %869
  store i32 %878, i32* %876, align 4
  %879 = load i32*, i32** @cast_sbox8, align 8
  %880 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %881 = load i32, i32* %880, align 4
  %882 = call i64 @U_INT8_Tc(i32 %881)
  %883 = getelementptr inbounds i32, i32* %879, i64 %882
  %884 = load i32, i32* %883, align 4
  %885 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %886 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %885, i32 0, i32 1
  %887 = load i32*, i32** %886, align 8
  %888 = load i32, i32* %10, align 4
  %889 = add nsw i32 %888, 3
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds i32, i32* %887, i64 %890
  %892 = load i32, i32* %891, align 4
  %893 = xor i32 %892, %884
  store i32 %893, i32* %891, align 4
  br label %955

894:                                              ; preds = %708
  %895 = load i32*, i32** @cast_sbox5, align 8
  %896 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %897 = load i32, i32* %896, align 16
  %898 = call i64 @U_INT8_Td(i32 %897)
  %899 = getelementptr inbounds i32, i32* %895, i64 %898
  %900 = load i32, i32* %899, align 4
  %901 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %902 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %901, i32 0, i32 1
  %903 = load i32*, i32** %902, align 8
  %904 = load i32, i32* %10, align 4
  %905 = add nsw i32 %904, 0
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds i32, i32* %903, i64 %906
  %908 = load i32, i32* %907, align 4
  %909 = xor i32 %908, %900
  store i32 %909, i32* %907, align 4
  %910 = load i32*, i32** @cast_sbox6, align 8
  %911 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %912 = load i32, i32* %911, align 4
  %913 = call i64 @U_INT8_Td(i32 %912)
  %914 = getelementptr inbounds i32, i32* %910, i64 %913
  %915 = load i32, i32* %914, align 4
  %916 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %917 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %916, i32 0, i32 1
  %918 = load i32*, i32** %917, align 8
  %919 = load i32, i32* %10, align 4
  %920 = add nsw i32 %919, 1
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds i32, i32* %918, i64 %921
  %923 = load i32, i32* %922, align 4
  %924 = xor i32 %923, %915
  store i32 %924, i32* %922, align 4
  %925 = load i32*, i32** @cast_sbox7, align 8
  %926 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %927 = load i32, i32* %926, align 8
  %928 = call i64 @U_INT8_Ta(i32 %927)
  %929 = getelementptr inbounds i32, i32* %925, i64 %928
  %930 = load i32, i32* %929, align 4
  %931 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %932 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %931, i32 0, i32 1
  %933 = load i32*, i32** %932, align 8
  %934 = load i32, i32* %10, align 4
  %935 = add nsw i32 %934, 2
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i32, i32* %933, i64 %936
  %938 = load i32, i32* %937, align 4
  %939 = xor i32 %938, %930
  store i32 %939, i32* %937, align 4
  %940 = load i32*, i32** @cast_sbox8, align 8
  %941 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %942 = load i32, i32* %941, align 4
  %943 = call i64 @U_INT8_Tb(i32 %942)
  %944 = getelementptr inbounds i32, i32* %940, i64 %943
  %945 = load i32, i32* %944, align 4
  %946 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %947 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %946, i32 0, i32 1
  %948 = load i32*, i32** %947, align 8
  %949 = load i32, i32* %10, align 4
  %950 = add nsw i32 %949, 3
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds i32, i32* %948, i64 %951
  %953 = load i32, i32* %952, align 4
  %954 = xor i32 %953, %945
  store i32 %954, i32* %952, align 4
  br label %955

955:                                              ; preds = %708, %894, %833, %772, %711
  %956 = load i32, i32* %10, align 4
  %957 = icmp sge i32 %956, 16
  br i1 %957, label %958, label %995

958:                                              ; preds = %955
  %959 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %960 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %959, i32 0, i32 1
  %961 = load i32*, i32** %960, align 8
  %962 = load i32, i32* %10, align 4
  %963 = add nsw i32 %962, 0
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds i32, i32* %961, i64 %964
  %966 = load i32, i32* %965, align 4
  %967 = and i32 %966, 31
  store i32 %967, i32* %965, align 4
  %968 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %969 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %968, i32 0, i32 1
  %970 = load i32*, i32** %969, align 8
  %971 = load i32, i32* %10, align 4
  %972 = add nsw i32 %971, 1
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds i32, i32* %970, i64 %973
  %975 = load i32, i32* %974, align 4
  %976 = and i32 %975, 31
  store i32 %976, i32* %974, align 4
  %977 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %978 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %977, i32 0, i32 1
  %979 = load i32*, i32** %978, align 8
  %980 = load i32, i32* %10, align 4
  %981 = add nsw i32 %980, 2
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds i32, i32* %979, i64 %982
  %984 = load i32, i32* %983, align 4
  %985 = and i32 %984, 31
  store i32 %985, i32* %983, align 4
  %986 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %987 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %986, i32 0, i32 1
  %988 = load i32*, i32** %987, align 8
  %989 = load i32, i32* %10, align 4
  %990 = add nsw i32 %989, 3
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds i32, i32* %988, i64 %991
  %993 = load i32, i32* %992, align 4
  %994 = and i32 %993, 31
  store i32 %994, i32* %992, align 4
  br label %995

995:                                              ; preds = %958, %955
  br label %996

996:                                              ; preds = %995
  %997 = load i32, i32* %10, align 4
  %998 = add nsw i32 %997, 4
  store i32 %998, i32* %10, align 4
  br label %111

999:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  br label %1000

1000:                                             ; preds = %1013, %999
  %1001 = load i32, i32* %10, align 4
  %1002 = icmp slt i32 %1001, 4
  br i1 %1002, label %1003, label %1016

1003:                                             ; preds = %1000
  %1004 = load i32, i32* %10, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %1005
  store i32 0, i32* %1006, align 4
  %1007 = load i32, i32* %10, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %1008
  store i32 0, i32* %1009, align 4
  %1010 = load i32, i32* %10, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %1011
  store i32 0, i32* %1012, align 4
  br label %1013

1013:                                             ; preds = %1003
  %1014 = load i32, i32* %10, align 4
  %1015 = add nsw i32 %1014, 1
  store i32 %1015, i32* %10, align 4
  br label %1000

1016:                                             ; preds = %1000
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @U_INT8_Tb(i32) #2

declare dso_local i64 @U_INT8_Td(i32) #2

declare dso_local i64 @U_INT8_Ta(i32) #2

declare dso_local i64 @U_INT8_Tc(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
