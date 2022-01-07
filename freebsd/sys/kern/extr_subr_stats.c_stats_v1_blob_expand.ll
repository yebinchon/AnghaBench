; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblobv1 = type { i64, i64, i64, i64, %struct.voistat* }
%struct.voistat = type { i32, i32, i32, i32, i32 }
%struct.voi = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Bad newvoibytes %d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Bad newvoistatbytes %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SB_V1_MAXSZ = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.statsblobv1**, i32, i32, i32)* @stats_v1_blob_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_v1_blob_expand(%struct.statsblobv1** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.statsblobv1**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.statsblobv1*, align 8
  %10 = alloca %struct.voi*, align 8
  %11 = alloca %struct.voistat*, align 8
  %12 = alloca %struct.voistat*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.statsblobv1** %0, %struct.statsblobv1*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = urem i64 %20, 20
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %23, i8* %26)
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = urem i64 %29, 20
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %32, i8* %35)
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = urem i64 %38, 20
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = urem i64 %43, 20
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %41, %4
  %48 = load i32, i32* @EINVAL, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32 [ 0, %46 ], [ %48, %47 ]
  store i32 %50, i32* %13, align 4
  %51 = load %struct.statsblobv1**, %struct.statsblobv1*** %5, align 8
  %52 = load %struct.statsblobv1*, %struct.statsblobv1** %51, align 8
  store %struct.statsblobv1* %52, %struct.statsblobv1** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %49
  %61 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %62 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* @SB_V1_MAXSZ, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @EFBIG, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %69, %60, %49
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %114, label %74

74:                                               ; preds = %71
  %75 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %76 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %82 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %80, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %74
  %86 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %87 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %88 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %91 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load i32, i32* @M_ZERO, align 4
  %97 = call %struct.statsblobv1* @stats_realloc(%struct.statsblobv1* %86, i64 %89, i64 %95, i32 %96)
  store %struct.statsblobv1* %97, %struct.statsblobv1** %9, align 8
  %98 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %99 = icmp ne %struct.statsblobv1* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %85
  %101 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %102 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %108 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %110 = load %struct.statsblobv1**, %struct.statsblobv1*** %5, align 8
  store %struct.statsblobv1* %109, %struct.statsblobv1** %110, align 8
  br label %113

111:                                              ; preds = %85
  %112 = load i32, i32* @ENOMEM, align 4
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %111, %100
  br label %114

114:                                              ; preds = %113, %74, %71
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %298, label %117

117:                                              ; preds = %114
  %118 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %119 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %120 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %118, i64 %124)
  %126 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %127 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %128 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %126, i64 %129)
  %131 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %132 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %135 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = call i32 @memmove(%struct.voistat* %125, %struct.voistat* %130, i64 %137)
  %139 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %140 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %141 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %145, %147
  %149 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %139, i64 %148)
  %150 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %151 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %152 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %150, i64 %153)
  %155 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %156 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %159 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %157, %160
  %162 = call i32 @memmove(%struct.voistat* %149, %struct.voistat* %154, i64 %161)
  %163 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %164 = call i32 @NVOIS(%struct.statsblobv1* %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = udiv i64 %166, 20
  %168 = sub i64 %167, 1
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %16, align 4
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %173 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, %171
  store i64 %175, i64* %173, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %179 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, %177
  store i64 %181, i64* %179, align 8
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %187 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, %185
  store i64 %189, i64* %187, align 8
  %190 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %191 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %190, i32 0, i32 4
  %192 = load %struct.voistat*, %struct.voistat** %191, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.voistat, %struct.voistat* %192, i64 %194
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @memset(%struct.voistat* %195, i8 signext 0, i32 %196)
  %198 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %199 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %200 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %198, i64 %201)
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @memset(%struct.voistat* %202, i8 signext 0, i32 %203)
  %205 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %206 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %207 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %205, i64 %208)
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @memset(%struct.voistat* %209, i8 signext 0, i32 %210)
  store i32 0, i32* %14, align 4
  br label %212

212:                                              ; preds = %248, %117
  %213 = load i32, i32* %14, align 4
  %214 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %215 = call i32 @NVOIS(%struct.statsblobv1* %214)
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %251

217:                                              ; preds = %212
  %218 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %219 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %218, i32 0, i32 4
  %220 = load %struct.voistat*, %struct.voistat** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.voistat, %struct.voistat* %220, i64 %222
  %224 = bitcast %struct.voistat* %223 to %struct.voi*
  store %struct.voi* %224, %struct.voi** %10, align 8
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %15, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %217
  %229 = load %struct.voi*, %struct.voi** %10, align 8
  %230 = getelementptr inbounds %struct.voi, %struct.voi* %229, i32 0, i32 1
  store i32 -1, i32* %230, align 4
  %231 = load %struct.voi*, %struct.voi** %10, align 8
  %232 = getelementptr inbounds %struct.voi, %struct.voi* %231, i32 0, i32 0
  store i32 -1, i32* %232, align 4
  br label %247

233:                                              ; preds = %217
  %234 = load %struct.voi*, %struct.voi** %10, align 8
  %235 = getelementptr inbounds %struct.voi, %struct.voi* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %239, %240
  %242 = load %struct.voi*, %struct.voi** %10, align 8
  %243 = getelementptr inbounds %struct.voi, %struct.voi* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %238, %233
  br label %247

247:                                              ; preds = %246, %228
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %14, align 4
  br label %212

251:                                              ; preds = %212
  %252 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %253 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %256 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %254, %257
  %259 = udiv i64 %258, 20
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %18, align 4
  %261 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %262 = load %struct.statsblobv1*, %struct.statsblobv1** %9, align 8
  %263 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %261, i64 %264)
  store %struct.voistat* %265, %struct.voistat** %12, align 8
  store i32 0, i32* %14, align 4
  br label %266

266:                                              ; preds = %294, %251
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* %18, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %297

270:                                              ; preds = %266
  %271 = load %struct.voistat*, %struct.voistat** %12, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.voistat, %struct.voistat* %271, i64 %273
  store %struct.voistat* %274, %struct.voistat** %11, align 8
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %16, align 4
  %277 = icmp sle i32 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %270
  %279 = load %struct.voistat*, %struct.voistat** %11, align 8
  %280 = getelementptr inbounds %struct.voistat, %struct.voistat* %279, i32 0, i32 3
  store i32 -1, i32* %280, align 4
  br label %293

281:                                              ; preds = %270
  %282 = load %struct.voistat*, %struct.voistat** %11, align 8
  %283 = getelementptr inbounds %struct.voistat, %struct.voistat* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = icmp sgt i32 %284, -1
  br i1 %285, label %286, label %292

286:                                              ; preds = %281
  %287 = load i32, i32* %17, align 4
  %288 = load %struct.voistat*, %struct.voistat** %11, align 8
  %289 = getelementptr inbounds %struct.voistat, %struct.voistat* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, %287
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %286, %281
  br label %293

293:                                              ; preds = %292, %278
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %14, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %14, align 4
  br label %266

297:                                              ; preds = %266
  br label %298

298:                                              ; preds = %297, %114
  %299 = load i32, i32* %13, align 4
  ret i32 %299
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.statsblobv1* @stats_realloc(%struct.statsblobv1*, i64, i64, i32) #1

declare dso_local i32 @memmove(%struct.voistat*, %struct.voistat*, i64) #1

declare dso_local %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1*, i64) #1

declare dso_local i32 @NVOIS(%struct.statsblobv1*) #1

declare dso_local i32 @memset(%struct.voistat*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
