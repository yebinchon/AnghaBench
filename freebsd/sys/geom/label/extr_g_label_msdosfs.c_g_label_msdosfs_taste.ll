; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_msdosfs.c_g_label_msdosfs_taste.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label_msdosfs.c_g_label_msdosfs_taste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"MSDOSFS: %s: sector size %d not compatible.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"MSDOSFS: %s: no FAT signature found.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"FAT\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"MSDOSFS: %s: FAT12/16 volume not valid.\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"MSDOSFS: %s: FAT12/FAT16 volume detected.\00", align 1
@LABEL_NO_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"MSDOSFS: %s: FAT12/16 volume has no name.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"MSDOSFS: %s: FAT32 volume not valid.\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"MSDOSFS: %s: FAT32 volume detected.\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"MSDOSFS: FAT_FirstDataSector=0x%x, FAT_BytesPerSector=%d\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"MSDOSFS: %s: FAT32 volume has no name.\00", align 1
@FAT_DES_ATTR_LONG_NAME = common dso_local global i32 0, align 4
@FAT_DES_ATTR_VOLUME_ID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"MSDOSFS: %s: no FAT volume detected.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*, i8*, i64)* @g_label_msdosfs_taste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_label_msdosfs_taste(%struct.g_consumer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = call i32 (...) @g_topology_assert_not()
  %17 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %18 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %7, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @bzero(i8* %20, i64 %21)
  %23 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %27 [
    i32 512, label %26
    i32 1024, label %26
    i32 2048, label %26
    i32 4096, label %26
  ]

26:                                               ; preds = %3, %3, %3, %3
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %32 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  br label %262

35:                                               ; preds = %26
  %36 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %37 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @g_read_data(%struct.g_consumer* %36, i32 0, i32 %39, i32* null)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %262

45:                                               ; preds = %35
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 510
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 85
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 511
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 170
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %45
  %56 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %57 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %250

60:                                               ; preds = %50
  %61 = load i32*, i32** %11, align 8
  %62 = bitcast i32* %61 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %8, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = bitcast i32* %63 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %9, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @UINT16BYTES(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %60
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @strncmp(i32* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %78 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %250

81:                                               ; preds = %70
  %82 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %83 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i8*, i8** @LABEL_NO_NAME, align 8
  %90 = call i64 @strncmp(i32* %88, i8* %89, i32 8)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %94 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %250

97:                                               ; preds = %81
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @MIN(i64 %102, i32 9)
  %104 = call i32 @strlcpy(i8* %98, i32* %101, i32 %103)
  br label %245

105:                                              ; preds = %60
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @UINT32BYTES(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %240

111:                                              ; preds = %105
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @strncmp(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %119 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  br label %250

122:                                              ; preds = %111
  %123 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %124 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i8*, i8** @LABEL_NO_NAME, align 8
  %131 = call i64 @strncmp(i32* %129, i8* %130, i32 8)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %122
  %134 = load i8*, i8** %5, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = call i32 @MIN(i64 %138, i32 9)
  %140 = call i32 @strlcpy(i8* %134, i32* %137, i32 %139)
  br label %246

141:                                              ; preds = %122
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @UINT16BYTES(i32 %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @UINT32BYTES(i32 %151)
  %153 = mul nsw i32 %148, %152
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %145, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %13, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @UINT16BYTES(i32 %159)
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = mul nsw i32 %165, %166
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %236, %141
  %169 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %14, align 4
  %172 = call i64 @g_read_data(%struct.g_consumer* %169, i32 %170, i32 %171, i32* null)
  %173 = inttoptr i64 %172 to i32*
  store i32* %173, i32** %12, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %250

177:                                              ; preds = %168
  %178 = load i32*, i32** %12, align 8
  %179 = bitcast i32* %178 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %179, %struct.TYPE_4__** %10, align 8
  br label %180

180:                                              ; preds = %224, %177
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %189 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %190)
  br label %250

192:                                              ; preds = %180
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 229
  br i1 %198, label %207, label %199

199:                                              ; preds = %192
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @FAT_DES_ATTR_LONG_NAME, align 4
  %204 = and i32 %202, %203
  %205 = load i32, i32* @FAT_DES_ATTR_LONG_NAME, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %199, %192
  br label %224

208:                                              ; preds = %199
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @FAT_DES_ATTR_VOLUME_ID, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %208
  %216 = load i8*, i8** %5, align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* %6, align 8
  %221 = call i32 @MIN(i64 %220, i32 9)
  %222 = call i32 @strlcpy(i8* %216, i32* %219, i32 %221)
  br label %246

223:                                              ; preds = %208
  br label %224

224:                                              ; preds = %223, %207
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 1
  store %struct.TYPE_4__* %226, %struct.TYPE_4__** %10, align 8
  %227 = bitcast %struct.TYPE_4__* %226 to i32*
  %228 = load i32*, i32** %12, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = icmp ult i32* %227, %231
  br i1 %232, label %180, label %233

233:                                              ; preds = %224
  %234 = load i32*, i32** %12, align 8
  %235 = call i32 @g_free(i32* %234)
  br label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %15, align 4
  br label %168

240:                                              ; preds = %105
  %241 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %242 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %243)
  br label %250

245:                                              ; preds = %97
  br label %246

246:                                              ; preds = %245, %215, %133
  %247 = load i8*, i8** %5, align 8
  %248 = load i64, i64* %6, align 8
  %249 = call i32 @g_label_rtrim(i8* %247, i64 %248)
  br label %250

250:                                              ; preds = %246, %240, %187, %176, %117, %92, %76, %55
  %251 = load i32*, i32** %11, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i32*, i32** %11, align 8
  %255 = call i32 @g_free(i32* %254)
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i32*, i32** %12, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32*, i32** %12, align 8
  %261 = call i32 @g_free(i32* %260)
  br label %262

262:                                              ; preds = %27, %44, %259, %256
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @G_LABEL_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i64 @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i64 @UINT16BYTES(i32) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @UINT32BYTES(i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_label_rtrim(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
