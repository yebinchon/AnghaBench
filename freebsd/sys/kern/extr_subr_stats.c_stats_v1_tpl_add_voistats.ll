; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_tpl_add_voistats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_tpl_add_voistats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.statsblob*, %struct.metablob* }
%struct.statsblob = type { i32 }
%struct.metablob = type { %struct.voi_meta* }
%struct.voi_meta = type { i32* }
%struct.voistatspec = type { i32, i64, i32, i32*, i64 }
%struct.voi = type { i32, i32, i32, i32, i64 }
%struct.voistat = type { i32, i32, i32, i64, i64 }
%struct.statsblobv1 = type { i64, i64, %struct.voi* }

@VSD_NUM_DTYPES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VS_NUM_STYPES = common dso_local global i32 0, align 4
@SB_VOI_RELUPDATE = common dso_local global i32 0, align 4
@ntpl = common dso_local global i32 0, align 4
@tpllist = common dso_local global %struct.TYPE_3__** null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VOI_REQSTATE = common dso_local global i32 0, align 4
@VS_STYPE_VOISTATE = common dso_local global i32 0, align 4
@VSD_DTYPE_VOISTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"voistat %p already initialised\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_v1_tpl_add_voistats(i32 %0, i64 %1, i8* %2, i32 %3, i32 %4, %struct.voistatspec* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.voistatspec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.voi*, align 8
  %17 = alloca %struct.voistat*, align 8
  %18 = alloca %struct.statsblobv1*, align 8
  %19 = alloca %struct.metablob*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.voi_meta*, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.voistatspec* %5, %struct.voistatspec** %14, align 8
  store i32 %6, i32* %15, align 4
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @VSD_NUM_DTYPES, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %43 = icmp eq %struct.voistatspec* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %38, %34, %31, %7
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %8, align 4
  br label %489

46:                                               ; preds = %41
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %26, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %21, align 4
  br label %49

49:                                               ; preds = %130, %46
  %50 = load i32, i32* %21, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %133

52:                                               ; preds = %49
  %53 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %54 = load i32, i32* %21, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %53, i64 %55
  %57 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %52
  %61 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %61, i64 %63
  %65 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VS_NUM_STYPES, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %103, label %69

69:                                               ; preds = %60
  %70 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %71 = load i32, i32* %21, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %70, i64 %72
  %74 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %103, label %77

77:                                               ; preds = %69
  %78 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %78, i64 %80
  %82 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @VSD_NUM_DTYPES, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp sge i64 %83, %85
  br i1 %86, label %103, label %87

87:                                               ; preds = %77
  %88 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %88, i64 %90
  %92 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %87
  %96 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %97 = load i32, i32* %21, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %96, i64 %98
  %100 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95, %87, %77, %69, %60, %52
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %8, align 4
  br label %489

105:                                              ; preds = %95
  %106 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %107 = load i32, i32* %21, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %106, i64 %108
  %110 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %26, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %115, i64 %117
  %119 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %26, align 4
  br label %121

121:                                              ; preds = %114, %105
  %122 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %122, i64 %124
  %126 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %25, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %25, align 4
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %21, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %21, align 4
  br label %49

133:                                              ; preds = %49
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @SB_VOI_RELUPDATE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* %25, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %140, 4
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %25, align 4
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %27, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %27, align 4
  %147 = call i32 (...) @TPL_LIST_WLOCK()
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @ntpl, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %484

151:                                              ; preds = %143
  %152 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @tpllist, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %152, i64 %154
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load %struct.statsblob*, %struct.statsblob** %157, align 8
  %159 = bitcast %struct.statsblob* %158 to %struct.statsblobv1*
  store %struct.statsblobv1* %159, %struct.statsblobv1** %18, align 8
  %160 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @tpllist, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %160, i64 %162
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load %struct.metablob*, %struct.metablob** %165, align 8
  store %struct.metablob* %166, %struct.metablob** %19, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %169 = call i32 @NVOIS(%struct.statsblobv1* %168)
  %170 = sext i32 %169 to i64
  %171 = icmp uge i64 %167, %170
  br i1 %171, label %181, label %172

