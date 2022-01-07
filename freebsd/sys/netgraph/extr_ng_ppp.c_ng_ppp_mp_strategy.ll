; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_mp_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_mp_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, %struct.ng_ppp_link* }
%struct.ng_ppp_link = type { i32, i32, %struct.TYPE_4__, %struct.timeval }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i64, i32 }

@NG_PPP_MAX_LINKS = common dso_local global i32 0, align 4
@ng_ppp_intcmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @ng_ppp_mp_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_ppp_mp_strategy(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timeval, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ng_ppp_link*, align 8
  %21 = alloca %struct.timeval, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ng_ppp_link*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.ng_ppp_link*, align 8
  %29 = alloca %struct.ng_ppp_link*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.ng_ppp_link*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %33)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %7, align 8
  %35 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %8, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %9, align 8
  %39 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %10, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load i32, i32* %5, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  store i32 1, i32* %19, align 4
  br label %508

50:                                               ; preds = %3
  %51 = call i32 @getmicrouptime(%struct.timeval* %16)
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %155, %50
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %158

58:                                               ; preds = %52
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %61, i64 %68
  store %struct.ng_ppp_link* %69, %struct.ng_ppp_link** %20, align 8
  %70 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %71 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %38, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %41, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %81 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %58
  br label %155

85:                                               ; preds = %58
  %86 = bitcast %struct.timeval* %21 to i8*
  %87 = bitcast %struct.timeval* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  %88 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %89 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %88, i32 0, i32 3
  %90 = call i32 @timevalsub(%struct.timeval* %21, %struct.timeval* %89)
  %91 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %92 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %91, i32 0, i32 3
  %93 = bitcast %struct.timeval* %92 to i8*
  %94 = bitcast %struct.timeval* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 16, i1 false)
  %95 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %100, 10
  br i1 %101, label %102, label %105

102:                                              ; preds = %98, %85
  %103 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %104 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  br label %155

105:                                              ; preds = %98
  %106 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %107 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %109, 10
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = mul nsw i64 %111, %113
  %115 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %116 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %120, 1000
  %122 = mul nsw i32 %118, %121
  %123 = sdiv i32 %122, 100
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %114, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %22, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %129 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %133 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %105
  %137 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %138 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  br label %154

139:                                              ; preds = %105
  %140 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %141 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 100, %142
  %144 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %20, align 8
  %145 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sdiv i32 %143, %147
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %38, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %148
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %139, %136
  br label %155

155:                                              ; preds = %154, %102, %84
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %52

158:                                              ; preds = %52
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ng_ppp_intcmp, align 4
  %163 = call i32 @qsort_r(i32* %41, i32 %161, i32 4, i32* %38, i32 %162)
  store i32 1, i32* %18, align 4
  br label %164

164:                                              ; preds = %223, %158
  %165 = load i32, i32* %18, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %226

170:                                              ; preds = %164
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %171

171:                                              ; preds = %214, %170
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %18, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %217

175:                                              ; preds = %171
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %41, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %38, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %41, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %38, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %182, %189
  store i32 %190, i32* %23, align 4
  %191 = load i32, i32* %23, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %193, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %41, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %197, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %194, i64 %204
  %206 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %191, %208
  %210 = add nsw i32 %209, 99
  %211 = sdiv i32 %210, 100
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %175
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %17, align 4
  br label %171

217:                                              ; preds = %171
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %5, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %226

222:                                              ; preds = %217
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %18, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %18, align 4
  br label %164

226:                                              ; preds = %221, %164
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %227

227:                                              ; preds = %263, %226
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* %18, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %266

231:                                              ; preds = %227
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 2
  %234 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %233, align 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %17, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %41, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %237, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %234, i64 %244
  %246 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  store i32 %248, i32* %24, align 4
  %249 = load i32, i32* %17, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %41, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %38, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %24, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load i32, i32* %14, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %15, align 4
  br label %263

