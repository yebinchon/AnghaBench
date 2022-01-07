; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_set_ts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_set_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_set_ts(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 10
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 6
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  br label %24

23:                                               ; preds = %17
  br label %455

24:                                               ; preds = %22
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, 4294967294
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %24
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 3
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %54

51:                                               ; preds = %39, %24
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %50
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %71

66:                                               ; preds = %54
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = and i64 %69, -65537
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %66, %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %6, align 8
  br label %75

75:                                               ; preds = %84, %71
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 4
  %81 = icmp ult %struct.TYPE_14__* %76, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %124

83:                                               ; preds = %75
  br label %87

84:                                               ; preds = %123
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 1
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %6, align 8
  br label %75

87:                                               ; preds = %83
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %97, label %113

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %97
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %114, label %113

113:                                              ; preds = %105, %97, %92
  br label %123

114:                                              ; preds = %105
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = xor i64 %117, -1
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = and i64 %121, %118
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %114, %113
  br label %84

124:                                              ; preds = %82
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 9
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %129, %124
  br label %177

137:                                              ; preds = %129
  store i32 1, i32* %7, align 4
  br label %138

138:                                              ; preds = %143, %137
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 32
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  br label %176

142:                                              ; preds = %138
  br label %146

143:                                              ; preds = %175
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %138

146:                                              ; preds = %142
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = zext i32 %150 to i64
  %152 = lshr i64 %149, %151
  %153 = and i64 %152, 1
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %146
  br label %175

156:                                              ; preds = %146
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i64 %162
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @l610(%struct.TYPE_14__* %163, i32 %164)
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i64 %171
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @l686(%struct.TYPE_14__* %172, i32 %173)
  br label %175

175:                                              ; preds = %156, %155
  br label %143

176:                                              ; preds = %141
  br label %177

177:                                              ; preds = %176, %136
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = and i64 %180, 65534
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %183, %177
  br label %194

189:                                              ; preds = %183
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, 16
  store i32 %193, i32* %191, align 8
  br label %199

194:                                              ; preds = %188
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, -17
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %194, %189
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 10
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = trunc i32 %208 to i8
  %210 = call i32 @l(%struct.TYPE_13__* %202, i32 %205, i8 zeroext %209)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 11
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %199
  br label %338

216:                                              ; preds = %199
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %216
  br label %223

222:                                              ; preds = %216
  store i32 -1, i32* %9, align 4
  br label %228

223:                                              ; preds = %221
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %9, align 4
  br label %228

228:                                              ; preds = %223, %222
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 10
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = shl i64 %234, 6
  %236 = trunc i64 %235 to i8
  %237 = call i32 @l(%struct.TYPE_13__* %231, i32 9, i8 zeroext %236)
  store i32 1, i32* %8, align 4
  br label %238

238:                                              ; preds = %243, %228
  %239 = load i32, i32* %8, align 4
  %240 = icmp slt i32 %239, 32
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  br label %267

242:                                              ; preds = %238
  br label %246

243:                                              ; preds = %257
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %8, align 4
  br label %238

246:                                              ; preds = %242
  br label %247

247:                                              ; preds = %255, %246
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 10
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = call i32 @u(%struct.TYPE_13__* %250, i32 0)
  %252 = and i32 %251, 1
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %247
  br label %257

255:                                              ; preds = %247
  %256 = call i32 @outb(i32 128, i32 0)
  br label %247

257:                                              ; preds = %254
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 10
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %8, align 4
  %263 = ashr i32 %261, %262
  %264 = and i32 %263, 1
  %265 = trunc i32 %264 to i8
  %266 = call i32 @l(%struct.TYPE_13__* %260, i32 10, i8 zeroext %265)
  br label %243

267:                                              ; preds = %241
  br label %268

268:                                              ; preds = %276, %267
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 10
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = call i32 @u(%struct.TYPE_13__* %271, i32 0)
  %273 = and i32 %272, 1
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %268
  br label %278

276:                                              ; preds = %268
  %277 = call i32 @outb(i32 128, i32 0)
  br label %268

278:                                              ; preds = %275
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 10
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %280, align 8
  %282 = load i32, i32* %9, align 4
  %283 = trunc i32 %282 to i8
  %284 = zext i8 %283 to i32
  %285 = and i32 %284, 1
  %286 = trunc i32 %285 to i8
  %287 = call i32 @l(%struct.TYPE_13__* %281, i32 10, i8 zeroext %286)
  store i32 1, i32* %8, align 4
  br label %288

288:                                              ; preds = %293, %278
  %289 = load i32, i32* %8, align 4
  %290 = icmp slt i32 %289, 32
  br i1 %290, label %292, label %291

291:                                              ; preds = %288
  br label %317

292:                                              ; preds = %288
  br label %296

293:                                              ; preds = %307
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %8, align 4
  br label %288

296:                                              ; preds = %292
  br label %297

297:                                              ; preds = %305, %296
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 10
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %299, align 8
  %301 = call i32 @u(%struct.TYPE_13__* %300, i32 0)
  %302 = and i32 %301, 1
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %297
  br label %307

305:                                              ; preds = %297
  %306 = call i32 @outb(i32 128, i32 0)
  br label %297

307:                                              ; preds = %304
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 10
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %309, align 8
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %8, align 4
  %313 = ashr i32 %311, %312
  %314 = and i32 %313, 1
  %315 = trunc i32 %314 to i8
  %316 = call i32 @l(%struct.TYPE_13__* %310, i32 10, i8 zeroext %315)
  br label %293

317:                                              ; preds = %291
  br label %318

318:                                              ; preds = %326, %317
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 10
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %320, align 8
  %322 = call i32 @u(%struct.TYPE_13__* %321, i32 0)
  %323 = and i32 %322, 1
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %326, label %325

325:                                              ; preds = %318
  br label %328

326:                                              ; preds = %318
  %327 = call i32 @outb(i32 128, i32 0)
  br label %318

328:                                              ; preds = %325
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 10
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %330, align 8
  %332 = load i32, i32* %9, align 4
  %333 = trunc i32 %332 to i8
  %334 = zext i8 %333 to i32
  %335 = and i32 %334, 1
  %336 = trunc i32 %335 to i8
  %337 = call i32 @l(%struct.TYPE_13__* %331, i32 10, i8 zeroext %336)
  br label %338

338:                                              ; preds = %328, %215
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp eq i32 %341, 3
  br i1 %342, label %344, label %343

343:                                              ; preds = %338
  br label %401

344:                                              ; preds = %338
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = and i64 %348, 254
  %350 = trunc i64 %349 to i8
  %351 = call i32 @i(%struct.TYPE_14__* %345, i32 34, i8 zeroext %350)
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = lshr i64 %355, 8
  %357 = trunc i64 %356 to i8
  %358 = call i32 @i(%struct.TYPE_14__* %352, i32 35, i8 zeroext %357)
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = lshr i64 %362, 16
  %364 = trunc i64 %363 to i8
  %365 = call i32 @i(%struct.TYPE_14__* %359, i32 36, i8 zeroext %364)
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = lshr i64 %369, 24
  %371 = trunc i64 %370 to i8
  %372 = call i32 @i(%struct.TYPE_14__* %366, i32 37, i8 zeroext %371)
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = and i64 %376, 254
  %378 = trunc i64 %377 to i8
  %379 = call i32 @i(%struct.TYPE_14__* %373, i32 43, i8 zeroext %378)
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = lshr i64 %383, 8
  %385 = trunc i64 %384 to i8
  %386 = call i32 @i(%struct.TYPE_14__* %380, i32 44, i8 zeroext %385)
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = lshr i64 %390, 16
  %392 = trunc i64 %391 to i8
  %393 = call i32 @i(%struct.TYPE_14__* %387, i32 45, i8 zeroext %392)
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = lshr i64 %397, 24
  %399 = trunc i64 %398 to i8
  %400 = call i32 @i(%struct.TYPE_14__* %394, i32 46, i8 zeroext %399)
  br label %401

401:                                              ; preds = %344, %343
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 9
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %401
  br label %418

407:                                              ; preds = %401
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 1
  %410 = load %struct.TYPE_14__*, %struct.TYPE_14__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %410, i64 0
  %412 = call i32 @l138(%struct.TYPE_14__* %411)
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 1
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i64 1
  %417 = call i32 @l138(%struct.TYPE_14__* %416)
  br label %449

418:                                              ; preds = %406
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = icmp ne i32 %421, 2
  br i1 %422, label %424, label %423

423:                                              ; preds = %418
  br label %427

424:                                              ; preds = %418
  %425 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %426 = call i32 @l168(%struct.TYPE_13__* %425)
  br label %427

427:                                              ; preds = %424, %423
  %428 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 1
  %430 = load %struct.TYPE_14__*, %struct.TYPE_14__** %429, align 8
  store %struct.TYPE_14__* %430, %struct.TYPE_14__** %6, align 8
  br label %431

431:                                              ; preds = %440, %427
  %432 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i64 4
  %437 = icmp ult %struct.TYPE_14__* %432, %436
  br i1 %437, label %439, label %438

438:                                              ; preds = %431
  br label %448

439:                                              ; preds = %431
  br label %443

440:                                              ; preds = %443
  %441 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 1
  store %struct.TYPE_14__* %442, %struct.TYPE_14__** %6, align 8
  br label %431

443:                                              ; preds = %439
  %444 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 8
  %447 = call i32 @l179(%struct.TYPE_14__* %444, i32* %446)
  br label %440

448:                                              ; preds = %438
  br label %449

449:                                              ; preds = %448, %407
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %451 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %451, i32 0, i32 7
  %453 = load i32, i32* %452, align 8
  %454 = call i32 @cp_set_baud(%struct.TYPE_14__* %450, i32 %453)
  br label %455

455:                                              ; preds = %449, %23
  ret void
}

declare dso_local i32 @l610(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @l686(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @l(%struct.TYPE_13__*, i32, i8 zeroext) #1

declare dso_local i32 @u(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @i(%struct.TYPE_14__*, i32, i8 zeroext) #1

declare dso_local i32 @l138(%struct.TYPE_14__*) #1

declare dso_local i32 @l168(%struct.TYPE_13__*) #1

declare dso_local i32 @l179(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @cp_set_baud(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