172:                                              ; preds = %151
  %173 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %174 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %173, i32 0, i32 2
  %175 = load %struct.voi*, %struct.voi** %174, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds %struct.voi, %struct.voi* %175, i64 %176
  %178 = getelementptr inbounds %struct.voi, %struct.voi* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %205

181:                                              ; preds = %172, %151
  %182 = load i64, i64* %10, align 8
  %183 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %184 = call i32 @NVOIS(%struct.statsblobv1* %183)
  %185 = sext i32 %184 to i64
  %186 = icmp uge i64 %182, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %181
  %188 = load i64, i64* %10, align 8
  %189 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %190 = call i32 @NVOIS(%struct.statsblobv1* %189)
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = sub i64 %188, %192
  %194 = mul i64 %193, 24
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %23, align 4
  %196 = load i32, i32* %23, align 4
  %197 = load i32, i32* %27, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %27, align 4
  br label %199

199:                                              ; preds = %187, %181
  %200 = load i32, i32* %26, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = mul i64 %202, 32
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %24, align 4
  br label %230

205:                                              ; preds = %172
  %206 = load i32, i32* %26, align 4
  %207 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %208 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %207, i32 0, i32 2
  %209 = load %struct.voi*, %struct.voi** %208, align 8
  %210 = load i64, i64* %10, align 8
  %211 = getelementptr inbounds %struct.voi, %struct.voi* %209, i64 %210
  %212 = getelementptr inbounds %struct.voi, %struct.voi* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %206, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %205
  %216 = load i32, i32* %26, align 4
  %217 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %218 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %217, i32 0, i32 2
  %219 = load %struct.voi*, %struct.voi** %218, align 8
  %220 = load i64, i64* %10, align 8
  %221 = getelementptr inbounds %struct.voi, %struct.voi* %219, i64 %220
  %222 = getelementptr inbounds %struct.voi, %struct.voi* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %216, %223
  %225 = sext i32 %224 to i64
  %226 = mul i64 %225, 32
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %24, align 4
  br label %228

228:                                              ; preds = %215, %205
  %229 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %229, i32* %20, align 4
  br label %230

230:                                              ; preds = %228, %199
  %231 = load i32, i32* %24, align 4
  %232 = load i32, i32* %27, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %27, align 4
  %234 = load i32, i32* %20, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %270, label %236

236:                                              ; preds = %230
  %237 = load i32, i32* %23, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %270

239:                                              ; preds = %236
  %240 = load %struct.metablob*, %struct.metablob** %19, align 8
  %241 = getelementptr inbounds %struct.metablob, %struct.metablob* %240, i32 0, i32 0
  %242 = load %struct.voi_meta*, %struct.voi_meta** %241, align 8
  store %struct.voi_meta* %242, %struct.voi_meta** %28, align 8
  %243 = load %struct.voi_meta*, %struct.voi_meta** %28, align 8
  %244 = load %struct.voi_meta*, %struct.voi_meta** %28, align 8
  %245 = icmp eq %struct.voi_meta* %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %239
  br label %252

247:                                              ; preds = %239
  %248 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %249 = call i32 @NVOIS(%struct.statsblobv1* %248)
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 8
  br label %252

252:                                              ; preds = %247, %246
  %253 = phi i64 [ 0, %246 ], [ %251, %247 ]
  %254 = trunc i64 %253 to i32
  %255 = load i64, i64* %10, align 8
  %256 = add i64 1, %255
  %257 = mul i64 %256, 8
  %258 = trunc i64 %257 to i32
  %259 = load i32, i32* @M_ZERO, align 4
  %260 = call %struct.voi_meta* @stats_realloc(%struct.voi_meta* %243, i32 %254, i32 %258, i32 %259)
  store %struct.voi_meta* %260, %struct.voi_meta** %28, align 8
  %261 = load %struct.voi_meta*, %struct.voi_meta** %28, align 8
  %262 = icmp eq %struct.voi_meta* %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %252
  %264 = load i32, i32* @ENOMEM, align 4
  store i32 %264, i32* %20, align 4
  br label %269