263:                                              ; preds = %231
  %264 = load i32, i32* %17, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %17, align 4
  br label %227

266:                                              ; preds = %227
  %267 = load i32, i32* %5, align 4
  %268 = mul nsw i32 %267, 100
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %268, %269
  %271 = load i32, i32* %15, align 4
  %272 = sdiv i32 %271, 2
  %273 = add nsw i32 %270, %272
  %274 = load i32, i32* %15, align 4
  %275 = sdiv i32 %273, %274
  store i32 %275, i32* %12, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %276

276:                                              ; preds = %328, %266
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* %18, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %331

280:                                              ; preds = %276
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 2
  %283 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %282, align 8
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 1
  %286 = load i64*, i64** %285, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %41, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %286, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %283, i64 %293
  %295 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  store i32 %297, i32* %25, align 4
  %298 = load i32, i32* %25, align 4
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* %17, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %41, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %38, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = sub nsw i32 %299, %306
  %308 = mul nsw i32 %298, %307
  %309 = add nsw i32 %308, 50
  %310 = sdiv i32 %309, 100
  %311 = load i32*, i32** %6, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %41, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %311, i64 %316
  store i32 %310, i32* %317, align 4
  %318 = load i32*, i32** %6, align 8
  %319 = load i32, i32* %17, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %41, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %318, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %13, align 4
  %327 = add nsw i32 %326, %325
  store i32 %327, i32* %13, align 4
  br label %328

328:                                              ; preds = %280
  %329 = load i32, i32* %17, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %17, align 4
  br label %276

331:                                              ; preds = %276
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* %5, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %396

335:                                              ; preds = %331
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 2
  %338 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %337, align 8
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 1
  %341 = load i64*, i64** %340, align 8
  %342 = getelementptr inbounds i32, i32* %41, i64 0
  %343 = load i32, i32* %342, align 16
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %341, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %338, i64 %346
  store %struct.ng_ppp_link* %347, %struct.ng_ppp_link** %26, align 8
  store i32 0, i32* %27, align 4
  store i32 1, i32* %17, align 4
  br label %348

348:                                              ; preds = %380, %335
  %349 = load i32, i32* %17, align 4
  %350 = load i32, i32* %18, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %383

352:                                              ; preds = %348
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 2
  %355 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %354, align 8
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  %358 = load i64*, i64** %357, align 8
  %359 = load i32, i32* %17, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %41, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i64, i64* %358, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %355, i64 %365
  store %struct.ng_ppp_link* %366, %struct.ng_ppp_link** %28, align 8
  %367 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %28, align 8
  %368 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %26, align 8
  %372 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp sgt i32 %370, %374
  br i1 %375, label %376, label %379

376:                                              ; preds = %352
  %377 = load i32, i32* %17, align 4
  store i32 %377, i32* %27, align 4
  %378 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %28, align 8
  store %struct.ng_ppp_link* %378, %struct.ng_ppp_link** %26, align 8
  br label %379

379:                                              ; preds = %376, %352
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %17, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %17, align 4
  br label %348

383:                                              ; preds = %348
  %384 = load i32, i32* %5, align 4
  %385 = load i32, i32* %13, align 4
  %386 = sub nsw i32 %384, %385
  %387 = load i32*, i32** %6, align 8
  %388 = load i32, i32* %27, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %41, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %387, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, %386
  store i32 %395, i32* %393, align 4
  br label %507

396:                                              ; preds = %331
  br label %397

397:                                              ; preds = %492, %396
  %398 = load i32, i32* %13, align 4
  %399 = load i32, i32* %5, align 4
  %400 = icmp sgt i32 %398, %399
  br i1 %400, label %401, label %506

