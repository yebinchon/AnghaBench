; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l179.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l179.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @l179 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l179(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %22

21:                                               ; preds = %15, %2
  br label %321

22:                                               ; preds = %20
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %32

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  %31 = call i32 @memset(%struct.TYPE_10__* %30, i32 0, i32 16)
  br label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @memcpy(%struct.TYPE_10__* %34, i32* %35, i32 16)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %54

48:                                               ; preds = %37
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 16
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %47
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %60, %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 32
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %230

59:                                               ; preds = %55
  br label %63

60:                                               ; preds = %229
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %55

63:                                               ; preds = %59
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 31
  store i32 %72, i32* %70, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %63
  br label %229

75:                                               ; preds = %63
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %94

84:                                               ; preds = %75
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %104

94:                                               ; preds = %83
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 3
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %94, %84
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %6, align 8
  br label %108

108:                                              ; preds = %117, %104
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 4
  %114 = icmp ult %struct.TYPE_9__* %109, %113
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  br label %228

116:                                              ; preds = %108
  br label %120

117:                                              ; preds = %227, %126
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 1
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %6, align 8
  br label %108

120:                                              ; preds = %116
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 3
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  br label %127

126:                                              ; preds = %120
  br label %117

127:                                              ; preds = %125
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %130, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %127
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 16
  br i1 %149, label %150, label %155

150:                                              ; preds = %140
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150, %140, %127
  br label %164

156:                                              ; preds = %150
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 0, i32* %163, align 4
  br label %228

164:                                              ; preds = %155
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %167, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %164
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %180, %188
  %190 = and i32 %189, 1
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %209, label %192

192:                                              ; preds = %177, %164
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %195, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %192
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %7, align 4
  %205 = ashr i32 %203, %204
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %200, %192
  br label %217

209:                                              ; preds = %200, %177
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 0, i32* %216, align 4
  br label %228

217:                                              ; preds = %208
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %220, %223
  br i1 %224, label %226, label %225

225:                                              ; preds = %217
  br label %227

226:                                              ; preds = %217
  br label %228

227:                                              ; preds = %225
  br label %117

228:                                              ; preds = %226, %209, %156, %115
  br label %229

229:                                              ; preds = %228, %74
  br label %60

230:                                              ; preds = %58
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, -2
  %236 = call i32 @l(%struct.TYPE_8__* %231, i32 8, i32 %235)
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 %240, 5
  %242 = call i32 @l(%struct.TYPE_8__* %237, i32 28, i32 %241)
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %244 = call i32 @l(%struct.TYPE_8__* %243, i32 31, i32 139)
  store i32 1, i32* %7, align 4
  br label %245

245:                                              ; preds = %250, %230
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %246, 32
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  br label %287

249:                                              ; preds = %245
  br label %253

250:                                              ; preds = %284
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %7, align 4
  br label %245

253:                                              ; preds = %249
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %253
  br label %284

265:                                              ; preds = %253
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = shl i32 %273, 5
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %274, %282
  br label %284

284:                                              ; preds = %265, %264
  %285 = phi i32 [ 141, %264 ], [ %283, %265 ]
  %286 = call i32 @l(%struct.TYPE_8__* %254, i32 31, i32 %285)
  br label %250

287:                                              ; preds = %248
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @l(%struct.TYPE_8__* %288, i32 8, i32 %291)
  store i32 0, i32* %7, align 4
  br label %293

293:                                              ; preds = %298, %287
  %294 = load i32, i32* %7, align 4
  %295 = icmp slt i32 %294, 4
  br i1 %295, label %297, label %296

296:                                              ; preds = %293
  br label %321

297:                                              ; preds = %293
  br label %301

298:                                              ; preds = %313, %312
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %7, align 4
  br label %293

301:                                              ; preds = %297
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %303, align 8
  %305 = load i32, i32* %7, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp ne i32 %309, 3
  br i1 %310, label %312, label %311

311:                                              ; preds = %301
  br label %313

312:                                              ; preds = %301
  br label %298

313:                                              ; preds = %311
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i64 %318
  %320 = call i32 @l138(%struct.TYPE_9__* %319)
  br label %298

321:                                              ; preds = %21, %296
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @l(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @l138(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
