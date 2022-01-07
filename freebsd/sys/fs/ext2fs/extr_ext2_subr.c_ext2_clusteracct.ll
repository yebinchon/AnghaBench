; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_subr.c_ext2_clusteracct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_subr.c_ext2_clusteracct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@NBBY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_clusteracct(%struct.m_ext2fs* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.m_ext2fs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %22 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %30 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %126

38:                                               ; preds = %5
  store i32 0, i32* %20, align 4
  store i32 1, i32* %18, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %19, align 4
  br label %39

39:                                               ; preds = %95, %38
  %40 = load i32, i32* %19, align 4
  %41 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %42 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %98

47:                                               ; preds = %39
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %15, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* %18, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %20, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %20, align 4
  br label %80

59:                                               ; preds = %47
  %60 = load i32, i32* %20, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i32, i32* %20, align 4
  %64 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %65 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %70 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %20, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  store i32 0, i32* %20, align 4
  br label %79

79:                                               ; preds = %72, %59
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @NBBY, align 4
  %83 = sub nsw i32 %82, 1
  %84 = and i32 %81, %83
  %85 = load i32, i32* @NBBY, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %18, align 4
  %90 = shl i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %94

91:                                               ; preds = %80
  %92 = load i64, i64* %15, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %15, align 8
  store i32 1, i32* %18, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %19, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %19, align 4
  br label %39

98:                                               ; preds = %39
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load i32, i32* %20, align 4
  %103 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %104 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %109 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %20, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %111, %98
  %119 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %120 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %119, i32 0, i32 3
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %118, %5
  %127 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %128 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %342

132:                                              ; preds = %126
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %13, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %137 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = add i64 %135, %139
  store i64 %140, i64* %14, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %143 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ugt i64 %141, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %132
  %150 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %151 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %150, i32 0, i32 2
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %14, align 8
  br label %156

156:                                              ; preds = %149, %132
  %157 = load i64, i64* %13, align 8
  %158 = load i32, i32* @NBBY, align 4
  %159 = sext i32 %158 to i64
  %160 = udiv i64 %157, %159
  store i64 %160, i64* %15, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load i32, i32* @NBBY, align 4
  %163 = sext i32 %162 to i64
  %164 = urem i64 %161, %163
  %165 = trunc i64 %164 to i32
  %166 = shl i32 1, %165
  store i32 %166, i32* %18, align 4
  %167 = load i64, i64* %13, align 8
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %19, align 4
  br label %169

169:                                              ; preds = %199, %156
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %14, align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %174, label %202

174:                                              ; preds = %169
  %175 = load i8*, i8** %7, align 8
  %176 = load i64, i64* %15, align 8
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = load i32, i32* %18, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  br label %202

184:                                              ; preds = %174
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* @NBBY, align 4
  %187 = sub nsw i32 %186, 1
  %188 = and i32 %185, %187
  %189 = load i32, i32* @NBBY, align 4
  %190 = sub nsw i32 %189, 1
  %191 = icmp ne i32 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load i32, i32* %18, align 4
  %194 = shl i32 %193, 1
  store i32 %194, i32* %18, align 4
  br label %198

195:                                              ; preds = %184
  %196 = load i64, i64* %15, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %15, align 8
  store i32 1, i32* %18, align 4
  br label %198

198:                                              ; preds = %195, %192
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %19, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %19, align 4
  br label %169

202:                                              ; preds = %183, %169
  %203 = load i32, i32* %19, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %13, align 8
  %206 = sub i64 %204, %205
  store i64 %206, i64* %16, align 8
  %207 = load i64, i64* %9, align 8
  %208 = sub i64 %207, 1
  store i64 %208, i64* %13, align 8
  %209 = load i64, i64* %13, align 8
  %210 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %211 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = sub i64 %209, %213
  store i64 %214, i64* %14, align 8
  %215 = load i64, i64* %14, align 8
  %216 = icmp ult i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %202
  store i64 -1, i64* %14, align 8
  br label %218

218:                                              ; preds = %217, %202
  %219 = load i64, i64* %13, align 8
  %220 = load i32, i32* @NBBY, align 4
  %221 = sext i32 %220 to i64
  %222 = udiv i64 %219, %221
  store i64 %222, i64* %15, align 8
  %223 = load i64, i64* %13, align 8
  %224 = load i32, i32* @NBBY, align 4
  %225 = sext i32 %224 to i64
  %226 = urem i64 %223, %225
  %227 = trunc i64 %226 to i32
  %228 = shl i32 1, %227
  store i32 %228, i32* %18, align 4
  %229 = load i64, i64* %13, align 8
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %19, align 4
  br label %231

231:                                              ; preds = %262, %218
  %232 = load i32, i32* %19, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %14, align 8
  %235 = icmp ugt i64 %233, %234
  br i1 %235, label %236, label %265

236:                                              ; preds = %231
  %237 = load i8*, i8** %7, align 8
  %238 = load i64, i64* %15, align 8
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = load i32, i32* %18, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %236
  br label %265

246:                                              ; preds = %236
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* @NBBY, align 4
  %249 = sub nsw i32 %248, 1
  %250 = and i32 %247, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %246
  %253 = load i32, i32* %18, align 4
  %254 = ashr i32 %253, 1
  store i32 %254, i32* %18, align 4
  br label %261

255:                                              ; preds = %246
  %256 = load i64, i64* %15, align 8
  %257 = add i64 %256, -1
  store i64 %257, i64* %15, align 8
  %258 = load i32, i32* @NBBY, align 4
  %259 = sub nsw i32 %258, 1
  %260 = shl i32 1, %259
  store i32 %260, i32* %18, align 4
  br label %261

261:                                              ; preds = %255, %252
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %19, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %19, align 4
  br label %231

265:                                              ; preds = %245, %231
  %266 = load i64, i64* %13, align 8
  %267 = load i32, i32* %19, align 4
  %268 = sext i32 %267 to i64
  %269 = sub i64 %266, %268
  store i64 %269, i64* %17, align 8
  %270 = load i64, i64* %17, align 8
  %271 = load i64, i64* %16, align 8
  %272 = add i64 %270, %271
  %273 = add i64 %272, 1
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %19, align 4
  %275 = load i32, i32* %19, align 4
  %276 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %277 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp sgt i32 %275, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %265
  %281 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %282 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %19, align 4
  br label %284

284:                                              ; preds = %280, %265
  %285 = load i32, i32* %10, align 4
  %286 = load i32*, i32** %11, align 8
  %287 = load i32, i32* %19, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, %285
  store i32 %291, i32* %289, align 4
  %292 = load i64, i64* %17, align 8
  %293 = icmp ugt i64 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %284
  %295 = load i32, i32* %10, align 4
  %296 = load i32*, i32** %11, align 8
  %297 = load i64, i64* %17, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = sub nsw i32 %299, %295
  store i32 %300, i32* %298, align 4
  br label %301

301:                                              ; preds = %294, %284
  %302 = load i64, i64* %16, align 8
  %303 = icmp ugt i64 %302, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %301
  %305 = load i32, i32* %10, align 4
  %306 = load i32*, i32** %11, align 8
  %307 = load i64, i64* %16, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %309, %305
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %304, %301
  %312 = load i32*, i32** %11, align 8
  %313 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %314 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %312, i64 %316
  store i32* %317, i32** %12, align 8
  %318 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %319 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  store i32 %320, i32* %19, align 4
  br label %321

321:                                              ; preds = %331, %311
  %322 = load i32, i32* %19, align 4
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %334

324:                                              ; preds = %321
  %325 = load i32*, i32** %12, align 8
  %326 = getelementptr inbounds i32, i32* %325, i32 -1
  store i32* %326, i32** %12, align 8
  %327 = load i32, i32* %325, align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %334

330:                                              ; preds = %324
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %19, align 4
  %333 = add nsw i32 %332, -1
  store i32 %333, i32* %19, align 4
  br label %321

334:                                              ; preds = %329, %321
  %335 = load i32, i32* %19, align 4
  %336 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %337 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  store i32 %335, i32* %341, align 4
  br label %342

342:                                              ; preds = %334, %131
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