401:                                              ; preds = %397
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 2
  %404 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %403, align 8
  %405 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 1
  %407 = load i64*, i64** %406, align 8
  %408 = getelementptr inbounds i32, i32* %41, i64 0
  %409 = load i32, i32* %408, align 16
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %407, i64 %410
  %412 = load i64, i64* %411, align 8
  %413 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %404, i64 %412
  store %struct.ng_ppp_link* %413, %struct.ng_ppp_link** %29, align 8
  store i32 0, i32* %31, align 4
  store i32 1, i32* %17, align 4
  br label %414

414:                                              ; preds = %466, %401
  %415 = load i32, i32* %17, align 4
  %416 = load i32, i32* %18, align 4
  %417 = icmp slt i32 %415, %416
  br i1 %417, label %418, label %469

418:                                              ; preds = %414
  %419 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 2
  %421 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %420, align 8
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 1
  %424 = load i64*, i64** %423, align 8
  %425 = load i32, i32* %17, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %41, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i64, i64* %424, i64 %429
  %431 = load i64, i64* %430, align 8
  %432 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %421, i64 %431
  store %struct.ng_ppp_link* %432, %struct.ng_ppp_link** %32, align 8
  %433 = load i32*, i32** %6, align 8
  %434 = load i32, i32* %31, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %41, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %433, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %462, label %442

442:                                              ; preds = %418
  %443 = load i32*, i32** %6, align 8
  %444 = load i32, i32* %17, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %41, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %443, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = icmp sgt i32 %450, 0
  br i1 %451, label %452, label %465

452:                                              ; preds = %442
  %453 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %32, align 8
  %454 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %453, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %29, align 8
  %458 = getelementptr inbounds %struct.ng_ppp_link, %struct.ng_ppp_link* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = icmp slt i32 %456, %460
  br i1 %461, label %462, label %465

462:                                              ; preds = %452, %418
  %463 = load i32, i32* %17, align 4
  store i32 %463, i32* %31, align 4
  %464 = load %struct.ng_ppp_link*, %struct.ng_ppp_link** %32, align 8
  store %struct.ng_ppp_link* %464, %struct.ng_ppp_link** %29, align 8
  br label %465

465:                                              ; preds = %462, %452, %442
  br label %466

466:                                              ; preds = %465
  %467 = load i32, i32* %17, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %17, align 4
  br label %414

469:                                              ; preds = %414
  %470 = load i32, i32* %13, align 4
  %471 = load i32, i32* %5, align 4
  %472 = sub nsw i32 %470, %471
  store i32 %472, i32* %30, align 4
  %473 = load i32, i32* %30, align 4
  %474 = load i32*, i32** %6, align 8
  %475 = load i32, i32* %31, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %41, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %474, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = icmp sgt i32 %473, %481
  br i1 %482, label %483, label %492

483:                                              ; preds = %469
  %484 = load i32*, i32** %6, align 8
  %485 = load i32, i32* %31, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %41, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %484, i64 %489
  %491 = load i32, i32* %490, align 4
  store i32 %491, i32* %30, align 4
  br label %492

492:                                              ; preds = %483, %469
  %493 = load i32, i32* %30, align 4
  %494 = load i32*, i32** %6, align 8
  %495 = load i32, i32* %31, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %41, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %494, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = sub nsw i32 %501, %493
  store i32 %502, i32* %500, align 4
  %503 = load i32, i32* %30, align 4
  %504 = load i32, i32* %13, align 4
  %505 = sub nsw i32 %504, %503
  store i32 %505, i32* %13, align 4
  br label %397

506:                                              ; preds = %397
  br label %507

507:                                              ; preds = %506, %383
  store i32 0, i32* %19, align 4
  br label %508

508:                                              ; preds = %507, %46
  %509 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %509)
  %510 = load i32, i32* %19, align 4
  switch i32 %510, label %512 [
    i32 0, label %511
    i32 1, label %511
  ]

511:                                              ; preds = %508, %508
  ret void

512:                                              ; preds = %508
  unreachable
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getmicrouptime(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @qsort_r(i32*, i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
