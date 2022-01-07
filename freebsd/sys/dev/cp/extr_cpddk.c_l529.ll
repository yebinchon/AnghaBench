; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l529.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l529.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i64, i64 }

@l451 = common dso_local global i8* null, align 8
@l295 = common dso_local global i8* null, align 8
@l527 = common dso_local global i8* null, align 8
@l649 = common dso_local global i8* null, align 8
@l565 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @l529 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l529(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* null, i8** %4, align 8
  store i16 228, i16* %6, align 2
  %10 = load i16, i16* %6, align 2
  %11 = zext i16 %10 to i32
  %12 = or i32 %11, 2
  %13 = or i32 %12, 1
  %14 = trunc i32 %13 to i16
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1024
  %19 = inttoptr i64 %18 to i16*
  store volatile i16 %14, i16* %19, align 2
  %20 = load i16, i16* %6, align 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1028
  %25 = inttoptr i64 %24 to i16*
  store volatile i16 %20, i16* %25, align 2
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = xor i32 %27, 36
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %6, align 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1028
  %34 = inttoptr i64 %33 to i16*
  store volatile i16 %29, i16* %34, align 2
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %47, %1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1028
  %40 = inttoptr i64 %39 to i16*
  %41 = load volatile i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 24
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %61

46:                                               ; preds = %35
  br label %50

47:                                               ; preds = %60
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %35

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %60

54:                                               ; preds = %50
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1024
  %59 = inttoptr i64 %58 to i16*
  store volatile i16 255, i16* %59, align 2
  store i32 1, i32* %2, align 4
  br label %561

60:                                               ; preds = %53
  br label %47

61:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %67, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 30
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %77

66:                                               ; preds = %62
  br label %70

67:                                               ; preds = %70
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %62

70:                                               ; preds = %66
  %71 = load i16, i16* %6, align 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1028
  %76 = inttoptr i64 %75 to i16*
  store volatile i16 %71, i16* %76, align 2
  br label %67

77:                                               ; preds = %65
  %78 = load i16, i16* %6, align 2
  %79 = zext i16 %78 to i32
  %80 = or i32 %79, 4
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %6, align 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1028
  %86 = inttoptr i64 %85 to i16*
  store volatile i16 %81, i16* %86, align 2
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %99, %77
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1028
  %92 = inttoptr i64 %91 to i16*
  %93 = load volatile i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = and i32 %94, 24
  %96 = icmp ne i32 %95, 8
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  br label %113

98:                                               ; preds = %87
  br label %102

99:                                               ; preds = %112
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %87

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 60
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  br label %112

106:                                              ; preds = %102
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1024
  %111 = inttoptr i64 %110 to i16*
  store volatile i16 255, i16* %111, align 2
  store i32 1, i32* %2, align 4
  br label %561

112:                                              ; preds = %105
  br label %99

113:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %119, %113
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 15
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  br label %129

118:                                              ; preds = %114
  br label %122

119:                                              ; preds = %122
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %114

122:                                              ; preds = %118
  %123 = load i16, i16* %6, align 2
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1028
  %128 = inttoptr i64 %127 to i16*
  store volatile i16 %123, i16* %128, align 2
  br label %119

129:                                              ; preds = %117
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1028
  %137 = inttoptr i64 %136 to i16*
  %138 = load volatile i16, i16* %137, align 2
  %139 = zext i16 %138 to i32
  %140 = ashr i32 %139, 13
  %141 = sext i32 %140 to i64
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = getelementptr inbounds i8*, i8** %132, i64 %141
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %129
  br label %174

148:                                              ; preds = %129
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  switch i64 %151, label %162 [
    i64 1, label %152
    i64 2, label %154
    i64 3, label %156
    i64 6, label %158
    i64 7, label %160
  ]

152:                                              ; preds = %148
  %153 = load i8*, i8** @l451, align 8
  store i8* %153, i8** %4, align 8
  br label %173

154:                                              ; preds = %148
  %155 = load i8*, i8** @l295, align 8
  store i8* %155, i8** %4, align 8
  br label %173

156:                                              ; preds = %148
  %157 = load i8*, i8** @l527, align 8
  store i8* %157, i8** %4, align 8
  br label %173

158:                                              ; preds = %148
  %159 = load i8*, i8** @l649, align 8
  store i8* %159, i8** %4, align 8
  br label %173

160:                                              ; preds = %148
  %161 = load i8*, i8** @l565, align 8
  store i8* %161, i8** %4, align 8
  br label %173

162:                                              ; preds = %148
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1024
  %167 = inttoptr i64 %166 to i16*
  store volatile i16 255, i16* %167, align 2
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1028
  %172 = inttoptr i64 %171 to i16*
  store volatile i16 224, i16* %172, align 2
  store i32 2, i32* %2, align 4
  br label %561

173:                                              ; preds = %160, %158, %156, %154, %152
  br label %183

174:                                              ; preds = %147
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i8**, i8*** %176, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i8*, i8** %177, i64 %180
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %4, align 8
  br label %183

183:                                              ; preds = %174, %173
  %184 = load i8*, i8** %4, align 8
  %185 = call zeroext i16 @l695(i32* %8, i8* %184)
  store i16 %185, i16* %5, align 2
  br label %186

186:                                              ; preds = %192, %183
  %187 = load i16, i16* %5, align 2
  %188 = zext i16 %187 to i32
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  br label %559

191:                                              ; preds = %186
  br label %195

192:                                              ; preds = %537
  %193 = load i16, i16* %5, align 2
  %194 = add i16 %193, -1
  store i16 %194, i16* %5, align 2
  br label %186

195:                                              ; preds = %191
  %196 = call zeroext i8 @l293(i32* %8)
  store i8 %196, i8* %7, align 1
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1028
  %201 = inttoptr i64 %200 to i16*
  %202 = load volatile i16, i16* %201, align 2
  %203 = zext i16 %202 to i32
  %204 = and i32 %203, 8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %195
  br label %208

207:                                              ; preds = %195
  br label %560

208:                                              ; preds = %206
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1028
  %213 = inttoptr i64 %212 to i16*
  %214 = load volatile i16, i16* %213, align 2
  %215 = zext i16 %214 to i32
  %216 = and i32 %215, 16
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %208
  br label %262

219:                                              ; preds = %208
  store i32 0, i32* %9, align 4
  br label %220

220:                                              ; preds = %225, %219
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %221, 20
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  br label %244

224:                                              ; preds = %220
  br label %228

225:                                              ; preds = %228
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %220

228:                                              ; preds = %224
  %229 = load i16, i16* %6, align 2
  %230 = zext i16 %229 to i32
  %231 = or i32 %230, 2
  %232 = trunc i32 %231 to i16
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, 1028
  %237 = inttoptr i64 %236 to i16*
  store volatile i16 %232, i16* %237, align 2
  %238 = load i16, i16* %6, align 2
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %241, 1028
  %243 = inttoptr i64 %242 to i16*
  store volatile i16 %238, i16* %243, align 2
  br label %225

244:                                              ; preds = %223
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, 1028
  %249 = inttoptr i64 %248 to i16*
  %250 = load volatile i16, i16* %249, align 2
  %251 = zext i16 %250 to i32
  %252 = and i32 %251, 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %244
  br label %256

255:                                              ; preds = %244
  br label %560

256:                                              ; preds = %254
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %259, 1024
  %261 = inttoptr i64 %260 to i16*
  store volatile i16 255, i16* %261, align 2
  store i32 0, i32* %2, align 4
  br label %561

262:                                              ; preds = %218
  %263 = load i8, i8* %7, align 1
  %264 = zext i8 %263 to i32
  %265 = and i32 %264, 1
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %262
  br label %273

268:                                              ; preds = %262
  %269 = load i16, i16* %6, align 2
  %270 = zext i16 %269 to i32
  %271 = or i32 %270, 1
  %272 = trunc i32 %271 to i16
  store i16 %272, i16* %6, align 2
  br label %278

273:                                              ; preds = %267
  %274 = load i16, i16* %6, align 2
  %275 = zext i16 %274 to i32
  %276 = and i32 %275, -2
  %277 = trunc i32 %276 to i16
  store i16 %277, i16* %6, align 2
  br label %278

278:                                              ; preds = %273, %268
  %279 = load i16, i16* %6, align 2
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = add nsw i64 %282, 1028
  %284 = inttoptr i64 %283 to i16*
  store volatile i16 %279, i16* %284, align 2
  %285 = load i16, i16* %6, align 2
  %286 = zext i16 %285 to i32
  %287 = or i32 %286, 2
  %288 = trunc i32 %287 to i16
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = add nsw i64 %291, 1028
  %293 = inttoptr i64 %292 to i16*
  store volatile i16 %288, i16* %293, align 2
  %294 = load i16, i16* %6, align 2
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, 1028
  %299 = inttoptr i64 %298 to i16*
  store volatile i16 %294, i16* %299, align 2
  %300 = load i8, i8* %7, align 1
  %301 = zext i8 %300 to i32
  %302 = and i32 %301, 2
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %278
  br label %310

305:                                              ; preds = %278
  %306 = load i16, i16* %6, align 2
  %307 = zext i16 %306 to i32
  %308 = or i32 %307, 1
  %309 = trunc i32 %308 to i16
  store i16 %309, i16* %6, align 2
  br label %315

310:                                              ; preds = %304
  %311 = load i16, i16* %6, align 2
  %312 = zext i16 %311 to i32
  %313 = and i32 %312, -2
  %314 = trunc i32 %313 to i16
  store i16 %314, i16* %6, align 2
  br label %315

315:                                              ; preds = %310, %305
  %316 = load i16, i16* %6, align 2
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, 1028
  %321 = inttoptr i64 %320 to i16*
  store volatile i16 %316, i16* %321, align 2
  %322 = load i16, i16* %6, align 2
  %323 = zext i16 %322 to i32
  %324 = or i32 %323, 2
  %325 = trunc i32 %324 to i16
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = add nsw i64 %328, 1028
  %330 = inttoptr i64 %329 to i16*
  store volatile i16 %325, i16* %330, align 2
  %331 = load i16, i16* %6, align 2
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = add nsw i64 %334, 1028
  %336 = inttoptr i64 %335 to i16*
  store volatile i16 %331, i16* %336, align 2
  %337 = load i8, i8* %7, align 1
  %338 = zext i8 %337 to i32
  %339 = and i32 %338, 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %342, label %341

341:                                              ; preds = %315
  br label %347

342:                                              ; preds = %315
  %343 = load i16, i16* %6, align 2
  %344 = zext i16 %343 to i32
  %345 = or i32 %344, 1
  %346 = trunc i32 %345 to i16
  store i16 %346, i16* %6, align 2
  br label %352

347:                                              ; preds = %341
  %348 = load i16, i16* %6, align 2
  %349 = zext i16 %348 to i32
  %350 = and i32 %349, -2
  %351 = trunc i32 %350 to i16
  store i16 %351, i16* %6, align 2
  br label %352

352:                                              ; preds = %347, %342
  %353 = load i16, i16* %6, align 2
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = add nsw i64 %356, 1028
  %358 = inttoptr i64 %357 to i16*
  store volatile i16 %353, i16* %358, align 2
  %359 = load i16, i16* %6, align 2
  %360 = zext i16 %359 to i32
  %361 = or i32 %360, 2
  %362 = trunc i32 %361 to i16
  %363 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %365, 1028
  %367 = inttoptr i64 %366 to i16*
  store volatile i16 %362, i16* %367, align 2
  %368 = load i16, i16* %6, align 2
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 %371, 1028
  %373 = inttoptr i64 %372 to i16*
  store volatile i16 %368, i16* %373, align 2
  %374 = load i8, i8* %7, align 1
  %375 = zext i8 %374 to i32
  %376 = and i32 %375, 8
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %379, label %378

378:                                              ; preds = %352
  br label %384

379:                                              ; preds = %352
  %380 = load i16, i16* %6, align 2
  %381 = zext i16 %380 to i32
  %382 = or i32 %381, 1
  %383 = trunc i32 %382 to i16
  store i16 %383, i16* %6, align 2
  br label %389

384:                                              ; preds = %378
  %385 = load i16, i16* %6, align 2
  %386 = zext i16 %385 to i32
  %387 = and i32 %386, -2
  %388 = trunc i32 %387 to i16
  store i16 %388, i16* %6, align 2
  br label %389

389:                                              ; preds = %384, %379
  %390 = load i16, i16* %6, align 2
  %391 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = add nsw i64 %393, 1028
  %395 = inttoptr i64 %394 to i16*
  store volatile i16 %390, i16* %395, align 2
  %396 = load i16, i16* %6, align 2
  %397 = zext i16 %396 to i32
  %398 = or i32 %397, 2
  %399 = trunc i32 %398 to i16
  %400 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 2
  %402 = load i64, i64* %401, align 8
  %403 = add nsw i64 %402, 1028
  %404 = inttoptr i64 %403 to i16*
  store volatile i16 %399, i16* %404, align 2
  %405 = load i16, i16* %6, align 2
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = add nsw i64 %408, 1028
  %410 = inttoptr i64 %409 to i16*
  store volatile i16 %405, i16* %410, align 2
  %411 = load i8, i8* %7, align 1
  %412 = zext i8 %411 to i32
  %413 = and i32 %412, 16
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %389
  br label %421

416:                                              ; preds = %389
  %417 = load i16, i16* %6, align 2
  %418 = zext i16 %417 to i32
  %419 = or i32 %418, 1
  %420 = trunc i32 %419 to i16
  store i16 %420, i16* %6, align 2
  br label %426

421:                                              ; preds = %415
  %422 = load i16, i16* %6, align 2
  %423 = zext i16 %422 to i32
  %424 = and i32 %423, -2
  %425 = trunc i32 %424 to i16
  store i16 %425, i16* %6, align 2
  br label %426

426:                                              ; preds = %421, %416
  %427 = load i16, i16* %6, align 2
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = add nsw i64 %430, 1028
  %432 = inttoptr i64 %431 to i16*
  store volatile i16 %427, i16* %432, align 2
  %433 = load i16, i16* %6, align 2
  %434 = zext i16 %433 to i32
  %435 = or i32 %434, 2
  %436 = trunc i32 %435 to i16
  %437 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %437, i32 0, i32 2
  %439 = load i64, i64* %438, align 8
  %440 = add nsw i64 %439, 1028
  %441 = inttoptr i64 %440 to i16*
  store volatile i16 %436, i16* %441, align 2
  %442 = load i16, i16* %6, align 2
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 2
  %445 = load i64, i64* %444, align 8
  %446 = add nsw i64 %445, 1028
  %447 = inttoptr i64 %446 to i16*
  store volatile i16 %442, i16* %447, align 2
  %448 = load i8, i8* %7, align 1
  %449 = zext i8 %448 to i32
  %450 = and i32 %449, 32
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %453, label %452

452:                                              ; preds = %426
  br label %458

453:                                              ; preds = %426
  %454 = load i16, i16* %6, align 2
  %455 = zext i16 %454 to i32
  %456 = or i32 %455, 1
  %457 = trunc i32 %456 to i16
  store i16 %457, i16* %6, align 2
  br label %463

458:                                              ; preds = %452
  %459 = load i16, i16* %6, align 2
  %460 = zext i16 %459 to i32
  %461 = and i32 %460, -2
  %462 = trunc i32 %461 to i16
  store i16 %462, i16* %6, align 2
  br label %463

463:                                              ; preds = %458, %453
  %464 = load i16, i16* %6, align 2
  %465 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = add nsw i64 %467, 1028
  %469 = inttoptr i64 %468 to i16*
  store volatile i16 %464, i16* %469, align 2
  %470 = load i16, i16* %6, align 2
  %471 = zext i16 %470 to i32
  %472 = or i32 %471, 2
  %473 = trunc i32 %472 to i16
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = add nsw i64 %476, 1028
  %478 = inttoptr i64 %477 to i16*
  store volatile i16 %473, i16* %478, align 2
  %479 = load i16, i16* %6, align 2
  %480 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %480, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = add nsw i64 %482, 1028
  %484 = inttoptr i64 %483 to i16*
  store volatile i16 %479, i16* %484, align 2
  %485 = load i8, i8* %7, align 1
  %486 = zext i8 %485 to i32
  %487 = and i32 %486, 64
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %490, label %489

489:                                              ; preds = %463
  br label %495

490:                                              ; preds = %463
  %491 = load i16, i16* %6, align 2
  %492 = zext i16 %491 to i32
  %493 = or i32 %492, 1
  %494 = trunc i32 %493 to i16
  store i16 %494, i16* %6, align 2
  br label %500

495:                                              ; preds = %489
  %496 = load i16, i16* %6, align 2
  %497 = zext i16 %496 to i32
  %498 = and i32 %497, -2
  %499 = trunc i32 %498 to i16
  store i16 %499, i16* %6, align 2
  br label %500

500:                                              ; preds = %495, %490
  %501 = load i16, i16* %6, align 2
  %502 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %503 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %502, i32 0, i32 2
  %504 = load i64, i64* %503, align 8
  %505 = add nsw i64 %504, 1028
  %506 = inttoptr i64 %505 to i16*
  store volatile i16 %501, i16* %506, align 2
  %507 = load i16, i16* %6, align 2
  %508 = zext i16 %507 to i32
  %509 = or i32 %508, 2
  %510 = trunc i32 %509 to i16
  %511 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i32 0, i32 2
  %513 = load i64, i64* %512, align 8
  %514 = add nsw i64 %513, 1028
  %515 = inttoptr i64 %514 to i16*
  store volatile i16 %510, i16* %515, align 2
  %516 = load i16, i16* %6, align 2
  %517 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %518 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i32 0, i32 2
  %519 = load i64, i64* %518, align 8
  %520 = add nsw i64 %519, 1028
  %521 = inttoptr i64 %520 to i16*
  store volatile i16 %516, i16* %521, align 2
  %522 = load i8, i8* %7, align 1
  %523 = zext i8 %522 to i32
  %524 = and i32 %523, 128
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %527, label %526

526:                                              ; preds = %500
  br label %532

527:                                              ; preds = %500
  %528 = load i16, i16* %6, align 2
  %529 = zext i16 %528 to i32
  %530 = or i32 %529, 1
  %531 = trunc i32 %530 to i16
  store i16 %531, i16* %6, align 2
  br label %537

532:                                              ; preds = %526
  %533 = load i16, i16* %6, align 2
  %534 = zext i16 %533 to i32
  %535 = and i32 %534, -2
  %536 = trunc i32 %535 to i16
  store i16 %536, i16* %6, align 2
  br label %537

537:                                              ; preds = %532, %527
  %538 = load i16, i16* %6, align 2
  %539 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %540 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %539, i32 0, i32 2
  %541 = load i64, i64* %540, align 8
  %542 = add nsw i64 %541, 1028
  %543 = inttoptr i64 %542 to i16*
  store volatile i16 %538, i16* %543, align 2
  %544 = load i16, i16* %6, align 2
  %545 = zext i16 %544 to i32
  %546 = or i32 %545, 2
  %547 = trunc i32 %546 to i16
  %548 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %549 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %548, i32 0, i32 2
  %550 = load i64, i64* %549, align 8
  %551 = add nsw i64 %550, 1028
  %552 = inttoptr i64 %551 to i16*
  store volatile i16 %547, i16* %552, align 2
  %553 = load i16, i16* %6, align 2
  %554 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %555 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %554, i32 0, i32 2
  %556 = load i64, i64* %555, align 8
  %557 = add nsw i64 %556, 1028
  %558 = inttoptr i64 %557 to i16*
  store volatile i16 %553, i16* %558, align 2
  br label %192

559:                                              ; preds = %190
  br label %560

560:                                              ; preds = %559, %255, %207
  store i32 3, i32* %2, align 4
  br label %561

561:                                              ; preds = %560, %256, %162, %106, %54
  %562 = load i32, i32* %2, align 4
  ret i32 %562
}

declare dso_local zeroext i16 @l695(i32*, i8*) #1

declare dso_local zeroext i8 @l293(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