265:                                              ; preds = %252
  %266 = load %struct.voi_meta*, %struct.voi_meta** %28, align 8
  %267 = load %struct.metablob*, %struct.metablob** %19, align 8
  %268 = getelementptr inbounds %struct.metablob, %struct.metablob* %267, i32 0, i32 0
  store %struct.voi_meta* %266, %struct.voi_meta** %268, align 8
  br label %269

269:                                              ; preds = %265, %263
  br label %270

270:                                              ; preds = %269, %236, %230
  %271 = load i32, i32* %20, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %23, align 4
  %275 = load i32, i32* %24, align 4
  %276 = load i32, i32* %25, align 4
  %277 = call i32 @stats_v1_blob_expand(%struct.statsblobv1** %18, i32 %274, i32 %275, i32 %276)
  store i32 %277, i32* %20, align 4
  br label %278

278:                                              ; preds = %273, %270
  %279 = load i32, i32* %20, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %301, label %281

281:                                              ; preds = %278
  %282 = load i8*, i8** %11, align 8
  %283 = call i32* @stats_strdup(i8* %282, i32 0)
  %284 = load %struct.metablob*, %struct.metablob** %19, align 8
  %285 = getelementptr inbounds %struct.metablob, %struct.metablob* %284, i32 0, i32 0
  %286 = load %struct.voi_meta*, %struct.voi_meta** %285, align 8
  %287 = load i64, i64* %10, align 8
  %288 = getelementptr inbounds %struct.voi_meta, %struct.voi_meta* %286, i64 %287
  %289 = getelementptr inbounds %struct.voi_meta, %struct.voi_meta* %288, i32 0, i32 0
  store i32* %283, i32** %289, align 8
  %290 = load %struct.metablob*, %struct.metablob** %19, align 8
  %291 = getelementptr inbounds %struct.metablob, %struct.metablob* %290, i32 0, i32 0
  %292 = load %struct.voi_meta*, %struct.voi_meta** %291, align 8
  %293 = load i64, i64* %10, align 8
  %294 = getelementptr inbounds %struct.voi_meta, %struct.voi_meta* %292, i64 %293
  %295 = getelementptr inbounds %struct.voi_meta, %struct.voi_meta* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = icmp eq i32* %296, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %281
  %299 = load i32, i32* @ENOMEM, align 4
  store i32 %299, i32* %20, align 4
  br label %300

300:                                              ; preds = %298, %281
  br label %301

301:                                              ; preds = %300, %278
  %302 = load i32, i32* %20, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %483, label %304

304:                                              ; preds = %301
  %305 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %306 = bitcast %struct.statsblobv1* %305 to %struct.statsblob*
  %307 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @tpllist, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %307, i64 %309
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 0
  store %struct.statsblob* %306, %struct.statsblob** %312, align 8
  %313 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %314 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %313, i32 0, i32 2
  %315 = load %struct.voi*, %struct.voi** %314, align 8
  %316 = load i64, i64* %10, align 8
  %317 = getelementptr inbounds %struct.voi, %struct.voi* %315, i64 %316
  store %struct.voi* %317, %struct.voi** %16, align 8
  %318 = load %struct.voi*, %struct.voi** %16, align 8
  %319 = getelementptr inbounds %struct.voi, %struct.voi* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %346

322:                                              ; preds = %304
  %323 = load i64, i64* %10, align 8
  %324 = trunc i64 %323 to i32
  %325 = load %struct.voi*, %struct.voi** %16, align 8
  %326 = getelementptr inbounds %struct.voi, %struct.voi* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  %327 = load i32, i32* %12, align 4
  %328 = load %struct.voi*, %struct.voi** %16, align 8
  %329 = getelementptr inbounds %struct.voi, %struct.voi* %328, i32 0, i32 2
  store i32 %327, i32* %329, align 8
  %330 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %331 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.voi*, %struct.voi** %16, align 8
  %334 = getelementptr inbounds %struct.voi, %struct.voi* %333, i32 0, i32 4
  store i64 %332, i64* %334, align 8
  %335 = load i32, i32* %15, align 4
  %336 = load i32, i32* @SB_VOI_RELUPDATE, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %322
  %340 = load i32, i32* @VOI_REQSTATE, align 4
  %341 = load %struct.voi*, %struct.voi** %16, align 8
  %342 = getelementptr inbounds %struct.voi, %struct.voi* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  br label %345

