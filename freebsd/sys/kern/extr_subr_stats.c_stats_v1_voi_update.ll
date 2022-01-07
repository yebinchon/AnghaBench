; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_voi_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_voi_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblobv1 = type { i64, %struct.voi* }
%struct.voi = type { i32, i64, i32, i32, i32 }
%struct.voistatdata = type { %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.voistat = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_24__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }

@STATS_ABI_V1 = common dso_local global i64 0, align 8
@VSD_NUM_DTYPES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SB_VOI_RELUPDATE = common dso_local global i32 0, align 4
@VOI_REQSTATE = common dso_local global i32 0, align 4
@voistate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown VOI data type %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown VOI stat type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_v1_voi_update(%struct.statsblobv1* %0, i64 %1, i32 %2, %struct.voistatdata* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.statsblobv1*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.voistatdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.voi*, align 8
  %13 = alloca %struct.voistat*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.statsblobv1* %0, %struct.statsblobv1** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.voistatdata* %3, %struct.voistatdata** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %20 = icmp eq %struct.statsblobv1* %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %5
  %22 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %23 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STATS_ABI_V1, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %42, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %30 = call i64 @NVOIS(%struct.statsblobv1* %29)
  %31 = icmp uge i64 %28, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @VSD_NUM_DTYPES, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %41 = icmp eq %struct.voistatdata* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %35, %32, %27, %21, %5
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %6, align 4
  br label %444

44:                                               ; preds = %39
  %45 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %46 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %45, i32 0, i32 1
  %47 = load %struct.voi*, %struct.voi** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.voi, %struct.voi* %47, i64 %48
  store %struct.voi* %49, %struct.voi** %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.voi*, %struct.voi** %12, align 8
  %52 = getelementptr inbounds %struct.voi, %struct.voi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %72, label %55

55:                                               ; preds = %44
  %56 = load %struct.voi*, %struct.voi** %12, align 8
  %57 = getelementptr inbounds %struct.voi, %struct.voi* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @SB_VOI_RELUPDATE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.voi*, %struct.voi** %12, align 8
  %67 = getelementptr inbounds %struct.voi, %struct.voi* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @VOI_REQSTATE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %65, %55, %44
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %6, align 4
  br label %444

74:                                               ; preds = %65, %60
  %75 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %76 = load %struct.voi*, %struct.voi** %12, align 8
  %77 = getelementptr inbounds %struct.voi, %struct.voi* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @BLOB_OFFSET(%struct.statsblobv1* %75, i32 %78)
  %80 = bitcast i8* %79 to %struct.voistat*
  store %struct.voistat* %80, %struct.voistat** %13, align 8
  %81 = load %struct.voi*, %struct.voi** %12, align 8
  %82 = getelementptr inbounds %struct.voi, %struct.voi* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VOI_REQSTATE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  %88 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %89 = load %struct.voistat*, %struct.voistat** %13, align 8
  %90 = getelementptr inbounds %struct.voistat, %struct.voistat* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @BLOB_OFFSET(%struct.statsblobv1* %88, i32 %91)
  store i8* %92, i8** %14, align 8
  br label %94

93:                                               ; preds = %74
  store i8* null, i8** %14, align 8
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @SB_VOI_RELUPDATE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %233

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  switch i32 %100, label %227 [
    i32 142, label %101
    i32 139, label %114
    i32 141, label %127
    i32 138, label %140
    i32 140, label %153
    i32 137, label %166
    i32 136, label %179
    i32 134, label %191
    i32 135, label %203
    i32 133, label %215
  ]

101:                                              ; preds = %99
  %102 = load i32, i32* @voistate, align 4
  %103 = load i8*, i8** %14, align 8
  %104 = call %struct.TYPE_15__* @VSD(i32 %102, i8* %103)
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %110 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %108
  store i32 %113, i32* %111, align 4
  br label %232

114:                                              ; preds = %99
  %115 = load i32, i32* @voistate, align 4
  %116 = load i8*, i8** %14, align 8
  %117 = call %struct.TYPE_15__* @VSD(i32 %115, i8* %116)
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %123 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %121
  store i32 %126, i32* %124, align 4
  br label %232

127:                                              ; preds = %99
  %128 = load i32, i32* @voistate, align 4
  %129 = load i8*, i8** %14, align 8
  %130 = call %struct.TYPE_15__* @VSD(i32 %128, i8* %129)
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %136 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %134
  store i32 %139, i32* %137, align 4
  br label %232

140:                                              ; preds = %99
  %141 = load i32, i32* @voistate, align 4
  %142 = load i8*, i8** %14, align 8
  %143 = call %struct.TYPE_15__* @VSD(i32 %141, i8* %142)
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %149 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %147
  store i32 %152, i32* %150, align 4
  br label %232

153:                                              ; preds = %99
  %154 = load i32, i32* @voistate, align 4
  %155 = load i8*, i8** %14, align 8
  %156 = call %struct.TYPE_15__* @VSD(i32 %154, i8* %155)
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %162 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %160
  store i32 %165, i32* %163, align 4
  br label %232

166:                                              ; preds = %99
  %167 = load i32, i32* @voistate, align 4
  %168 = load i8*, i8** %14, align 8
  %169 = call %struct.TYPE_15__* @VSD(i32 %167, i8* %168)
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %175 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, %173
  store i32 %178, i32* %176, align 4
  br label %232

179:                                              ; preds = %99
  %180 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %181 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = load i32, i32* @voistate, align 4
  %184 = load i8*, i8** %14, align 8
  %185 = call %struct.TYPE_15__* @VSD(i32 %183, i8* %184)
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @Q_QADDQ(i32* %182, i32 %189)
  store i32 %190, i32* %16, align 4
  br label %232

191:                                              ; preds = %99
  %192 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %193 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i32, i32* @voistate, align 4
  %196 = load i8*, i8** %14, align 8
  %197 = call %struct.TYPE_15__* @VSD(i32 %195, i8* %196)
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @Q_QADDQ(i32* %194, i32 %201)
  store i32 %202, i32* %16, align 4
  br label %232

203:                                              ; preds = %99
  %204 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %205 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i32, i32* @voistate, align 4
  %208 = load i8*, i8** %14, align 8
  %209 = call %struct.TYPE_15__* @VSD(i32 %207, i8* %208)
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @Q_QADDQ(i32* %206, i32 %213)
  store i32 %214, i32* %16, align 4
  br label %232

215:                                              ; preds = %99
  %216 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %217 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load i32, i32* @voistate, align 4
  %220 = load i8*, i8** %14, align 8
  %221 = call %struct.TYPE_15__* @VSD(i32 %219, i8* %220)
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @Q_QADDQ(i32* %218, i32 %225)
  store i32 %226, i32* %16, align 4
  br label %232

227:                                              ; preds = %99
  %228 = load i32, i32* %9, align 4
  %229 = zext i32 %228 to i64
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @KASSERT(i32 0, i8* %230)
  br label %232

232:                                              ; preds = %227, %215, %203, %191, %179, %166, %153, %140, %127, %114, %101
  br label %233

233:                                              ; preds = %232, %94
  %234 = load i32, i32* %16, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i32, i32* %16, align 4
  store i32 %237, i32* %6, align 4
  br label %444

238:                                              ; preds = %233
  %239 = load %struct.voi*, %struct.voi** %12, align 8
  %240 = getelementptr inbounds %struct.voi, %struct.voi* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %17, align 4
  br label %242

242:                                              ; preds = %314, %238
  %243 = load i32, i32* %17, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %317

245:                                              ; preds = %242
  %246 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %247 = load %struct.voi*, %struct.voi** %12, align 8
  %248 = getelementptr inbounds %struct.voi, %struct.voi* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = call i8* @BLOB_OFFSET(%struct.statsblobv1* %246, i32 %249)
  %251 = bitcast i8* %250 to %struct.voistat*
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.voistat, %struct.voistat* %251, i64 %253
  store %struct.voistat* %254, %struct.voistat** %13, align 8
  %255 = load %struct.voistat*, %struct.voistat** %13, align 8
  %256 = getelementptr inbounds %struct.voistat, %struct.voistat* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %245
  br label %314

260:                                              ; preds = %245
  %261 = load %struct.statsblobv1*, %struct.statsblobv1** %7, align 8
  %262 = load %struct.voistat*, %struct.voistat** %13, align 8
  %263 = getelementptr inbounds %struct.voistat, %struct.voistat* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i8* @BLOB_OFFSET(%struct.statsblobv1* %261, i32 %264)
  store i8* %265, i8** %15, align 8
  %266 = load %struct.voistat*, %struct.voistat** %13, align 8
  %267 = getelementptr inbounds %struct.voistat, %struct.voistat* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  switch i32 %268, label %299 [
    i32 131, label %269
    i32 130, label %275
    i32 129, label %281
    i32 132, label %287
    i32 128, label %293
  ]

269:                                              ; preds = %260
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %272 = load %struct.voistat*, %struct.voistat** %13, align 8
  %273 = load i8*, i8** %15, align 8
  %274 = call i32 @stats_v1_voi_update_max(i32 %270, %struct.voistatdata* %271, %struct.voistat* %272, i8* %273)
  store i32 %274, i32* %18, align 4
  br label %306

275:                                              ; preds = %260
  %276 = load i32, i32* %9, align 4
  %277 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %278 = load %struct.voistat*, %struct.voistat** %13, align 8
  %279 = load i8*, i8** %15, align 8
  %280 = call i32 @stats_v1_voi_update_min(i32 %276, %struct.voistatdata* %277, %struct.voistat* %278, i8* %279)
  store i32 %280, i32* %18, align 4
  br label %306

281:                                              ; preds = %260
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %284 = load %struct.voistat*, %struct.voistat** %13, align 8
  %285 = load i8*, i8** %15, align 8
  %286 = call i32 @stats_v1_voi_update_sum(i32 %282, %struct.voistatdata* %283, %struct.voistat* %284, i8* %285)
  store i32 %286, i32* %18, align 4
  br label %306

287:                                              ; preds = %260
  %288 = load i32, i32* %9, align 4
  %289 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %290 = load %struct.voistat*, %struct.voistat** %13, align 8
  %291 = load i8*, i8** %15, align 8
  %292 = call i32 @stats_v1_voi_update_hist(i32 %288, %struct.voistatdata* %289, %struct.voistat* %290, i8* %291)
  store i32 %292, i32* %18, align 4
  br label %306

293:                                              ; preds = %260
  %294 = load i32, i32* %9, align 4
  %295 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %296 = load %struct.voistat*, %struct.voistat** %13, align 8
  %297 = load i8*, i8** %15, align 8
  %298 = call i32 @stats_v1_voi_update_tdgst(i32 %294, %struct.voistatdata* %295, %struct.voistat* %296, i8* %297)
  store i32 %298, i32* %18, align 4
  br label %306

299:                                              ; preds = %260
  %300 = load %struct.voistat*, %struct.voistat** %13, align 8
  %301 = getelementptr inbounds %struct.voistat, %struct.voistat* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = inttoptr i64 %303 to i8*
  %305 = call i32 @KASSERT(i32 0, i8* %304)
  br label %306

306:                                              ; preds = %299, %293, %287, %281, %275, %269
  %307 = load i32, i32* %18, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load i32, i32* %18, align 4
  store i32 %310, i32* %16, align 4
  %311 = load %struct.voistat*, %struct.voistat** %13, align 8
  %312 = call i32 @VS_INCERRS(%struct.voistat* %311)
  br label %313

313:                                              ; preds = %309, %306
  br label %314

314:                                              ; preds = %313, %259
  %315 = load i32, i32* %17, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %17, align 4
  br label %242

317:                                              ; preds = %242
  %318 = load i8*, i8** %14, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %442

320:                                              ; preds = %317
  %321 = load i32, i32* %9, align 4
  switch i32 %321, label %436 [
    i32 142, label %322
    i32 139, label %333
    i32 141, label %344
    i32 138, label %355
    i32 140, label %366
    i32 137, label %377
    i32 136, label %388
    i32 134, label %400
    i32 135, label %412
    i32 133, label %424
  ]

322:                                              ; preds = %320
  %323 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %324 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @voistate, align 4
  %328 = load i8*, i8** %14, align 8
  %329 = call %struct.TYPE_15__* @VSD(i32 %327, i8* %328)
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 4
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 1
  store i32 %326, i32* %332, align 4
  br label %441

333:                                              ; preds = %320
  %334 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %335 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %334, i32 0, i32 4
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @voistate, align 4
  %339 = load i8*, i8** %14, align 8
  %340 = call %struct.TYPE_15__* @VSD(i32 %338, i8* %339)
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 4
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 0
  store i32 %337, i32* %343, align 4
  br label %441

344:                                              ; preds = %320
  %345 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %346 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @voistate, align 4
  %350 = load i8*, i8** %14, align 8
  %351 = call %struct.TYPE_15__* @VSD(i32 %349, i8* %350)
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 1
  store i32 %348, i32* %354, align 4
  br label %441

355:                                              ; preds = %320
  %356 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %357 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @voistate, align 4
  %361 = load i8*, i8** %14, align 8
  %362 = call %struct.TYPE_15__* @VSD(i32 %360, i8* %361)
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 0
  store i32 %359, i32* %365, align 4
  br label %441

366:                                              ; preds = %320
  %367 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %368 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @voistate, align 4
  %372 = load i8*, i8** %14, align 8
  %373 = call %struct.TYPE_15__* @VSD(i32 %371, i8* %372)
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %375, i32 0, i32 1
  store i32 %370, i32* %376, align 4
  br label %441

377:                                              ; preds = %320
  %378 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %379 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @voistate, align 4
  %383 = load i8*, i8** %14, align 8
  %384 = call %struct.TYPE_15__* @VSD(i32 %382, i8* %383)
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %386, i32 0, i32 0
  store i32 %381, i32* %387, align 4
  br label %441

388:                                              ; preds = %320
  %389 = load i32, i32* @voistate, align 4
  %390 = load i8*, i8** %14, align 8
  %391 = call %struct.TYPE_15__* @VSD(i32 %389, i8* %390)
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %393, i32 0, i32 1
  %395 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %396 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @Q_QCPYVALQ(i32* %394, i32 %398)
  store i32 %399, i32* %16, align 4
  br label %441

400:                                              ; preds = %320
  %401 = load i32, i32* @voistate, align 4
  %402 = load i8*, i8** %14, align 8
  %403 = call %struct.TYPE_15__* @VSD(i32 %401, i8* %402)
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %405, i32 0, i32 0
  %407 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %408 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @Q_QCPYVALQ(i32* %406, i32 %410)
  store i32 %411, i32* %16, align 4
  br label %441

412:                                              ; preds = %320
  %413 = load i32, i32* @voistate, align 4
  %414 = load i8*, i8** %14, align 8
  %415 = call %struct.TYPE_15__* @VSD(i32 %413, i8* %414)
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 1
  %419 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %420 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @Q_QCPYVALQ(i32* %418, i32 %422)
  store i32 %423, i32* %16, align 4
  br label %441

424:                                              ; preds = %320
  %425 = load i32, i32* @voistate, align 4
  %426 = load i8*, i8** %14, align 8
  %427 = call %struct.TYPE_15__* @VSD(i32 %425, i8* %426)
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %429, i32 0, i32 0
  %431 = load %struct.voistatdata*, %struct.voistatdata** %10, align 8
  %432 = getelementptr inbounds %struct.voistatdata, %struct.voistatdata* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @Q_QCPYVALQ(i32* %430, i32 %434)
  store i32 %435, i32* %16, align 4
  br label %441

436:                                              ; preds = %320
  %437 = load i32, i32* %9, align 4
  %438 = zext i32 %437 to i64
  %439 = inttoptr i64 %438 to i8*
  %440 = call i32 @KASSERT(i32 0, i8* %439)
  br label %441

441:                                              ; preds = %436, %424, %412, %400, %388, %377, %366, %355, %344, %333, %322
  br label %442

442:                                              ; preds = %441, %317
  %443 = load i32, i32* %16, align 4
  store i32 %443, i32* %6, align 4
  br label %444

444:                                              ; preds = %442, %236, %72, %42
  %445 = load i32, i32* %6, align 4
  ret i32 %445
}

declare dso_local i64 @NVOIS(%struct.statsblobv1*) #1

declare dso_local i8* @BLOB_OFFSET(%struct.statsblobv1*, i32) #1

declare dso_local %struct.TYPE_15__* @VSD(i32, i8*) #1

declare dso_local i32 @Q_QADDQ(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @stats_v1_voi_update_max(i32, %struct.voistatdata*, %struct.voistat*, i8*) #1

declare dso_local i32 @stats_v1_voi_update_min(i32, %struct.voistatdata*, %struct.voistat*, i8*) #1

declare dso_local i32 @stats_v1_voi_update_sum(i32, %struct.voistatdata*, %struct.voistat*, i8*) #1

declare dso_local i32 @stats_v1_voi_update_hist(i32, %struct.voistatdata*, %struct.voistat*, i8*) #1

declare dso_local i32 @stats_v1_voi_update_tdgst(i32, %struct.voistatdata*, %struct.voistat*, i8*) #1

declare dso_local i32 @VS_INCERRS(%struct.voistat*) #1

declare dso_local i32 @Q_QCPYVALQ(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
