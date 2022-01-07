; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_WQjAp4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_WQjAp4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@eKIU_4 = common dso_local global i32 0, align 4
@D1OxN4 = common dso_local global i32 0, align 4
@p9baI3 = common dso_local global i32 0, align 4
@KZp71 = common dso_local global i32 0, align 4
@KZEMj4 = common dso_local global i32 0, align 4
@qS5lW1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__*)* @WQjAp4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WQjAp4(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 64
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %399

14:                                               ; preds = %3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %29, label %28

28:                                               ; preds = %21, %14
  br label %30

29:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %400

30:                                               ; preds = %28
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35, %30
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %400

44:                                               ; preds = %42
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = call i32 @Mrgr62(i64 %49, i32 %54, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %62

61:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %400

62:                                               ; preds = %60
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %80, label %72

72:                                               ; preds = %62
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %229

80:                                               ; preds = %72, %62
  %81 = load i32, i32* @eKIU_4, align 4
  %82 = shl i32 %81, 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = and i64 %92, 15
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %80
  br label %203

96:                                               ; preds = %80
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = and i64 %101, 15
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %96
  br label %119

105:                                              ; preds = %96
  %106 = load i32, i32* @D1OxN4, align 4
  %107 = load i32, i32* @p9baI3, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @KZp71, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @KZEMj4, align 4
  %112 = or i32 %110, %111
  %113 = shl i32 %112, 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %113
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %105, %104
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = and i64 %124, 15
  %126 = icmp eq i64 %125, 1
  %127 = zext i1 %126 to i32
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = and i64 %132, 15
  %134 = icmp eq i64 %133, 1
  %135 = zext i1 %134 to i32
  %136 = icmp ne i32 %127, %135
  br i1 %136, label %138, label %137

137:                                              ; preds = %119
  br label %150

138:                                              ; preds = %119
  %139 = load i32, i32* @p9baI3, align 4
  %140 = load i32, i32* @KZp71, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @KZEMj4, align 4
  %143 = or i32 %141, %142
  %144 = shl i32 %143, 0
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %144
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %138, %137
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = and i64 %155, 240
  %157 = icmp ule i64 %156, 80
  %158 = zext i1 %157 to i32
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  %163 = load i64, i64* %162, align 8
  %164 = and i64 %163, 240
  %165 = icmp ule i64 %164, 80
  %166 = zext i1 %165 to i32
  %167 = icmp ne i32 %158, %166
  br i1 %167, label %169, label %168

168:                                              ; preds = %150
  br label %179

169:                                              ; preds = %150
  %170 = load i32, i32* @KZp71, align 4
  %171 = load i32, i32* @KZEMj4, align 4
  %172 = or i32 %170, %171
  %173 = shl i32 %172, 0
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %169, %168
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = xor i64 %184, %189
  %191 = and i64 %190, 268435696
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %179
  br label %202

194:                                              ; preds = %179
  %195 = load i32, i32* @KZEMj4, align 4
  %196 = shl i32 %195, 0
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %196
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %194, %193
  br label %228

203:                                              ; preds = %95
  %204 = load i32, i32* @qS5lW1, align 4
  %205 = shl i32 %204, 0
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %205
  store i32 %210, i32* %208, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  %215 = load i64, i64* %214, align 8
  %216 = and i64 %215, 15
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %203
  br label %227

219:                                              ; preds = %203
  %220 = load i32, i32* @KZEMj4, align 4
  %221 = shl i32 %220, 0
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %221
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %219, %218
  br label %228

228:                                              ; preds = %227, %202
  br label %229

229:                                              ; preds = %228, %79
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %243, label %236

236:                                              ; preds = %229
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %248

243:                                              ; preds = %236, %229
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 2
  br i1 %247, label %249, label %248

248:                                              ; preds = %243, %236
  br label %398

249:                                              ; preds = %243
  %250 = load i32, i32* @eKIU_4, align 4
  %251 = shl i32 %250, 1
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %251
  store i32 %256, i32* %254, align 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = and i64 %261, 15
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %249
  br label %372

265:                                              ; preds = %249
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 1
  %270 = load i64, i64* %269, align 8
  %271 = and i64 %270, 15
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %265
  br label %288

274:                                              ; preds = %265
  %275 = load i32, i32* @D1OxN4, align 4
  %276 = load i32, i32* @p9baI3, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* @KZp71, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @KZEMj4, align 4
  %281 = or i32 %279, %280
  %282 = shl i32 %281, 1
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %282
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %274, %273
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = and i64 %293, 15
  %295 = icmp eq i64 %294, 1
  %296 = zext i1 %295 to i32
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = load i64*, i64** %298, align 8
  %300 = getelementptr inbounds i64, i64* %299, i64 1
  %301 = load i64, i64* %300, align 8
  %302 = and i64 %301, 15
  %303 = icmp eq i64 %302, 1
  %304 = zext i1 %303 to i32
  %305 = icmp ne i32 %296, %304
  br i1 %305, label %307, label %306

306:                                              ; preds = %288
  br label %319

307:                                              ; preds = %288
  %308 = load i32, i32* @p9baI3, align 4
  %309 = load i32, i32* @KZp71, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @KZEMj4, align 4
  %312 = or i32 %310, %311
  %313 = shl i32 %312, 1
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %313
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %307, %306
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = and i64 %324, 240
  %326 = icmp ule i64 %325, 80
  %327 = zext i1 %326 to i32
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 1
  %330 = load i64*, i64** %329, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 1
  %332 = load i64, i64* %331, align 8
  %333 = and i64 %332, 240
  %334 = icmp ule i64 %333, 80
  %335 = zext i1 %334 to i32
  %336 = icmp ne i32 %327, %335
  br i1 %336, label %338, label %337

337:                                              ; preds = %319
  br label %348

338:                                              ; preds = %319
  %339 = load i32, i32* @KZp71, align 4
  %340 = load i32, i32* @KZEMj4, align 4
  %341 = or i32 %339, %340
  %342 = shl i32 %341, 1
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %346, %342
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %338, %337
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 1
  %351 = load i64*, i64** %350, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 1
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = xor i64 %353, %358
  %360 = and i64 %359, 268435696
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %348
  br label %371

363:                                              ; preds = %348
  %364 = load i32, i32* @KZEMj4, align 4
  %365 = shl i32 %364, 1
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, %365
  store i32 %370, i32* %368, align 4
  br label %371

371:                                              ; preds = %363, %362
  br label %397

372:                                              ; preds = %264
  %373 = load i32, i32* @qS5lW1, align 4
  %374 = shl i32 %373, 1
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = or i32 %378, %374
  store i32 %379, i32* %377, align 4
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 1
  %382 = load i64*, i64** %381, align 8
  %383 = getelementptr inbounds i64, i64* %382, i64 1
  %384 = load i64, i64* %383, align 8
  %385 = and i64 %384, 15
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %372
  br label %396

388:                                              ; preds = %372
  %389 = load i32, i32* @KZEMj4, align 4
  %390 = shl i32 %389, 1
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %394, %390
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %388, %387
  br label %397

397:                                              ; preds = %396, %371
  br label %398

398:                                              ; preds = %397, %248
  br label %399

399:                                              ; preds = %398, %13
  store i32 1, i32* %4, align 4
  br label %400

400:                                              ; preds = %399, %61, %43, %29
  %401 = load i32, i32* %4, align 4
  ret i32 %401
}

declare dso_local i32 @Mrgr62(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