345:                                              ; preds = %339, %322
  br label %347

346:                                              ; preds = %304
  br label %347

347:                                              ; preds = %346, %345
  %348 = load i32, i32* %26, align 4
  %349 = load %struct.voi*, %struct.voi** %16, align 8
  %350 = getelementptr inbounds %struct.voi, %struct.voi* %349, i32 0, i32 1
  store i32 %348, i32* %350, align 4
  store i32 0, i32* %22, align 4
  %351 = load %struct.voi*, %struct.voi** %16, align 8
  %352 = getelementptr inbounds %struct.voi, %struct.voi* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @VOI_REQSTATE, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %378

357:                                              ; preds = %347
  %358 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %359 = load %struct.voi*, %struct.voi** %16, align 8
  %360 = getelementptr inbounds %struct.voi, %struct.voi* %359, i32 0, i32 4
  %361 = load i64, i64* %360, align 8
  %362 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %358, i64 %361)
  store %struct.voistat* %362, %struct.voistat** %17, align 8
  %363 = load i32, i32* @VS_STYPE_VOISTATE, align 4
  %364 = load %struct.voistat*, %struct.voistat** %17, align 8
  %365 = getelementptr inbounds %struct.voistat, %struct.voistat* %364, i32 0, i32 0
  store i32 %363, i32* %365, align 8
  %366 = load %struct.voistat*, %struct.voistat** %17, align 8
  %367 = getelementptr inbounds %struct.voistat, %struct.voistat* %366, i32 0, i32 4
  store i64 0, i64* %367, align 8
  %368 = load i32, i32* @VSD_DTYPE_VOISTATE, align 4
  %369 = load %struct.voistat*, %struct.voistat** %17, align 8
  %370 = getelementptr inbounds %struct.voistat, %struct.voistat* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  %371 = load %struct.voistat*, %struct.voistat** %17, align 8
  %372 = getelementptr inbounds %struct.voistat, %struct.voistat* %371, i32 0, i32 2
  store i32 4, i32* %372, align 8
  store i32 4, i32* %22, align 4
  %373 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %374 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.voistat*, %struct.voistat** %17, align 8
  %377 = getelementptr inbounds %struct.voistat, %struct.voistat* %376, i32 0, i32 3
  store i64 %375, i64* %377, align 8
  br label %378

378:                                              ; preds = %357, %347
  store i32 0, i32* %21, align 4
  br label %379

379:                                              ; preds = %473, %378
  %380 = load i32, i32* %21, align 4
  %381 = load i32, i32* %13, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %476

