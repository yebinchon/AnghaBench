; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_ccdbuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_ccdbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccd_s = type { i64, i32, i64, %struct.ccdcinfo*, %struct.ccdiinfo* }
%struct.ccdcinfo = type { i64, i32 }
%struct.ccdiinfo = type { i32, i64, i32*, i32 }
%struct.bio = type { i64, %struct.bio*, i32, i32, i8*, i32 }

@CCDF_MIRROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@g_std_done = common dso_local global i32 0, align 4
@ccdiodone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio**, %struct.ccd_s*, %struct.bio*, i64, i32, i64)* @ccdbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdbuffer(%struct.bio** %0, %struct.ccd_s* %1, %struct.bio* %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio**, align 8
  %9 = alloca %struct.ccd_s*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ccdcinfo*, align 8
  %15 = alloca %struct.ccdcinfo*, align 8
  %16 = alloca %struct.bio*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.ccdiinfo*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.bio** %0, %struct.bio*** %8, align 8
  store %struct.ccd_s* %1, %struct.ccd_s** %9, align 8
  store %struct.bio* %2, %struct.bio** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.ccdcinfo* null, %struct.ccdcinfo** %15, align 8
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %26 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %27 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %6
  store i64 0, i64* %20, align 8
  %31 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %32 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %31, i32 0, i32 3
  %33 = load %struct.ccdcinfo*, %struct.ccdcinfo** %32, align 8
  store %struct.ccdcinfo* %33, %struct.ccdcinfo** %14, align 8
  br label %34

34:                                               ; preds = %48, %30
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %20, align 8
  %37 = load %struct.ccdcinfo*, %struct.ccdcinfo** %14, align 8
  %38 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = icmp sge i64 %35, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.ccdcinfo*, %struct.ccdcinfo** %14, align 8
  %44 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %20, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %20, align 8
  br label %48

48:                                               ; preds = %42
  %49 = load %struct.ccdcinfo*, %struct.ccdcinfo** %14, align 8
  %50 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %49, i32 1
  store %struct.ccdcinfo* %50, %struct.ccdcinfo** %14, align 8
  br label %34

51:                                               ; preds = %34
  %52 = load i64, i64* %20, align 8
  %53 = load i64, i64* %17, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %17, align 8
  br label %182

55:                                               ; preds = %6
  %56 = load i64, i64* %17, align 8
  %57 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %58 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = srem i64 %56, %59
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %63 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sdiv i64 %61, %64
  store i64 %65, i64* %17, align 8
  %66 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %67 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %66, i32 0, i32 4
  %68 = load %struct.ccdiinfo*, %struct.ccdiinfo** %67, align 8
  store %struct.ccdiinfo* %68, %struct.ccdiinfo** %21, align 8
  br label %69

69:                                               ; preds = %82, %55
  %70 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %71 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %76 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %17, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %85

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %84 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %83, i32 1
  store %struct.ccdiinfo* %84, %struct.ccdiinfo** %21, align 8
  br label %69

85:                                               ; preds = %80, %69
  %86 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %87 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %86, i32 -1
  store %struct.ccdiinfo* %87, %struct.ccdiinfo** %21, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %90 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %23, align 4
  %94 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %95 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %110

98:                                               ; preds = %85
  %99 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %100 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %22, align 4
  %104 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %105 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %23, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %17, align 8
  br label %170

110:                                              ; preds = %85
  %111 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %112 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CCDF_MIRROR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %110
  %118 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %119 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %120, 2
  store i32 %121, i32* %24, align 4
  %122 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %123 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %24, align 4
  %127 = srem i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %22, align 4
  %131 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %132 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %23, align 4
  %135 = load i32, i32* %24, align 4
  %136 = sdiv i32 %134, %135
  %137 = add nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %17, align 8
  %139 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %140 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %139, i32 0, i32 3
  %141 = load %struct.ccdcinfo*, %struct.ccdcinfo** %140, align 8
  %142 = load i32, i32* %22, align 4
  %143 = load i32, i32* %24, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %141, i64 %145
  store %struct.ccdcinfo* %146, %struct.ccdcinfo** %15, align 8
  br label %169

147:                                              ; preds = %110
  %148 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %149 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %23, align 4
  %152 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %153 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = srem i32 %151, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %150, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %22, align 4
  %159 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %160 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %23, align 4
  %163 = load %struct.ccdiinfo*, %struct.ccdiinfo** %21, align 8
  %164 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sdiv i32 %162, %165
  %167 = add nsw i32 %161, %166
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %17, align 8
  br label %169

169:                                              ; preds = %147, %117
  br label %170

170:                                              ; preds = %169, %98
  %171 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %172 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %171, i32 0, i32 3
  %173 = load %struct.ccdcinfo*, %struct.ccdcinfo** %172, align 8
  %174 = load i32, i32* %22, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %173, i64 %175
  store %struct.ccdcinfo* %176, %struct.ccdcinfo** %14, align 8
  %177 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %178 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %17, align 8
  %181 = mul nsw i64 %180, %179
  store i64 %181, i64* %17, align 8
  br label %182

182:                                              ; preds = %170, %51
  %183 = load %struct.bio*, %struct.bio** %10, align 8
  %184 = call %struct.bio* @g_clone_bio(%struct.bio* %183)
  store %struct.bio* %184, %struct.bio** %16, align 8
  %185 = load %struct.bio*, %struct.bio** %16, align 8
  %186 = icmp eq %struct.bio* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* @ENOMEM, align 4
  store i32 %188, i32* %7, align 4
  br label %307

189:                                              ; preds = %182
  %190 = load i32, i32* @g_std_done, align 4
  %191 = load %struct.bio*, %struct.bio** %16, align 8
  %192 = getelementptr inbounds %struct.bio, %struct.bio* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 8
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* %18, align 8
  %195 = add nsw i64 %193, %194
  %196 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %197 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %195, %198
  %200 = call i8* @dbtob(i64 %199)
  %201 = load %struct.bio*, %struct.bio** %16, align 8
  %202 = getelementptr inbounds %struct.bio, %struct.bio* %201, i32 0, i32 4
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* %12, align 4
  %204 = load %struct.bio*, %struct.bio** %16, align 8
  %205 = getelementptr inbounds %struct.bio, %struct.bio* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %207 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %189
  %211 = load %struct.ccdcinfo*, %struct.ccdcinfo** %14, align 8
  %212 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %17, align 8
  %215 = sub nsw i64 %213, %214
  %216 = call i8* @dbtob(i64 %215)
  %217 = ptrtoint i8* %216 to i64
  store i64 %217, i64* %19, align 8
  br label %226

218:                                              ; preds = %189
  %219 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %220 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %18, align 8
  %223 = sub nsw i64 %221, %222
  %224 = call i8* @dbtob(i64 %223)
  %225 = ptrtoint i8* %224 to i64
  store i64 %225, i64* %19, align 8
  br label %226

226:                                              ; preds = %218, %210
  %227 = load i64, i64* %19, align 8
  %228 = load i64, i64* %13, align 8
  %229 = icmp slt i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i64, i64* %19, align 8
  br label %234

232:                                              ; preds = %226
  %233 = load i64, i64* %13, align 8
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi i64 [ %231, %230 ], [ %233, %232 ]
  %236 = load %struct.bio*, %struct.bio** %16, align 8
  %237 = getelementptr inbounds %struct.bio, %struct.bio* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  %238 = load %struct.ccdcinfo*, %struct.ccdcinfo** %14, align 8
  %239 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.bio*, %struct.bio** %16, align 8
  %242 = getelementptr inbounds %struct.bio, %struct.bio* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.bio*, %struct.bio** %16, align 8
  %244 = load %struct.bio**, %struct.bio*** %8, align 8
  %245 = getelementptr inbounds %struct.bio*, %struct.bio** %244, i64 0
  store %struct.bio* %243, %struct.bio** %245, align 8
  %246 = load %struct.ccd_s*, %struct.ccd_s** %9, align 8
  %247 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @CCDF_MIRROR, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %306

252:                                              ; preds = %234
  %253 = load %struct.bio*, %struct.bio** %10, align 8
  %254 = call %struct.bio* @g_clone_bio(%struct.bio* %253)
  store %struct.bio* %254, %struct.bio** %16, align 8
  %255 = load %struct.bio*, %struct.bio** %16, align 8
  %256 = icmp eq %struct.bio* %255, null
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = load i32, i32* @ENOMEM, align 4
  store i32 %258, i32* %7, align 4
  br label %307

259:                                              ; preds = %252
  %260 = load i32, i32* @ccdiodone, align 4
  %261 = load %struct.bio**, %struct.bio*** %8, align 8
  %262 = getelementptr inbounds %struct.bio*, %struct.bio** %261, i64 0
  %263 = load %struct.bio*, %struct.bio** %262, align 8
  %264 = getelementptr inbounds %struct.bio, %struct.bio* %263, i32 0, i32 5
  store i32 %260, i32* %264, align 8
  %265 = load %struct.bio*, %struct.bio** %16, align 8
  %266 = getelementptr inbounds %struct.bio, %struct.bio* %265, i32 0, i32 5
  store i32 %260, i32* %266, align 8
  %267 = load %struct.bio**, %struct.bio*** %8, align 8
  %268 = getelementptr inbounds %struct.bio*, %struct.bio** %267, i64 0
  %269 = load %struct.bio*, %struct.bio** %268, align 8
  %270 = getelementptr inbounds %struct.bio, %struct.bio* %269, i32 0, i32 4
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.bio*, %struct.bio** %16, align 8
  %273 = getelementptr inbounds %struct.bio, %struct.bio* %272, i32 0, i32 4
  store i8* %271, i8** %273, align 8
  %274 = load %struct.bio**, %struct.bio*** %8, align 8
  %275 = getelementptr inbounds %struct.bio*, %struct.bio** %274, i64 0
  %276 = load %struct.bio*, %struct.bio** %275, align 8
  %277 = getelementptr inbounds %struct.bio, %struct.bio* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.bio*, %struct.bio** %16, align 8
  %280 = getelementptr inbounds %struct.bio, %struct.bio* %279, i32 0, i32 3
  store i32 %278, i32* %280, align 4
  %281 = load %struct.bio**, %struct.bio*** %8, align 8
  %282 = getelementptr inbounds %struct.bio*, %struct.bio** %281, i64 0
  %283 = load %struct.bio*, %struct.bio** %282, align 8
  %284 = getelementptr inbounds %struct.bio, %struct.bio* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.bio*, %struct.bio** %16, align 8
  %287 = getelementptr inbounds %struct.bio, %struct.bio* %286, i32 0, i32 0
  store i64 %285, i64* %287, align 8
  %288 = load %struct.ccdcinfo*, %struct.ccdcinfo** %15, align 8
  %289 = getelementptr inbounds %struct.ccdcinfo, %struct.ccdcinfo* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.bio*, %struct.bio** %16, align 8
  %292 = getelementptr inbounds %struct.bio, %struct.bio* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  %293 = load %struct.bio**, %struct.bio*** %8, align 8
  %294 = getelementptr inbounds %struct.bio*, %struct.bio** %293, i64 0
  %295 = load %struct.bio*, %struct.bio** %294, align 8
  %296 = load %struct.bio*, %struct.bio** %16, align 8
  %297 = getelementptr inbounds %struct.bio, %struct.bio* %296, i32 0, i32 1
  store %struct.bio* %295, %struct.bio** %297, align 8
  %298 = load %struct.bio*, %struct.bio** %16, align 8
  %299 = load %struct.bio**, %struct.bio*** %8, align 8
  %300 = getelementptr inbounds %struct.bio*, %struct.bio** %299, i64 0
  %301 = load %struct.bio*, %struct.bio** %300, align 8
  %302 = getelementptr inbounds %struct.bio, %struct.bio* %301, i32 0, i32 1
  store %struct.bio* %298, %struct.bio** %302, align 8
  %303 = load %struct.bio*, %struct.bio** %16, align 8
  %304 = load %struct.bio**, %struct.bio*** %8, align 8
  %305 = getelementptr inbounds %struct.bio*, %struct.bio** %304, i64 1
  store %struct.bio* %303, %struct.bio** %305, align 8
  br label %306

306:                                              ; preds = %259, %234
  store i32 0, i32* %7, align 4
  br label %307

307:                                              ; preds = %306, %257, %187
  %308 = load i32, i32* %7, align 4
  ret i32 %308
}

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i8* @dbtob(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