383:                                              ; preds = %379
  %384 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %385 = load %struct.voi*, %struct.voi** %16, align 8
  %386 = getelementptr inbounds %struct.voi, %struct.voi* %385, i32 0, i32 4
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %389 = load i32, i32* %21, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %388, i64 %390
  %392 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = sext i32 %393 to i64
  %395 = mul i64 %394, 32
  %396 = add i64 %387, %395
  %397 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %384, i64 %396)
  store %struct.voistat* %397, %struct.voistat** %17, align 8
  %398 = load %struct.voistat*, %struct.voistat** %17, align 8
  %399 = getelementptr inbounds %struct.voistat, %struct.voistat* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = icmp slt i32 %400, 0
  %402 = zext i1 %401 to i32
  %403 = load %struct.voistat*, %struct.voistat** %17, align 8
  %404 = bitcast %struct.voistat* %403 to i8*
  %405 = call i32 @KASSERT(i32 %402, i8* %404)
  %406 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %407 = load i32, i32* %21, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %406, i64 %408
  %410 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.voistat*, %struct.voistat** %17, align 8
  %413 = getelementptr inbounds %struct.voistat, %struct.voistat* %412, i32 0, i32 0
  store i32 %411, i32* %413, align 8
  %414 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %415 = load i32, i32* %21, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %414, i64 %416
  %418 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %417, i32 0, i32 4
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.voistat*, %struct.voistat** %17, align 8
  %421 = getelementptr inbounds %struct.voistat, %struct.voistat* %420, i32 0, i32 4
  store i64 %419, i64* %421, align 8
  %422 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %423 = load i32, i32* %21, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %422, i64 %424
  %426 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = trunc i64 %427 to i32
  %429 = load %struct.voistat*, %struct.voistat** %17, align 8
  %430 = getelementptr inbounds %struct.voistat, %struct.voistat* %429, i32 0, i32 1
  store i32 %428, i32* %430, align 4
  %431 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %432 = load i32, i32* %21, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %431, i64 %433
  %435 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.voistat*, %struct.voistat** %17, align 8
  %438 = getelementptr inbounds %struct.voistat, %struct.voistat* %437, i32 0, i32 2
  store i32 %436, i32* %438, align 8
  %439 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %440 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i32, i32* %22, align 4
  %443 = sext i32 %442 to i64
  %444 = add nsw i64 %441, %443
  %445 = load %struct.voistat*, %struct.voistat** %17, align 8
  %446 = getelementptr inbounds %struct.voistat, %struct.voistat* %445, i32 0, i32 3
  store i64 %444, i64* %446, align 8
  %447 = load %struct.statsblobv1*, %struct.statsblobv1** %18, align 8
  %448 = load %struct.voistat*, %struct.voistat** %17, align 8
  %449 = getelementptr inbounds %struct.voistat, %struct.voistat* %448, i32 0, i32 3
  %450 = load i64, i64* %449, align 8
  %451 = call %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1* %447, i64 %450)
  %452 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %453 = load i32, i32* %21, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %452, i64 %454
  %456 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %455, i32 0, i32 3
  %457 = load i32*, i32** %456, align 8
  %458 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %459 = load i32, i32* %21, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %458, i64 %460
  %462 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = call i32 @memcpy(%struct.voistat* %451, i32* %457, i32 %463)
  %465 = load %struct.voistatspec*, %struct.voistatspec** %14, align 8
  %466 = load i32, i32* %21, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %465, i64 %467
  %469 = getelementptr inbounds %struct.voistatspec, %struct.voistatspec* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* %22, align 4
  %472 = add nsw i32 %471, %470
  store i32 %472, i32* %22, align 4
  br label %473

473:                                              ; preds = %383
  %474 = load i32, i32* %21, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %21, align 4
  br label %379

476:                                              ; preds = %379
  %477 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @tpllist, align 8
  %478 = load i32, i32* %9, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %477, i64 %479
  %481 = load %struct.TYPE_3__*, %struct.TYPE_3__** %480, align 8
  %482 = call i32 @stats_tpl_update_hash(%struct.TYPE_3__* %481)
  br label %483

483:                                              ; preds = %476, %301
  br label %486

484:                                              ; preds = %143
  %485 = load i32, i32* @EINVAL, align 4
  store i32 %485, i32* %20, align 4
  br label %486

486:                                              ; preds = %484, %483
  %487 = call i32 (...) @TPL_LIST_WUNLOCK()
  %488 = load i32, i32* %20, align 4
  store i32 %488, i32* %8, align 4
  br label %489

489:                                              ; preds = %486, %103, %44
  %490 = load i32, i32* %8, align 4
  ret i32 %490
}

declare dso_local i32 @TPL_LIST_WLOCK(...) #1

declare dso_local i32 @NVOIS(%struct.statsblobv1*) #1

declare dso_local %struct.voi_meta* @stats_realloc(%struct.voi_meta*, i32, i32, i32) #1

declare dso_local i32 @stats_v1_blob_expand(%struct.statsblobv1**, i32, i32, i32) #1

declare dso_local i32* @stats_strdup(i8*, i32) #1

declare dso_local %struct.voistat* @BLOB_OFFSET(%struct.statsblobv1*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.voistat*, i32*, i32) #1

declare dso_local i32 @stats_tpl_update_hash(%struct.TYPE_3__*) #1

declare dso_local i32 @TPL_LIST_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
